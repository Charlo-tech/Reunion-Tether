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
import 'package:serverpod/serverpod.dart' as _i1;

abstract class Reminder
    implements _i1.TableRow<int?>, _i1.ProtocolSerialization {
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

  static final t = ReminderTable();

  static const db = ReminderRepository._();

  @override
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

  @override
  _i1.Table<int?> get table => t;

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
  Map<String, dynamic> toJsonForProtocol() {
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

  static ReminderInclude include() {
    return ReminderInclude._();
  }

  static ReminderIncludeList includeList({
    _i1.WhereExpressionBuilder<ReminderTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<ReminderTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ReminderTable>? orderByList,
    ReminderInclude? include,
  }) {
    return ReminderIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Reminder.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Reminder.t),
      include: include,
    );
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

class ReminderUpdateTable extends _i1.UpdateTable<ReminderTable> {
  ReminderUpdateTable(super.table);

  _i1.ColumnValue<int, int> userId(int value) => _i1.ColumnValue(
    table.userId,
    value,
  );

  _i1.ColumnValue<int, int> contactId(int? value) => _i1.ColumnValue(
    table.contactId,
    value,
  );

  _i1.ColumnValue<int, int> tripId(int? value) => _i1.ColumnValue(
    table.tripId,
    value,
  );

  _i1.ColumnValue<String, String> reminderType(String value) => _i1.ColumnValue(
    table.reminderType,
    value,
  );

  _i1.ColumnValue<DateTime, DateTime> scheduledDate(DateTime value) =>
      _i1.ColumnValue(
        table.scheduledDate,
        value,
      );

  _i1.ColumnValue<bool, bool> isSent(bool value) => _i1.ColumnValue(
    table.isSent,
    value,
  );

  _i1.ColumnValue<String, String> title(String value) => _i1.ColumnValue(
    table.title,
    value,
  );

  _i1.ColumnValue<String, String> message(String? value) => _i1.ColumnValue(
    table.message,
    value,
  );

  _i1.ColumnValue<DateTime, DateTime> createdAt(DateTime value) =>
      _i1.ColumnValue(
        table.createdAt,
        value,
      );
}

class ReminderTable extends _i1.Table<int?> {
  ReminderTable({super.tableRelation}) : super(tableName: 'reminder') {
    updateTable = ReminderUpdateTable(this);
    userId = _i1.ColumnInt(
      'userId',
      this,
    );
    contactId = _i1.ColumnInt(
      'contactId',
      this,
    );
    tripId = _i1.ColumnInt(
      'tripId',
      this,
    );
    reminderType = _i1.ColumnString(
      'reminderType',
      this,
    );
    scheduledDate = _i1.ColumnDateTime(
      'scheduledDate',
      this,
    );
    isSent = _i1.ColumnBool(
      'isSent',
      this,
    );
    title = _i1.ColumnString(
      'title',
      this,
    );
    message = _i1.ColumnString(
      'message',
      this,
    );
    createdAt = _i1.ColumnDateTime(
      'createdAt',
      this,
    );
  }

  late final ReminderUpdateTable updateTable;

  /// The user ID who owns this reminder
  late final _i1.ColumnInt userId;

  /// The contact ID (if related to a contact)
  late final _i1.ColumnInt contactId;

  /// The trip ID (if related to a trip)
  late final _i1.ColumnInt tripId;

  /// Type of reminder (birthday, anniversary, connection, trip)
  late final _i1.ColumnString reminderType;

  /// Scheduled date/time for the reminder
  late final _i1.ColumnDateTime scheduledDate;

  /// Whether the reminder has been sent
  late final _i1.ColumnBool isSent;

  /// Title of the reminder
  late final _i1.ColumnString title;

  /// Message body
  late final _i1.ColumnString message;

  /// Created timestamp
  late final _i1.ColumnDateTime createdAt;

  @override
  List<_i1.Column> get columns => [
    id,
    userId,
    contactId,
    tripId,
    reminderType,
    scheduledDate,
    isSent,
    title,
    message,
    createdAt,
  ];
}

class ReminderInclude extends _i1.IncludeObject {
  ReminderInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table<int?> get table => Reminder.t;
}

class ReminderIncludeList extends _i1.IncludeList {
  ReminderIncludeList._({
    _i1.WhereExpressionBuilder<ReminderTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Reminder.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table<int?> get table => Reminder.t;
}

class ReminderRepository {
  const ReminderRepository._();

  /// Returns a list of [Reminder]s matching the given query parameters.
  ///
  /// Use [where] to specify which items to include in the return value.
  /// If none is specified, all items will be returned.
  ///
  /// To specify the order of the items use [orderBy] or [orderByList]
  /// when sorting by multiple columns.
  ///
  /// The maximum number of items can be set by [limit]. If no limit is set,
  /// all items matching the query will be returned.
  ///
  /// [offset] defines how many items to skip, after which [limit] (or all)
  /// items are read from the database.
  ///
  /// ```dart
  /// var persons = await Persons.db.find(
  ///   session,
  ///   where: (t) => t.lastName.equals('Jones'),
  ///   orderBy: (t) => t.firstName,
  ///   limit: 100,
  /// );
  /// ```
  Future<List<Reminder>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ReminderTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<ReminderTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ReminderTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<Reminder>(
      where: where?.call(Reminder.t),
      orderBy: orderBy?.call(Reminder.t),
      orderByList: orderByList?.call(Reminder.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  /// Returns the first matching [Reminder] matching the given query parameters.
  ///
  /// Use [where] to specify which items to include in the return value.
  /// If none is specified, all items will be returned.
  ///
  /// To specify the order use [orderBy] or [orderByList]
  /// when sorting by multiple columns.
  ///
  /// [offset] defines how many items to skip, after which the next one will be picked.
  ///
  /// ```dart
  /// var youngestPerson = await Persons.db.findFirstRow(
  ///   session,
  ///   where: (t) => t.lastName.equals('Jones'),
  ///   orderBy: (t) => t.age,
  /// );
  /// ```
  Future<Reminder?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ReminderTable>? where,
    int? offset,
    _i1.OrderByBuilder<ReminderTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ReminderTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findFirstRow<Reminder>(
      where: where?.call(Reminder.t),
      orderBy: orderBy?.call(Reminder.t),
      orderByList: orderByList?.call(Reminder.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  /// Finds a single [Reminder] by its [id] or null if no such row exists.
  Future<Reminder?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.findById<Reminder>(
      id,
      transaction: transaction,
    );
  }

  /// Inserts all [Reminder]s in the list and returns the inserted rows.
  ///
  /// The returned [Reminder]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  Future<List<Reminder>> insert(
    _i1.Session session,
    List<Reminder> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<Reminder>(
      rows,
      transaction: transaction,
    );
  }

  /// Inserts a single [Reminder] and returns the inserted row.
  ///
  /// The returned [Reminder] will have its `id` field set.
  Future<Reminder> insertRow(
    _i1.Session session,
    Reminder row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<Reminder>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [Reminder]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<Reminder>> update(
    _i1.Session session,
    List<Reminder> rows, {
    _i1.ColumnSelections<ReminderTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<Reminder>(
      rows,
      columns: columns?.call(Reminder.t),
      transaction: transaction,
    );
  }

  /// Updates a single [Reminder]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<Reminder> updateRow(
    _i1.Session session,
    Reminder row, {
    _i1.ColumnSelections<ReminderTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<Reminder>(
      row,
      columns: columns?.call(Reminder.t),
      transaction: transaction,
    );
  }

  /// Updates a single [Reminder] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<Reminder?> updateById(
    _i1.Session session,
    int id, {
    required _i1.ColumnValueListBuilder<ReminderUpdateTable> columnValues,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateById<Reminder>(
      id,
      columnValues: columnValues(Reminder.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [Reminder]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  Future<List<Reminder>> updateWhere(
    _i1.Session session, {
    required _i1.ColumnValueListBuilder<ReminderUpdateTable> columnValues,
    required _i1.WhereExpressionBuilder<ReminderTable> where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<ReminderTable>? orderBy,
    _i1.OrderByListBuilder<ReminderTable>? orderByList,
    bool orderDescending = false,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateWhere<Reminder>(
      columnValues: columnValues(Reminder.t.updateTable),
      where: where(Reminder.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Reminder.t),
      orderByList: orderByList?.call(Reminder.t),
      orderDescending: orderDescending,
      transaction: transaction,
    );
  }

  /// Deletes all [Reminder]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<Reminder>> delete(
    _i1.Session session,
    List<Reminder> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Reminder>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [Reminder].
  Future<Reminder> deleteRow(
    _i1.Session session,
    Reminder row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<Reminder>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<Reminder>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<ReminderTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<Reminder>(
      where: where(Reminder.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ReminderTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Reminder>(
      where: where?.call(Reminder.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
