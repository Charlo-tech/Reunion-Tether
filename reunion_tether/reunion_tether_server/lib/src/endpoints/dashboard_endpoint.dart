import '../generated/protocol.dart' hide AuthenticationInfo; 
import 'package:serverpod/serverpod.dart';
import 'package:serverpod_auth_idp_server/core.dart';

/// Endpoint for dashboard data
class DashboardEndpoint extends Endpoint {
  /// Get dashboard insights
  Future<Map<String, dynamic>> getDashboardInsights(Session session) async {
    final user = session.authenticatedUser;
    if (user == null) {
      throw Exception('User not authenticated');
    }
    final userId = user.id;

    // Get overdue contacts (default 6 weeks)
    final thresholdDate = DateTime.now().subtract(Duration(days: 6 * 7));
    final allContacts = await Contact.db.find(
      session,
      where: (c) => c.userId.equals(userId),
    );

    final overdueContacts = <Contact>[];
    for (final contact in allContacts) {
      DateTime? lastInteractionDate;
      
      if (contact.lastMeetup != null) {
        lastInteractionDate = contact.lastMeetup;
      }
      
      final lastInteraction = await Interaction.db.findFirstRow(
        session,
        where: (i) => i.contactId.equals(contact.id!) & i.userId.equals(userId),
        orderBy: (i) => i.interactionDate,
        orderDescending: true,
      );
      
      if (lastInteraction != null) {
        if (lastInteractionDate == null || 
            lastInteraction.interactionDate.isAfter(lastInteractionDate)) {
          lastInteractionDate = lastInteraction.interactionDate;
        }
      }

      if (lastInteractionDate == null || lastInteractionDate.isBefore(thresholdDate)) {
        overdueContacts.add(contact);
      }
    }

    // Get upcoming birthdays (next 30 days)
    final contacts = await Contact.db.find(
      session,
      where: (c) => c.userId.equals(userId) & c.birthday.notEquals(null),
    );

    final now = DateTime.now();
    final targetDate = now.add(Duration(days: 30));
    
    final upcomingBirthdays = contacts.where((contact) {
      if (contact.birthday == null) return false;
      final birthday = contact.birthday!;
      final thisYearBirthday = DateTime(now.year, birthday.month, birthday.day);
      final nextYearBirthday = DateTime(now.year + 1, birthday.month, birthday.day);
      
      return (thisYearBirthday.isAfter(now) && thisYearBirthday.isBefore(targetDate)) ||
             (thisYearBirthday.isBefore(now) && nextYearBirthday.isBefore(targetDate));
    }).toList();

    // Get upcoming trips
    final upcomingTrips = await Trip.db.find(
      session,
      where: (t) => 
          t.userId.equals(userId) & 
          t.status.equals('planned') & 
          t.startDate.notEquals(null),
      orderBy: (t) => t.startDate,
    );

    // Get recent interactions
    final recentInteractions = await Interaction.db.find(
      session,
      where: (i) => i.userId.equals(userId),
      orderBy: (i) => i.interactionDate,
      orderDescending: true,
      limit: 10,
    );

    // Get upcoming reminders
    final now2 = DateTime.now();
    final targetDate2 = now2.add(Duration(days: 7));

    final upcomingReminders = await Reminder.db.find(
      session,
      where: (r) => 
          r.userId.equals(userId) & 
          (r.scheduledDate >= now2) & 
          (r.scheduledDate <= targetDate2) &
          r.isSent.equals(false),
      orderBy: (r) => r.scheduledDate,
    );

    return {
      'overdueContacts': overdueContacts.length,
      'overdueContactsList': overdueContacts,
      'upcomingBirthdays': upcomingBirthdays.length,
      'upcomingBirthdaysList': upcomingBirthdays,
      'upcomingTrips': upcomingTrips.length,
      'upcomingTripsList': upcomingTrips,
      'recentInteractions': recentInteractions.length,
      'recentInteractionsList': recentInteractions,
      'upcomingReminders': upcomingReminders.length,
      'upcomingRemindersList': upcomingReminders,
    };
  }
}