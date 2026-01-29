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

abstract class TripContact implements _i1.SerializableModel {
  TripContact._({
    this.id,
    required this.tripId,
    required this.contactId,
    required this.isConfirmed,
    this.plannedMeetupDate,
    this.meetupLocation,
  });

  factory TripContact({
    int? id,
    required int tripId,
    required int contactId,
    required bool isConfirmed,
    DateTime? plannedMeetupDate,
    String? meetupLocation,
  }) = _TripContactImpl;

  factory TripContact.fromJson(Map<String, dynamic> jsonSerialization) {
    return TripContact(
      id: jsonSerialization['id'] as int?,
      tripId: jsonSerialization['tripId'] as int,
      contactId: jsonSerialization['contactId'] as int,
      isConfirmed: jsonSerialization['isConfirmed'] as bool,
      plannedMeetupDate: jsonSerialization['plannedMeetupDate'] == null
          ? null
          : _i1.DateTimeJsonExtension.fromJson(
              jsonSerialization['plannedMeetupDate'],
            ),
      meetupLocation: jsonSerialization['meetupLocation'] as String?,
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  /// The trip ID
  int tripId;

  /// The contact ID
  int contactId;

  /// Whether visit is confirmed
  bool isConfirmed;

  /// Planned meetup date/time
  DateTime? plannedMeetupDate;

  /// Meetup location
  String? meetupLocation;

  /// Returns a shallow copy of this [TripContact]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  TripContact copyWith({
    int? id,
    int? tripId,
    int? contactId,
    bool? isConfirmed,
    DateTime? plannedMeetupDate,
    String? meetupLocation,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'TripContact',
      if (id != null) 'id': id,
      'tripId': tripId,
      'contactId': contactId,
      'isConfirmed': isConfirmed,
      if (plannedMeetupDate != null)
        'plannedMeetupDate': plannedMeetupDate?.toJson(),
      if (meetupLocation != null) 'meetupLocation': meetupLocation,
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _TripContactImpl extends TripContact {
  _TripContactImpl({
    int? id,
    required int tripId,
    required int contactId,
    required bool isConfirmed,
    DateTime? plannedMeetupDate,
    String? meetupLocation,
  }) : super._(
         id: id,
         tripId: tripId,
         contactId: contactId,
         isConfirmed: isConfirmed,
         plannedMeetupDate: plannedMeetupDate,
         meetupLocation: meetupLocation,
       );

  /// Returns a shallow copy of this [TripContact]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  TripContact copyWith({
    Object? id = _Undefined,
    int? tripId,
    int? contactId,
    bool? isConfirmed,
    Object? plannedMeetupDate = _Undefined,
    Object? meetupLocation = _Undefined,
  }) {
    return TripContact(
      id: id is int? ? id : this.id,
      tripId: tripId ?? this.tripId,
      contactId: contactId ?? this.contactId,
      isConfirmed: isConfirmed ?? this.isConfirmed,
      plannedMeetupDate: plannedMeetupDate is DateTime?
          ? plannedMeetupDate
          : this.plannedMeetupDate,
      meetupLocation: meetupLocation is String?
          ? meetupLocation
          : this.meetupLocation,
    );
  }
}
