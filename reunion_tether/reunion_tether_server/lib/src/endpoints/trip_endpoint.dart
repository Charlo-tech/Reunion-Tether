import '../generated/protocol.dart' hide AuthenticationInfo;
import 'package:serverpod/serverpod.dart';

/// Endpoint for managing trips
class TripEndpoint extends Endpoint {
  /// Get all trips for the current user
  Future<List<Trip>> getTrips(Session session, {String? status}) async {
    final userId = await session.authenticatedUserId;
    if (userId == null) {
      throw Exception('User not authenticated');
    }

    if (status != null) {
      return await Trip.db.find(
        session,
        where: (t) => t.userId.equals(userId) & t.status.equals(status),
        orderBy: (t) => t.startDate,
        orderDescending: false,
      );
    }

    return await Trip.db.find(
      session,
      where: (t) => t.userId.equals(userId),
      orderBy: (t) => t.startDate,
      orderDescending: false,
    );
  }

  /// Get a single trip by ID
  Future<Trip?> getTrip(Session session, int tripId) async {
    final userId = await session.authenticatedUserId;
    if (userId == null) {
      throw Exception('User not authenticated');
    }

    final trip = await Trip.db.findById(session, tripId);
    if (trip == null || trip.userId != userId) {
      return null;
    }
    return trip;
  }

  /// Create a new trip
  Future<Trip> createTrip(Session session, Trip trip) async {
    final userId = await session.authenticatedUserId;
    if (userId == null) {
      throw Exception('User not authenticated');
    }

    trip.userId = userId;
    trip.createdAt = DateTime.now();
    trip.updatedAt = DateTime.now();
    if (trip.status.isEmpty) {
      trip.status = 'planned';
    }
    return await Trip.db.insertRow(session, trip);
  }

  /// Update an existing trip
  Future<Trip> updateTrip(Session session, Trip trip) async {
    final userId = await session.authenticatedUserId;
    if (userId == null) {
      throw Exception('User not authenticated');
    }

    final existing = await Trip.db.findById(session, trip.id!);
    if (existing == null || existing.userId != userId) {
      throw Exception('Trip not found or unauthorized');
    }

    trip.userId = userId;
    trip.updatedAt = DateTime.now();
    return await Trip.db.updateRow(session, trip);
  }

  /// Delete a trip
  Future<bool> deleteTrip(Session session, int tripId) async {
    final userId = await session.authenticatedUserId;
    if (userId == null) {
      throw Exception('User not authenticated');
    }

    final trip = await Trip.db.findById(session, tripId);
    if (trip == null || trip.userId != userId) {
      return false;
    }

    // Delete related records
    await TripContact.db.deleteWhere(
      session,
      where: (tc) => tc.tripId.equals(tripId),
    );
    await Itinerary.db.deleteWhere(
      session,
      where: (i) => i.tripId.equals(tripId),
    );

    await Trip.db.deleteRow(session, trip);
    return true;
  }

  /// Get contacts linked to a trip
  Future<List<Contact>> getTripContacts(Session session, int tripId) async {
    final userId = await session.authenticatedUserId;
    if (userId == null) {
      throw Exception('User not authenticated');
    }

    final trip = await Trip.db.findById(session, tripId);
    if (trip == null || trip.userId != userId) {
      throw Exception('Trip not found or unauthorized');
    }

    final tripContacts = await TripContact.db.find(
      session,
      where: (tc) => tc.tripId.equals(tripId),
    );

    final contactIds = tripContacts.map((tc) => tc.contactId).toList();
    if (contactIds.isEmpty) {
      return [];
    }

    // Query contacts by IDs - need to use different approach if isIn doesn't work
    final allContacts = await Contact.db.find(session);
    return allContacts.where((c) => c.id != null && contactIds.contains(c.id!)).toList();
  }

  /// Add a contact to a trip
  Future<TripContact> addContactToTrip(
    Session session,
    int tripId,
    int contactId,
  ) async {
    final userId = await session.authenticatedUserId;
    if (userId == null) {
      throw Exception('User not authenticated');
    }

    final trip = await Trip.db.findById(session, tripId);
    if (trip == null || trip.userId != userId) {
      throw Exception('Trip not found or unauthorized');
    }

    final contact = await Contact.db.findById(session, contactId);
    if (contact == null || contact.userId != userId) {
      throw Exception('Contact not found or unauthorized');
    }

    // Check if already exists
    final existing = await TripContact.db.findFirstRow(
      session,
      where: (tc) => tc.tripId.equals(tripId) & tc.contactId.equals(contactId),
    );

    if (existing != null) {
      return existing;
    }

    final tripContact = TripContact(
      tripId: tripId,
      contactId: contactId,
      isConfirmed: false,
    );

    return await TripContact.db.insertRow(session, tripContact);
  }

  /// Remove a contact from a trip
  Future<bool> removeContactFromTrip(
    Session session,
    int tripId,
    int contactId,
  ) async {
    final userId = await session.authenticatedUserId;
    if (userId == null) {
      throw Exception('User not authenticated');
    }

    final trip = await Trip.db.findById(session, tripId);
    if (trip == null || trip.userId != userId) {
      throw Exception('Trip not found or unauthorized');
    }

    final tripContact = await TripContact.db.findFirstRow(
      session,
      where: (tc) => tc.tripId.equals(tripId) & tc.contactId.equals(contactId),
    );

    if (tripContact == null) {
      return false;
    }

    await TripContact.db.deleteRow(session, tripContact);
    return true;
  }

  /// Get trip suggestions based on contact locations
  Future<List<Map<String, dynamic>>> getTripSuggestions(Session session) async {
    final userId = await session.authenticatedUserId;
    if (userId == null) {
      throw Exception('User not authenticated');
    }

    final allContacts = await Contact.db.find(
      session,
      where: (c) => c.userId.equals(userId),
    );

    // Filter contacts with location in memory
    final contacts = allContacts.where((c) => c.location != null).toList();

    // Group contacts by location
    final locationGroups = <String, List<Contact>>{};
    for (final contact in contacts) {
      if (contact.location != null) {
        final location = contact.location!;
        locationGroups.putIfAbsent(location, () => []).add(contact);
      }
    }

    // Create suggestions for locations with multiple contacts
    final suggestions = <Map<String, dynamic>>[];
    for (final entry in locationGroups.entries) {
      if (entry.value.length > 1) {
        suggestions.add({
          'location': entry.key,
          'contactCount': entry.value.length,
          'contacts': entry.value.map((c) => c.name).toList(),
        });
      }
    }

    return suggestions;
  }
}