import '../generated/protocol.dart' hide AuthenticationInfo;
import 'package:serverpod/serverpod.dart';

/// Endpoint for managing reminders
class ReminderEndpoint extends Endpoint {
  /// Get all reminders for the current user
  Future<List<Reminder>> getReminders(
    Session session, {
    bool? isSent,
  }) async {
    final userId = session.authenticatedUserId;
    if (userId == null) {
      throw Exception('User not authenticated');
    }

    if (isSent != null) {
      return await Reminder.db.find(
        session,
        where: (r) => r.userId.equals(userId) & r.isSent.equals(isSent),
        orderBy: (r) => r.scheduledDate,
      );
    }

    return await Reminder.db.find(
      session,
      where: (r) => r.userId.equals(userId),
      orderBy: (r) => r.scheduledDate,
    );
  }

  /// Get upcoming reminders
  Future<List<Reminder>> getUpcomingReminders(
    Session session,
    int daysAhead,
  ) async {
    final userId = session.authenticatedUserId;
    if (userId == null) {
      throw Exception('User not authenticated');
    }

    final now = DateTime.now();
    final targetDate = now.add(Duration(days: daysAhead));

    return await Reminder.db.find(
      session,
      where: (r) => 
          r.userId.equals(userId) &
          (r.scheduledDate >= now) &
          (r.scheduledDate <= targetDate) &
          r.isSent.equals(false),
      orderBy: (r) => r.scheduledDate,
    );
  }

  /// Create a reminder
  Future<Reminder> createReminder(
    Session session,
    Reminder reminder,
  ) async {
    final userId = session.authenticatedUserId;
    if (userId == null) {
      throw Exception('User not authenticated');
    }

    reminder.userId = userId;
    reminder.isSent = false;
    reminder.createdAt = DateTime.now();
    return await Reminder.db.insertRow(session, reminder);
  }

  /// Mark reminder as sent
  Future<Reminder> markReminderSent(
    Session session,
    int reminderId,
  ) async {
    final userId = session.authenticatedUserId;
    if (userId == null) {
      throw Exception('User not authenticated');
    }

    final reminder = await Reminder.db.findById(session, reminderId);
    if (reminder == null || reminder.userId != userId) {
      throw Exception('Reminder not found or unauthorized');
    }

    reminder.isSent = true;
    return await Reminder.db.updateRow(session, reminder);
  }

  /// Delete a reminder
  Future<bool> deleteReminder(Session session, int reminderId) async {
    final userId = session.authenticatedUserId;
    if (userId == null) {
      throw Exception('User not authenticated');
    }

    final reminder = await Reminder.db.findById(session, reminderId);
    if (reminder == null || reminder.userId != userId) {
      return false;
    }

    await Reminder.db.deleteRow(session, reminder);
    return true;
  }
}