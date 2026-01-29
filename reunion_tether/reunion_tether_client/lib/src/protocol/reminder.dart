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

abstract class Reminder implements _i1.SerializableModel {
  Reminder._({
    this.id,
    required this.userId,
    this.contactId,
    this.tripId,
    required this.reminderType,
    required this.scheduledDate,
    required this.isSent,
    required this.title,
    this.message,
    required this.createdAt,
  });

  factory Reminder({
    int? id,
    required int userId,
    int? contactId,
    int? tripId,
    required String reminderType,
    required DateTime scheduledDate,
    required bool isSent,
    required String title,
    String? message,
    required DateTime createdAt,
  }) = _ReminderImpl;

  factory Reminder.fromJson(Map<String, dynamic> jsonSerialization) {
    return Reminder(
      id: jsonSerialization['id'] as int?,
      userId: jsonSerialization['userId'] as int,
      contactId: jsonSerialization['contactId'] as int?,
      tripId: jsonSerialization['tripId'] as int?,
      reminderType: jsonSerialization['reminderType'] as String,
      scheduledDate: _i1.DateTimeJsonExtension.fromJson(
        jsonSerialization['scheduledDate'],
      ),
      isSent: jsonSerialization['isSent'] as bool,
      title: jsonSerialization['title'] as String,
      message: jsonSerialization['message'] as String?,
      createdAt: _i1.DateTimeJsonExtension.fromJson(
        jsonSerialization['createdAt'],
      ),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  /// The user ID who owns this reminder
  int userId;

  /// The contact ID (if related to a contact)
  int? contactId;

  /// The trip ID (if related to a trip)
  int? tripId;

  /// Type of reminder (birthday, anniversary, connection, trip)
  String reminderType;

  /// Scheduled date/time for the reminder
  DateTime scheduledDate;

  /// Whether the reminder has been sent
  bool isSent;

  /// Title of the reminder
  String title;

  /// Message body
  String? message;

  /// Created timestamp
  DateTime createdAt;

  /// Returns a shallow copy of this [Reminder]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  Reminder copyWith({
    int? id,
    int? userId,
    int? contactId,
    int? tripId,
    String? reminderType,
    DateTime? scheduledDate,
    bool? isSent,
    String? title,
    String? message,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'Reminder',
      if (id != null) 'id': id,
      'userId': userId,
      if (contactId != null) 'contactId': contactId,
      if (tripId != null) 'tripId': tripId,
      'reminderType': reminderType,
      'scheduledDate': scheduledDate.toJson(),
      'isSent': isSent,
      'title': title,
      if (message != null) 'message': message,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ReminderImpl extends Reminder {
  _ReminderImpl({
    int? id,
    required int userId,
    int? contactId,
    int? tripId,
    required String reminderType,
    required DateTime scheduledDate,
    required bool isSent,
    required String title,
    String? message,
    required DateTime createdAt,
  }) : super._(
         id: id,
         userId: userId,
         contactId: contactId,
         tripId: tripId,
         reminderType: reminderType,
         scheduledDate: scheduledDate,
         isSent: isSent,
         title: title,
         message: message,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [Reminder]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  Reminder copyWith({
    Object? id = _Undefined,
    int? userId,
    Object? contactId = _Undefined,
    Object? tripId = _Undefined,
    String? reminderType,
    DateTime? scheduledDate,
    bool? isSent,
    String? title,
    Object? message = _Undefined,
    DateTime? createdAt,
  }) {
    return Reminder(
      id: id is int? ? id : this.id,
      userId: userId ?? this.userId,
      contactId: contactId is int? ? contactId : this.contactId,
      tripId: tripId is int? ? tripId : this.tripId,
      reminderType: reminderType ?? this.reminderType,
      scheduledDate: scheduledDate ?? this.scheduledDate,
      isSent: isSent ?? this.isSent,
      title: title ?? this.title,
      message: message is String? ? message : this.message,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}
