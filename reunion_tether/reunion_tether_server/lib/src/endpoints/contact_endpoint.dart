import '../generated/protocol.dart' hide AuthenticationInfo; 
import 'package:serverpod/serverpod.dart';
import 'package:serverpod_auth_idp_server/serverpod_auth_idp_server.dart';

class ContactEndpoint extends Endpoint {
  Future<List<Contact>> getContacts(Session session) async {
      final user = session.authenticatedUser;
    if (user == null) {
      throw Exception('User not authenticated');
    }
    final userId = user.id;

    return await Contact.db.find(
      session,
      where: (c) => c.userId.equals(userId),
      orderBy: (c) => c.name,
    );
  }

  Future<Contact?> getContact(Session session, int contactId) async {
      final userId = await session.authenticatedUserId;
      if (userId == null) {
        throw Exception('User not authenticated');
      }

    final contact = await Contact.db.findById(session, contactId);
    if (contact == null || contact.userId != userId) {
      return null;
    }
    return contact;
  }

  Future<Contact> createContact(Session session, Contact contact) async {
      final userId = await session.authenticatedUserId;
      if (userId == null) {
        throw Exception('User not authenticated');
      }

    contact.userId = userId;
    contact.createdAt = DateTime.now();
    contact.updatedAt = DateTime.now();
    return await Contact.db.insertRow(session, contact);
  }

  /// Update an existing contact
  Future<Contact> updateContact(Session session, Contact contact) async {
   final user = session.authenticatedUser;
    if (user == null) {
      throw Exception('User not authenticated');
    }
    final userId = user.id;

    final existing = await Contact.db.findById(session, contact.id!);
    if (existing == null || existing.userId != userId) {
      throw Exception('Contact not found or unauthorized');
    }

    contact.userId = userId;
    contact.updatedAt = DateTime.now();
    return await Contact.db.updateRow(session, contact);
  }

  /// Delete a contact
  Future<bool> deleteContact(Session session, int contactId) async {
      final userId = await session.authenticatedUserId;
      if (userId == null) {
        throw Exception('User not authenticated');
      }

    final contact = await Contact.db.findById(session, contactId);
    if (contact == null || contact.userId != userId) {
      return false;
    }

    await Contact.db.deleteRow(session, contact);
    return true;
  }

  /// Get overdue contacts (haven't contacted in X weeks)
  Future<List<Contact>> getOverdueContacts(
    Session session,
    int weeksThreshold,
  ) async {
    final user = session.authenticatedUser;
    if (user == null) {
      throw Exception('User not authenticated');
    }
    final userId = user.id;

    final thresholdDate = DateTime.now().subtract(Duration(days: weeksThreshold * 7));
    final contacts = await Contact.db.find(
      session,
      where: (c) => c.userId.equals(userId),
    );

    final overdueContacts = <Contact>[];
    for (final contact in contacts) {
      DateTime? lastInteractionDate;
      
      // Check last meetup date
      if (contact.lastMeetup != null) {
        lastInteractionDate = contact.lastMeetup;
      }
      
      // Check last interaction in database
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

    return overdueContacts;
  }

  /// Get contacts with upcoming birthdays
  Future<List<Contact>> getUpcomingBirthdays(
    Session session,
    int daysAhead,
  ) async {
      final userId = await session.authenticatedUserId;
      if (userId == null) {
        throw Exception('User not authenticated');
      }

    final contacts = await Contact.db.find(
      session,
      where: (c) => c.userId.equals(userId) & c.birthday.notEquals(null),
    );

    final now = DateTime.now();
    final targetDate = now.add(Duration(days: daysAhead));
    
    return contacts.where((contact) {
      if (contact.birthday == null) return false;
      final birthday = contact.birthday!;
      final thisYearBirthday = DateTime(now.year, birthday.month, birthday.day);
      final nextYearBirthday = DateTime(now.year + 1, birthday.month, birthday.day);
      
      return (thisYearBirthday.isAfter(now) && thisYearBirthday.isBefore(targetDate)) ||
             (thisYearBirthday.isBefore(now) && nextYearBirthday.isBefore(targetDate));
    }).toList();
  }
}