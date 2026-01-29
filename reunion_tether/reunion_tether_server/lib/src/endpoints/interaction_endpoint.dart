import '../generated/protocol.dart' hide AuthenticationInfo;
import 'package:serverpod/serverpod.dart';

/// Endpoint for managing interactions
class InteractionEndpoint extends Endpoint {
  /// Get all interactions for a contact
  Future<List<Interaction>> getContactInteractions(
    Session session,
    int contactId,
  ) async {
    final userId = session.authenticatedUserId;
    if (userId == null) {
      throw Exception('User not authenticated');
    }

    // Verify contact belongs to user
    final contact = await Contact.db.findById(session, contactId);
    if (contact == null || contact.userId != userId) {
      throw Exception('Contact not found or unauthorized');
    }

    return await Interaction.db.find(
      session,
      where: (i) => i.contactId.equals(contactId) & i.userId.equals(userId),
      orderBy: (i) => i.interactionDate,
      orderDescending: true,
    );
  }

  /// Get all interactions for the current user
  Future<List<Interaction>> getAllInteractions(Session session) async {
    final userId = await session.authenticatedUserId;
    if (userId == null) {
      throw Exception('User not authenticated');
    }

    return await Interaction.db.find(
      session,
      where: (i) => i.userId.equals(userId),
      orderBy: (i) => i.interactionDate,
      orderDescending: true,
    );
  }

  /// Create a new interaction
  Future<Interaction> createInteraction(
    Session session,
    Interaction interaction,
  ) async {
    final userId = session.authenticatedUserId;
    if (userId == null) {
      throw Exception('User not authenticated');
    }

    // Verify contact belongs to user
    final contact = await Contact.db.findById(session, interaction.contactId);
    if (contact == null || contact.userId != userId) {
      throw Exception('Contact not found or unauthorized');
    }

    interaction.userId = userId;
    interaction.createdAt = DateTime.now();
    
    final created = await Interaction.db.insertRow(session, interaction);
    
    // Update contact's last meetup if this was a visit
    if (interaction.interactionType == 'visit' && 
        (contact.lastMeetup == null || 
         interaction.interactionDate.isAfter(contact.lastMeetup!))) {
      contact.lastMeetup = interaction.interactionDate;
      contact.updatedAt = DateTime.now();
      await Contact.db.updateRow(session, contact);
    }
    
    return created;
  }

  /// Update an interaction
  Future<Interaction> updateInteraction(
    Session session,
    Interaction interaction,
  ) async {
    final userId = session.authenticatedUserId;
    if (userId == null) {
      throw Exception('User not authenticated');
    }

    final existing = await Interaction.db.findById(session, interaction.id!);
    if (existing == null || existing.userId != userId) {
      throw Exception('Interaction not found or unauthorized');
    }

    interaction.userId = userId;
    return await Interaction.db.updateRow(session, interaction);
  }

  /// Delete an interaction
  Future<bool> deleteInteraction(Session session, int interactionId) async {
    final userId = session.authenticatedUserId;
    if (userId == null) {
      throw Exception('User not authenticated');
    }

    final interaction = await Interaction.db.findById(session, interactionId);
    if (interaction == null || interaction.userId != userId) {
      return false;
    }

    await Interaction.db.deleteRow(session, interaction);
    return true;
  }
}