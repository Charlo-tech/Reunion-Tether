import '../generated/protocol.dart' hide AuthenticationInfo;
import 'package:serverpod/serverpod.dart';

/// Endpoint for managing destinations
class DestinationEndpoint extends Endpoint {
  /// Get all destinations for the current user
  Future<List<Destination>> getDestinations(Session session) async {
    final userId = await session.authenticatedUserId;
    if (userId == null) {
      throw Exception('User not authenticated');
    }

    return await Destination.db.find(
      session,
      where: (d) => d.userId.equals(userId),
      orderBy: (d) => d.city,
    );
  }

  /// Create a new destination
  Future<Destination> createDestination(
    Session session,
    Destination destination,
  ) async {
    final userId = await session.authenticatedUserId;
    if (userId == null) {
      throw Exception('User not authenticated');
    }

    destination.userId = userId;
    destination.createdAt = DateTime.now();
    destination.updatedAt = DateTime.now();
    return await Destination.db.insertRow(session, destination);
  }

  /// Update a destination
  Future<Destination> updateDestination(
    Session session,
    Destination destination,
  ) async {
    final userId = session.authenticatedUserId;
    if (userId == null) {
      throw Exception('User not authenticated');
    }

    final existing = await Destination.db.findById(session, destination.id!);
    if (existing == null || existing.userId != userId) {
      throw Exception('Destination not found or unauthorized');
    }

    destination.userId = userId;
    destination.updatedAt = DateTime.now();
    return await Destination.db.updateRow(session, destination);
  }

  /// Delete a destination
  Future<bool> deleteDestination(Session session, int destinationId) async {
    final userId = session.authenticatedUserId;
    if (userId == null) {
      throw Exception('User not authenticated');
    }

    final destination = await Destination.db.findById(session, destinationId);
    if (destination == null || destination.userId != userId) {
      return false;
    }

    await Destination.db.deleteRow(session, destination);
    return true;
  }
}
