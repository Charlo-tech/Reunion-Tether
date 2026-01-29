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

abstract class Destination implements _i1.SerializableModel {
  Destination._({
    this.id,
    required this.userId,
    required this.city,
    this.country,
    this.latitude,
    this.longitude,
    this.notes,
    this.priority,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Destination({
    int? id,
    required int userId,
    required String city,
    String? country,
    double? latitude,
    double? longitude,
    String? notes,
    String? priority,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _DestinationImpl;

  factory Destination.fromJson(Map<String, dynamic> jsonSerialization) {
    return Destination(
      id: jsonSerialization['id'] as int?,
      userId: jsonSerialization['userId'] as int,
      city: jsonSerialization['city'] as String,
      country: jsonSerialization['country'] as String?,
      latitude: (jsonSerialization['latitude'] as num?)?.toDouble(),
      longitude: (jsonSerialization['longitude'] as num?)?.toDouble(),
      notes: jsonSerialization['notes'] as String?,
      priority: jsonSerialization['priority'] as String?,
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

  /// The user ID who owns this destination
  int userId;

  /// City name
  String city;

  /// Country or state
  String? country;

  /// Latitude for map display
  double? latitude;

  /// Longitude for map display
  double? longitude;

  /// Notes about why this destination is interesting
  String? notes;

  /// Priority level (high, medium, low)
  String? priority;

  /// Created timestamp
  DateTime createdAt;

  /// Updated timestamp
  DateTime updatedAt;

  /// Returns a shallow copy of this [Destination]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  Destination copyWith({
    int? id,
    int? userId,
    String? city,
    String? country,
    double? latitude,
    double? longitude,
    String? notes,
    String? priority,
    DateTime? createdAt,
    DateTime? updatedAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'Destination',
      if (id != null) 'id': id,
      'userId': userId,
      'city': city,
      if (country != null) 'country': country,
      if (latitude != null) 'latitude': latitude,
      if (longitude != null) 'longitude': longitude,
      if (notes != null) 'notes': notes,
      if (priority != null) 'priority': priority,
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

class _DestinationImpl extends Destination {
  _DestinationImpl({
    int? id,
    required int userId,
    required String city,
    String? country,
    double? latitude,
    double? longitude,
    String? notes,
    String? priority,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) : super._(
         id: id,
         userId: userId,
         city: city,
         country: country,
         latitude: latitude,
         longitude: longitude,
         notes: notes,
         priority: priority,
         createdAt: createdAt,
         updatedAt: updatedAt,
       );

  /// Returns a shallow copy of this [Destination]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  Destination copyWith({
    Object? id = _Undefined,
    int? userId,
    String? city,
    Object? country = _Undefined,
    Object? latitude = _Undefined,
    Object? longitude = _Undefined,
    Object? notes = _Undefined,
    Object? priority = _Undefined,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return Destination(
      id: id is int? ? id : this.id,
      userId: userId ?? this.userId,
      city: city ?? this.city,
      country: country is String? ? country : this.country,
      latitude: latitude is double? ? latitude : this.latitude,
      longitude: longitude is double? ? longitude : this.longitude,
      notes: notes is String? ? notes : this.notes,
      priority: priority is String? ? priority : this.priority,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}
