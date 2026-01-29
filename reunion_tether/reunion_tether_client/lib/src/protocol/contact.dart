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

abstract class Contact implements _i1.SerializableModel {
  Contact._({
    this.id,
    required this.userId,
    required this.name,
    required this.relationshipType,
    this.location,
    this.latitude,
    this.longitude,
    this.birthday,
    this.anniversary,
    this.lastMeetup,
    this.notes,
    this.conversationTopics,
    this.preferredContactMethod,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Contact({
    int? id,
    required int userId,
    required String name,
    required String relationshipType,
    String? location,
    double? latitude,
    double? longitude,
    DateTime? birthday,
    DateTime? anniversary,
    DateTime? lastMeetup,
    String? notes,
    String? conversationTopics,
    String? preferredContactMethod,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _ContactImpl;

  factory Contact.fromJson(Map<String, dynamic> jsonSerialization) {
    return Contact(
      id: jsonSerialization['id'] as int?,
      userId: jsonSerialization['userId'] as int,
      name: jsonSerialization['name'] as String,
      relationshipType: jsonSerialization['relationshipType'] as String,
      location: jsonSerialization['location'] as String?,
      latitude: (jsonSerialization['latitude'] as num?)?.toDouble(),
      longitude: (jsonSerialization['longitude'] as num?)?.toDouble(),
      birthday: jsonSerialization['birthday'] == null
          ? null
          : _i1.DateTimeJsonExtension.fromJson(jsonSerialization['birthday']),
      anniversary: jsonSerialization['anniversary'] == null
          ? null
          : _i1.DateTimeJsonExtension.fromJson(
              jsonSerialization['anniversary'],
            ),
      lastMeetup: jsonSerialization['lastMeetup'] == null
          ? null
          : _i1.DateTimeJsonExtension.fromJson(jsonSerialization['lastMeetup']),
      notes: jsonSerialization['notes'] as String?,
      conversationTopics: jsonSerialization['conversationTopics'] as String?,
      preferredContactMethod:
          jsonSerialization['preferredContactMethod'] as String?,
      createdAt: _i1.DateTimeJsonExtension.fromJson(
        jsonSerialization['createdAt'],
      ),
      updatedAt: _i1.DateTimeJsonExtension.fromJson(
        jsonSerialization['updatedAt'],
      ),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  /// The user ID who owns this contact
  int userId;

  /// Full name of the contact
  String name;

  /// Relationship type (family, close_friend, acquaintance)
  String relationshipType;

  /// Primary location (city, state/country)
  String? location;

  /// Latitude for map display
  double? latitude;

  /// Longitude for map display
  double? longitude;

  /// Birthday (month and day)
  DateTime? birthday;

  /// Anniversary date
  DateTime? anniversary;

  /// Last time user met/interacted with this contact
  DateTime? lastMeetup;

  /// Personal notes about the contact
  String? notes;

  /// Conversation topics to remember
  String? conversationTopics;

  /// Preferred contact method
  String? preferredContactMethod;

  /// Created timestamp
  DateTime createdAt;

  /// Updated timestamp
  DateTime updatedAt;

  /// Returns a shallow copy of this [Contact]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  Contact copyWith({
    int? id,
    int? userId,
    String? name,
    String? relationshipType,
    String? location,
    double? latitude,
    double? longitude,
    DateTime? birthday,
    DateTime? anniversary,
    DateTime? lastMeetup,
    String? notes,
    String? conversationTopics,
    String? preferredContactMethod,
    DateTime? createdAt,
    DateTime? updatedAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'Contact',
      if (id != null) 'id': id,
      'userId': userId,
      'name': name,
      'relationshipType': relationshipType,
      if (location != null) 'location': location,
      if (latitude != null) 'latitude': latitude,
      if (longitude != null) 'longitude': longitude,
      if (birthday != null) 'birthday': birthday?.toJson(),
      if (anniversary != null) 'anniversary': anniversary?.toJson(),
      if (lastMeetup != null) 'lastMeetup': lastMeetup?.toJson(),
      if (notes != null) 'notes': notes,
      if (conversationTopics != null) 'conversationTopics': conversationTopics,
      if (preferredContactMethod != null)
        'preferredContactMethod': preferredContactMethod,
      'createdAt': createdAt.toJson(),
      'updatedAt': updatedAt.toJson(),
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ContactImpl extends Contact {
  _ContactImpl({
    int? id,
    required int userId,
    required String name,
    required String relationshipType,
    String? location,
    double? latitude,
    double? longitude,
    DateTime? birthday,
    DateTime? anniversary,
    DateTime? lastMeetup,
    String? notes,
    String? conversationTopics,
    String? preferredContactMethod,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) : super._(
         id: id,
         userId: userId,
         name: name,
         relationshipType: relationshipType,
         location: location,
         latitude: latitude,
         longitude: longitude,
         birthday: birthday,
         anniversary: anniversary,
         lastMeetup: lastMeetup,
         notes: notes,
         conversationTopics: conversationTopics,
         preferredContactMethod: preferredContactMethod,
         createdAt: createdAt,
         updatedAt: updatedAt,
       );

  /// Returns a shallow copy of this [Contact]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  Contact copyWith({
    Object? id = _Undefined,
    int? userId,
    String? name,
    String? relationshipType,
    Object? location = _Undefined,
    Object? latitude = _Undefined,
    Object? longitude = _Undefined,
    Object? birthday = _Undefined,
    Object? anniversary = _Undefined,
    Object? lastMeetup = _Undefined,
    Object? notes = _Undefined,
    Object? conversationTopics = _Undefined,
    Object? preferredContactMethod = _Undefined,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return Contact(
      id: id is int? ? id : this.id,
      userId: userId ?? this.userId,
      name: name ?? this.name,
      relationshipType: relationshipType ?? this.relationshipType,
      location: location is String? ? location : this.location,
      latitude: latitude is double? ? latitude : this.latitude,
      longitude: longitude is double? ? longitude : this.longitude,
      birthday: birthday is DateTime? ? birthday : this.birthday,
      anniversary: anniversary is DateTime? ? anniversary : this.anniversary,
      lastMeetup: lastMeetup is DateTime? ? lastMeetup : this.lastMeetup,
      notes: notes is String? ? notes : this.notes,
      conversationTopics: conversationTopics is String?
          ? conversationTopics
          : this.conversationTopics,
      preferredContactMethod: preferredContactMethod is String?
          ? preferredContactMethod
          : this.preferredContactMethod,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}
