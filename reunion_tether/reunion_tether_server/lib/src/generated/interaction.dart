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

abstract class Interaction
    implements _i1.TableRow<int?>, _i1.ProtocolSerialization {
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

  static final t = InteractionTable();

  static const db = InteractionRepository._();

  @override
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

  @override
  _i1.Table<int?> get table => t;

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
  Map<String, dynamic> toJsonForProtocol() {
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

  static InteractionInclude include() {
    return InteractionInclude._();
  }

  static InteractionIncludeList includeList({
    _i1.WhereExpressionBuilder<InteractionTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<InteractionTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<InteractionTable>? orderByList,
    InteractionInclude? include,
  }) {
    return InteractionIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Interaction.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Interaction.t),
      include: include,
    );
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

class InteractionUpdateTable extends _i1.UpdateTable<InteractionTable> {
  InteractionUpdateTable(super.table);

  _i1.ColumnValue<int, int> contactId(int value) => _i1.ColumnValue(
    table.contactId,
    value,
  );

  _i1.ColumnValue<int, int> userId(int value) => _i1.ColumnValue(
    table.userId,
    value,
  );

  _i1.ColumnValue<DateTime, DateTime> interactionDate(DateTime value) =>
      _i1.ColumnValue(
        table.interactionDate,
        value,
      );

  _i1.ColumnValue<String, String> interactionType(String value) =>
      _i1.ColumnValue(
        table.interactionType,
        value,
      );

  _i1.ColumnValue<String, String> notes(String? value) => _i1.ColumnValue(
    table.notes,
    value,
  );

  _i1.ColumnValue<String, String> location(String? value) => _i1.ColumnValue(
    table.location,
    value,
  );

  _i1.ColumnValue<DateTime, DateTime> createdAt(DateTime value) =>
      _i1.ColumnValue(
        table.createdAt,
        value,
      );
}

class InteractionTable extends _i1.Table<int?> {
  InteractionTable({super.tableRelation}) : super(tableName: 'interaction') {
    updateTable = InteractionUpdateTable(this);
    contactId = _i1.ColumnInt(
      'contactId',
      this,
    );
    userId = _i1.ColumnInt(
      'userId',
      this,
    );
    interactionDate = _i1.ColumnDateTime(
      'interactionDate',
      this,
    );
    interactionType = _i1.ColumnString(
      'interactionType',
      this,
    );
    notes = _i1.ColumnString(
      'notes',
      this,
    );
    location = _i1.ColumnString(
      'location',
      this,
    );
    createdAt = _i1.ColumnDateTime(
      'createdAt',
      this,
    );
  }

  late final InteractionUpdateTable updateTable;

  /// The contact this interaction is with
  late final _i1.ColumnInt contactId;

  /// The user ID who owns this interaction
  late final _i1.ColumnInt userId;

  /// Date of the interaction
  late final _i1.ColumnDateTime interactionDate;

  /// Type of interaction (call, text, email, visit, etc.)
  late final _i1.ColumnString interactionType;

  /// Notes about what was discussed
  late final _i1.ColumnString notes;

  /// Location if it was an in-person meeting
  late final _i1.ColumnString location;

  /// Created timestamp
  late final _i1.ColumnDateTime createdAt;

  @override
  List<_i1.Column> get columns => [
    id,
    contactId,
    userId,
    interactionDate,
    interactionType,
    notes,
    location,
    createdAt,
  ];
}

class InteractionInclude extends _i1.IncludeObject {
  InteractionInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table<int?> get table => Interaction.t;
}

class InteractionIncludeList extends _i1.IncludeList {
  InteractionIncludeList._({
    _i1.WhereExpressionBuilder<InteractionTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Interaction.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table<int?> get table => Interaction.t;
}

class InteractionRepository {
  const InteractionRepository._();

  /// Returns a list of [Interaction]s matching the given query parameters.
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
  Future<List<Interaction>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<InteractionTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<InteractionTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<InteractionTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<Interaction>(
      where: where?.call(Interaction.t),
      orderBy: orderBy?.call(Interaction.t),
      orderByList: orderByList?.call(Interaction.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  /// Returns the first matching [Interaction] matching the given query parameters.
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
  Future<Interaction?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<InteractionTable>? where,
    int? offset,
    _i1.OrderByBuilder<InteractionTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<InteractionTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findFirstRow<Interaction>(
      where: where?.call(Interaction.t),
      orderBy: orderBy?.call(Interaction.t),
      orderByList: orderByList?.call(Interaction.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  /// Finds a single [Interaction] by its [id] or null if no such row exists.
  Future<Interaction?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.findById<Interaction>(
      id,
      transaction: transaction,
    );
  }

  /// Inserts all [Interaction]s in the list and returns the inserted rows.
  ///
  /// The returned [Interaction]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  Future<List<Interaction>> insert(
    _i1.Session session,
    List<Interaction> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<Interaction>(
      rows,
      transaction: transaction,
    );
  }

  /// Inserts a single [Interaction] and returns the inserted row.
  ///
  /// The returned [Interaction] will have its `id` field set.
  Future<Interaction> insertRow(
    _i1.Session session,
    Interaction row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<Interaction>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [Interaction]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<Interaction>> update(
    _i1.Session session,
    List<Interaction> rows, {
    _i1.ColumnSelections<InteractionTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<Interaction>(
      rows,
      columns: columns?.call(Interaction.t),
      transaction: transaction,
    );
  }

  /// Updates a single [Interaction]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<Interaction> updateRow(
    _i1.Session session,
    Interaction row, {
    _i1.ColumnSelections<InteractionTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<Interaction>(
      row,
      columns: columns?.call(Interaction.t),
      transaction: transaction,
    );
  }

  /// Updates a single [Interaction] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<Interaction?> updateById(
    _i1.Session session,
    int id, {
    required _i1.ColumnValueListBuilder<InteractionUpdateTable> columnValues,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateById<Interaction>(
      id,
      columnValues: columnValues(Interaction.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [Interaction]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  Future<List<Interaction>> updateWhere(
    _i1.Session session, {
    required _i1.ColumnValueListBuilder<InteractionUpdateTable> columnValues,
    required _i1.WhereExpressionBuilder<InteractionTable> where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<InteractionTable>? orderBy,
    _i1.OrderByListBuilder<InteractionTable>? orderByList,
    bool orderDescending = false,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateWhere<Interaction>(
      columnValues: columnValues(Interaction.t.updateTable),
      where: where(Interaction.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Interaction.t),
      orderByList: orderByList?.call(Interaction.t),
      orderDescending: orderDescending,
      transaction: transaction,
    );
  }

  /// Deletes all [Interaction]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<Interaction>> delete(
    _i1.Session session,
    List<Interaction> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Interaction>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [Interaction].
  Future<Interaction> deleteRow(
    _i1.Session session,
    Interaction row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<Interaction>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<Interaction>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<InteractionTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<Interaction>(
      where: where(Interaction.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<InteractionTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Interaction>(
      where: where?.call(Interaction.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
