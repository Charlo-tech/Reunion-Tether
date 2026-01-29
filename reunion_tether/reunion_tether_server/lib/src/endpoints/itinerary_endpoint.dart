import '../generated/protocol.dart' hide AuthenticationInfo;
import 'package:serverpod/serverpod.dart';

/// Endpoint for managing trip itineraries
class ItineraryEndpoint extends Endpoint {
  /// Get itinerary for a trip
  Future<List<Itinerary>> getTripItinerary(
    Session session,
    int tripId,
  ) async {
    final userId = session.authenticatedUserId;
    if (userId == null) {
      throw Exception('User not authenticated');
    }

    final trip = await Trip.db.findById(session, tripId);
    if (trip == null || trip.userId != userId) {
      throw Exception('Trip not found or unauthorized');
    }

    return await Itinerary.db.find(
      session,
      where: (i) => i.tripId.equals(tripId),
      orderBy: (i) => i.dayNumber,
    );
  }

  /// Create or update an itinerary day
  Future<Itinerary> upsertItineraryDay(
    Session session,
    Itinerary itinerary,
  ) async {
    final userId = session.authenticatedUserId;
    if (userId == null) {
      throw Exception('User not authenticated');
    }

    final trip = await Trip.db.findById(session, itinerary.tripId);
    if (trip == null || trip.userId != userId) {
      throw Exception('Trip not found or unauthorized');
    }

    // Check if day already exists
    final existing = await Itinerary.db.findFirstRow(
      session,
      where: (i) => i.tripId.equals(itinerary.tripId) & 
          i.dayNumber.equals(itinerary.dayNumber),
    );

    if (existing != null) {
      itinerary.id = existing.id;
      return await Itinerary.db.updateRow(session, itinerary);
    } else {
      return await Itinerary.db.insertRow(session, itinerary);
    }
  }

  /// Delete an itinerary day
  Future<bool> deleteItineraryDay(
    Session session,
    int tripId,
    int dayNumber,
  ) async {
    final userId = session.authenticatedUserId;
    if (userId == null) {
      throw Exception('User not authenticated');
    }

    final trip = await Trip.db.findById(session, tripId);
    if (trip == null || trip.userId != userId) {
      throw Exception('Trip not found or unauthorized');
    }

    final itinerary = await Itinerary.db.findFirstRow(
      session,
      where: (i) => i.tripId.equals(tripId) & i.dayNumber.equals(dayNumber),
    );

    if (itinerary == null) {
      return false;
    }

    await Itinerary.db.deleteRow(session, itinerary);
    return true;
  }
}