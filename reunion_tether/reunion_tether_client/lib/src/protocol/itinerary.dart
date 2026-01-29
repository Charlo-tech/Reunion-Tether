/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: implementation_imports
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: type_literal_in_constant_pattern
// ignore_for_file: use_super_parameters
// ignore_for_file: invalid_use_of_internal_member

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

abstract class Itinerary implements _i1.SerializableModel {
  Itinerary._({
    this.id,
    required this.tripId,
    required this.dayNumber,
    this.date,
    required this.activities,
    this.notes,
  });

  factory Itinerary({
    int? id,
    required int tripId,
    required int dayNumber,
    DateTime? date,
    required String activities,
    String? notes,
  }) = _ItineraryImpl;

  factory Itinerary.fromJson(Map<String, dynamic> jsonSerialization) {
    return Itinerary(
      id: jsonSerialization['id'] as int?,
      tripId: jsonSerialization['tripId'] as int,
      dayNumber: jsonSerialization['dayNumber'] as int,
      date: jsonSerialization['date'] == null
          ? null
          : _i1.DateTimeJsonExtension.fromJson(jsonSerialization['date']),
      activities: jsonSerialization['activities'] as String,
      notes: jsonSerialization['notes'] as String?,
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  /// The trip this itinerary belongs to
  int tripId;

  /// Day number (1, 2, 3, etc.)
  int dayNumber;

  /// Date for this day
  DateTime? date;

  /// Activities planned for this day
  String activities;

  /// Notes for this day
  String? notes;

  /// Returns a shallow copy of this [Itinerary]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  Itinerary copyWith({
    int? id,
    int? tripId,
    int? dayNumber,
    DateTime? date,
    String? activities,
    String? notes,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'Itinerary',
      if (id != null) 'id': id,
      'tripId': tripId,
      'dayNumber': dayNumber,
      if (date != null) 'date': date?.toJson(),
      'activities': activities,
      if (notes != null) 'notes': notes,
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ItineraryImpl extends Itinerary {
  _ItineraryImpl({
    int? id,
    required int tripId,
    required int dayNumber,
    DateTime? date,
    required String activities,
    String? notes,
  }) : super._(
         id: id,
         tripId: tripId,
         dayNumber: dayNumber,
         date: date,
         activities: activities,
         notes: notes,
       );

  /// Returns a shallow copy of this [Itinerary]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  Itinerary copyWith({
    Object? id = _Undefined,
    int? tripId,
    int? dayNumber,
    Object? date = _Undefined,
    String? activities,
    Object? notes = _Undefined,
  }) {
    return Itinerary(
      id: id is int? ? id : this.id,
      tripId: tripId ?? this.tripId,
      dayNumber: dayNumber ?? this.dayNumber,
      date: date is DateTime? ? date : this.date,
      activities: activities ?? this.activities,
      notes: notes is String? ? notes : this.notes,
    );
  }
}
