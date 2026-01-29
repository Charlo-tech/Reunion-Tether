import '../generated/protocol.dart';
import 'package:serverpod/serverpod.dart';

/// Scheduled task to check for birthdays and create reminders
class BirthdayReminderTask {
  Future<void> execute(Session session) async {
    // Run daily to check for upcoming birthdays
    final now = DateTime.now();
    final oneWeekFromNow = now.add(Duration(days: 7));
    final oneDayFromNow = now.add(Duration(days: 1));

    // Get all contacts with birthdays
    final contacts = await Contact.db.find(
      session,
      where: (c) => c.birthday.notEquals(null),
    );

    for (final contact in contacts) {
      if (contact.birthday == null) continue;

      final birthday = contact.birthday!;
      final thisYearBirthday = DateTime(now.year, birthday.month, birthday.day);

      // Check for 1 week reminder
      if (thisYearBirthday.isAfter(now) && 
          thisYearBirthday.isBefore(oneWeekFromNow) &&
          thisYearBirthday.isAfter(oneDayFromNow)) {
        // Check if reminder already exists
        final existing = await Reminder.db.findFirstRow(
          session,
          where: (r) => 
              r.contactId.equals(contact.id!) &
              r.reminderType.equals('birthday') &
              r.scheduledDate.equals(thisYearBirthday),
        );

        if (existing == null) {
          await Reminder.db.insertRow(
            session,
            Reminder(
              userId: contact.userId,
              contactId: contact.id,
              reminderType: 'birthday',
              scheduledDate: thisYearBirthday,
              isSent: false,
              title: "${contact.name}'s Birthday",
              message: "${contact.name}'s birthday is coming up in a week!",
              createdAt: DateTime.now(),
            ),
          );
        }
      }

      // Check for 1 day reminder
      if (thisYearBirthday.isAfter(now) && 
          thisYearBirthday.isBefore(oneDayFromNow)) {
        final existing = await Reminder.db.findFirstRow(
          session,
          where: (r) => 
              r.contactId.equals(contact.id!) &
              r.reminderType.equals('birthday') &
              r.scheduledDate.equals(thisYearBirthday),
        );

        if (existing == null) {
          await Reminder.db.insertRow(
            session,
            Reminder(
              userId: contact.userId,
              contactId: contact.id,
              reminderType: 'birthday',
              scheduledDate: thisYearBirthday,
              isSent: false,
              title: "${contact.name}'s Birthday Tomorrow!",
              message: "Don't forget - ${contact.name}'s birthday is tomorrow!",
              createdAt: DateTime.now(),
            ),
          );
        }
      }
    }
  }
}

/// Scheduled task to check for overdue connections
class OverdueConnectionTask {
  Future<void> execute(Session session) async {
    // Run weekly to check for overdue connections
    // Get all unique user IDs from contacts
    final allContacts = await Contact.db.find(session);
    final userIds = allContacts.map((c) => c.userId).toSet().toList();
    
    for (final userId in userIds) {
      // Get contacts for this user
      final contacts = await Contact.db.find(
        session,
        where: (c) => c.userId.equals(userId),
      );

      for (final contact in contacts) {
        DateTime? lastInteractionDate;
        
        // Check last meetup
        if (contact.lastMeetup != null) {
          lastInteractionDate = contact.lastMeetup;
        }
        
        // Check last interaction
        final lastInteraction = await Interaction.db.findFirstRow(
          session,
          where: (i) => 
              i.contactId.equals(contact.id!) & 
              i.userId.equals(userId),
          orderBy: (i) => i.interactionDate,
          orderDescending: true,
        );
        
        if (lastInteraction != null) {
          if (lastInteractionDate == null || 
              lastInteraction.interactionDate.isAfter(lastInteractionDate)) {
            lastInteractionDate = lastInteraction.interactionDate;
          }
        }

        // Check if overdue (6 weeks default)
        if (lastInteractionDate != null) {
          final weeksSinceContact = DateTime.now().difference(lastInteractionDate).inDays ~/ 7;
          
          if (weeksSinceContact >= 6) {
            // Check if reminder already exists for this week
            final weekStart = DateTime.now().subtract(Duration(days: DateTime.now().weekday - 1));
            final existing = await Reminder.db.findFirstRow(
              session,
              where: (r) => 
                  r.userId.equals(userId) &
                  r.contactId.equals(contact.id!) &
                  r.reminderType.equals('connection') &
                  (r.scheduledDate >= weekStart),
            );

            if (existing == null) {
              await Reminder.db.insertRow(
                session,
                Reminder(
                  userId: userId,
                  contactId: contact.id,
                  reminderType: 'connection',
                  scheduledDate: DateTime.now(),
                  isSent: false,
                  title: "Time to reach out to ${contact.name}",
                  message: "You haven't contacted ${contact.name} in $weeksSinceContact weeks. Consider reaching out!",
                  createdAt: DateTime.now(),
                ),
              );
            }
          }
        }
      }
    }
  }
}