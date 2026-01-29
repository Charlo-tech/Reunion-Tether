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

abstract class Trip implements _i1.SerializableModel {
  Trip._({
    this.id,
    required this.userId,
    required this.destinationCity,
    this.destinationCountry,
    this.latitude,
    this.longitude,
    this.startDate,
    this.endDate,
    required this.status,
    this.notes,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Trip({
    int? id,
    required int userId,
    required String destinationCity,
    String? destinationCountry,
    double? latitude,
    double? longitude,
    DateTime? startDate,
    DateTime? endDate,
    required String status,
    String? notes,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _TripImpl;

  factory Trip.fromJson(Map<String, dynamic> jsonSerialization) {
    return Trip(
      id: jsonSerialization['id'] as int?,
      userId: jsonSerialization['userId'] as int,
      destinationCity: jsonSerialization['destinationCity'] as String,
      destinationCountry: jsonSerialization['destinationCountry'] as String?,
      latitude: (jsonSerialization['latitude'] as num?)?.toDouble(),
      longitude: (jsonSerialization['longitude'] as num?)?.toDouble(),
      startDate: jsonSerialization['startDate'] == null
          ? null
          : _i1.DateTimeJsonExtension.fromJson(jsonSerialization['startDate']),
      endDate: jsonSerialization['endDate'] == null
          ? null
          : _i1.DateTimeJsonExtension.fromJson(jsonSerialization['endDate']),
      status: jsonSerialization['status'] as String,
      notes: jsonSerialization['notes'] as String?,
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

  /// The user ID who owns this trip
  int userId;

  /// Destination city
  String destinationCity;

  /// Destination country/state
  String? destinationCountry;

  /// Latitude for map display
  double? latitude;

  /// Longitude for map display
  double? longitude;

  /// Start date of the trip
  DateTime? startDate;

  /// End date of the trip
  DateTime? endDate;

  /// Trip status (planned, in_progress, completed, cancelled)
  String status;

  /// Notes about the trip
  String? notes;

  /// Created timestamp
  DateTime createdAt;

  /// Updated timestamp
  DateTime updatedAt;

  /// Returns a shallow copy of this [Trip]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  Trip copyWith({
    int? id,
    int? userId,
    String? destinationCity,
    String? destinationCountry,
    double? latitude,
    double? longitude,
    DateTime? startDate,
    DateTime? endDate,
    String? status,
    String? notes,
    DateTime? createdAt,
    DateTime? updatedAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'Trip',
      if (id != null) 'id': id,
      'userId': userId,
      'destinationCity': destinationCity,
      if (destinationCountry != null) 'destinationCountry': destinationCountry,
      if (latitude != null) 'latitude': latitude,
      if (longitude != null) 'longitude': longitude,
      if (startDate != null) 'startDate': startDate?.toJson(),
      if (endDate != null) 'endDate': endDate?.toJson(),
      'status': status,
      if (notes != null) 'notes': notes,
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

class _TripImpl extends Trip {
  _TripImpl({
    int? id,
    required int userId,
    required String destinationCity,
    String? destinationCountry,
    double? latitude,
    double? longitude,
    DateTime? startDate,
    DateTime? endDate,
    required String status,
    String? notes,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) : super._(
         id: id,
         userId: userId,
         destinationCity: destinationCity,
         destinationCountry: destinationCountry,
         latitude: latitude,
         longitude: longitude,
         startDate: startDate,
         endDate: endDate,
         status: status,
         notes: notes,
         createdAt: createdAt,
         updatedAt: updatedAt,
       );

  /// Returns a shallow copy of this [Trip]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  Trip copyWith({
    Object? id = _Undefined,
    int? userId,
    String? destinationCity,
    Object? destinationCountry = _Undefined,
    Object? latitude = _Undefined,
    Object? longitude = _Undefined,
    Object? startDate = _Undefined,
    Object? endDate = _Undefined,
    String? status,
    Object? notes = _Undefined,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return Trip(
      id: id is int? ? id : this.id,
      userId: userId ?? this.userId,
      destinationCity: destinationCity ?? this.destinationCity,
      destinationCountry: destinationCountry is String?
          ? destinationCountry
          : this.destinationCountry,
      latitude: latitude is double? ? latitude : this.latitude,
      longitude: longitude is double? ? longitude : this.longitude,
      startDate: startDate is DateTime? ? startDate : this.startDate,
      endDate: endDate is DateTime? ? endDate : this.endDate,
      status: status ?? this.status,
      notes: notes is String? ? notes : this.notes,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}
