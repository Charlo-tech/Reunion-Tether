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

abstract class Interaction implements _i1.SerializableModel {
  Interaction._({
    this.id,
    required this.contactId,
    required this.userId,
    required this.interactionDate,
    required this.interactionType,
    this.notes,
    this.location,
    required this.createdAt,
  });

  factory Interaction({
    int? id,
    required int contactId,
    required int userId,
    required DateTime interactionDate,
    required String interactionType,
    String? notes,
    String? location,
    required DateTime createdAt,
  }) = _InteractionImpl;

  factory Interaction.fromJson(Map<String, dynamic> jsonSerialization) {
    return Interaction(
      id: jsonSerialization['id'] as int?,
      contactId: jsonSerialization['contactId'] as int,
      userId: jsonSerialization['userId'] as int,
      interactionDate: _i1.DateTimeJsonExtension.fromJson(
        jsonSerialization['interactionDate'],
      ),
      interactionType: jsonSerialization['interactionType'] as String,
      notes: jsonSerialization['notes'] as String?,
      location: jsonSerialization['location'] as String?,
      createdAt: _i1.DateTimeJsonExtension.fromJson(
        jsonSerialization['createdAt'],
      ),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  /// The contact this interaction is with
  int contactId;

  /// The user ID who owns this interaction
  int userId;

  /// Date of the interaction
  DateTime interactionDate;

  /// Type of interaction (call, text, email, visit, etc.)
  String interactionType;

  /// Notes about what was discussed
  String? notes;

  /// Location if it was an in-person meeting
  String? location;

  /// Created timestamp
  DateTime createdAt;

  /// Returns a shallow copy of this [Interaction]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  Interaction copyWith({
    int? id,
    int? contactId,
    int? userId,
    DateTime? interactionDate,
    String? interactionType,
    String? notes,
    String? location,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'Interaction',
      if (id != null) 'id': id,
      'contactId': contactId,
      'userId': userId,
      'interactionDate': interactionDate.toJson(),
      'interactionType': interactionType,
      if (notes != null) 'notes': notes,
      if (location != null) 'location': location,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _InteractionImpl extends Interaction {
  _InteractionImpl({
    int? id,
    required int contactId,
    required int userId,
    required DateTime interactionDate,
    required String interactionType,
    String? notes,
    String? location,
    required DateTime createdAt,
  }) : super._(
         id: id,
         contactId: contactId,
         userId: userId,
         interactionDate: interactionDate,
         interactionType: interactionType,
         notes: notes,
         location: location,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [Interaction]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  Interaction copyWith({
    Object? id = _Undefined,
    int? contactId,
    int? userId,
    DateTime? interactionDate,
    String? interactionType,
    Object? notes = _Undefined,
    Object? location = _Undefined,
    DateTime? createdAt,
  }) {
    return Interaction(
      id: id is int? ? id : this.id,
      contactId: contactId ?? this.contactId,
      userId: userId ?? this.userId,
      interactionDate: interactionDate ?? this.interactionDate,
      interactionType: interactionType ?? this.interactionType,
      notes: notes is String? ? notes : this.notes,
      location: location is String? ? location : this.location,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}
