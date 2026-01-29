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

abstract class Itinerary
    implements _i1.TableRow<int?>, _i1.ProtocolSerialization {
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

  static final t = ItineraryTable();

  static const db = ItineraryRepository._();

  @override
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

  @override
  _i1.Table<int?> get table => t;

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
  Map<String, dynamic> toJsonForProtocol() {
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

  static ItineraryInclude include() {
    return ItineraryInclude._();
  }

  static ItineraryIncludeList includeList({
    _i1.WhereExpressionBuilder<ItineraryTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<ItineraryTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ItineraryTable>? orderByList,
    ItineraryInclude? include,
  }) {
    return ItineraryIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Itinerary.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Itinerary.t),
      include: include,
    );
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

class ItineraryUpdateTable extends _i1.UpdateTable<ItineraryTable> {
  ItineraryUpdateTable(super.table);

  _i1.ColumnValue<int, int> tripId(int value) => _i1.ColumnValue(
    table.tripId,
    value,
  );

  _i1.ColumnValue<int, int> dayNumber(int value) => _i1.ColumnValue(
    table.dayNumber,
    value,
  );

  _i1.ColumnValue<DateTime, DateTime> date(DateTime? value) => _i1.ColumnValue(
    table.date,
    value,
  );

  _i1.ColumnValue<String, String> activities(String value) => _i1.ColumnValue(
    table.activities,
    value,
  );

  _i1.ColumnValue<String, String> notes(String? value) => _i1.ColumnValue(
    table.notes,
    value,
  );
}

class ItineraryTable extends _i1.Table<int?> {
  ItineraryTable({super.tableRelation}) : super(tableName: 'itinerary') {
    updateTable = ItineraryUpdateTable(this);
    tripId = _i1.ColumnInt(
      'tripId',
      this,
    );
    dayNumber = _i1.ColumnInt(
      'dayNumber',
      this,
    );
    date = _i1.ColumnDateTime(
      'date',
      this,
    );
    activities = _i1.ColumnString(
      'activities',
      this,
    );
    notes = _i1.ColumnString(
      'notes',
      this,
    );
  }

  late final ItineraryUpdateTable updateTable;

  /// The trip this itinerary belongs to
  late final _i1.ColumnInt tripId;

  /// Day number (1, 2, 3, etc.)
  late final _i1.ColumnInt dayNumber;

  /// Date for this day
  late final _i1.ColumnDateTime date;

  /// Activities planned for this day
  late final _i1.ColumnString activities;

  /// Notes for this day
  late final _i1.ColumnString notes;

  @override
  List<_i1.Column> get columns => [
    id,
    tripId,
    dayNumber,
    date,
    activities,
    notes,
  ];
}

class ItineraryInclude extends _i1.IncludeObject {
  ItineraryInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table<int?> get table => Itinerary.t;
}

class ItineraryIncludeList extends _i1.IncludeList {
  ItineraryIncludeList._({
    _i1.WhereExpressionBuilder<ItineraryTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Itinerary.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table<int?> get table => Itinerary.t;
}

class ItineraryRepository {
  const ItineraryRepository._();

  /// Returns a list of [Itinerary]s matching the given query parameters.
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
  Future<List<Itinerary>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ItineraryTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<ItineraryTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ItineraryTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<Itinerary>(
      where: where?.call(Itinerary.t),
      orderBy: orderBy?.call(Itinerary.t),
      orderByList: orderByList?.call(Itinerary.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  /// Returns the first matching [Itinerary] matching the given query parameters.
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
  Future<Itinerary?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ItineraryTable>? where,
    int? offset,
    _i1.OrderByBuilder<ItineraryTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ItineraryTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findFirstRow<Itinerary>(
      where: where?.call(Itinerary.t),
      orderBy: orderBy?.call(Itinerary.t),
      orderByList: orderByList?.call(Itinerary.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  /// Finds a single [Itinerary] by its [id] or null if no such row exists.
  Future<Itinerary?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.findById<Itinerary>(
      id,
      transaction: transaction,
    );
  }

  /// Inserts all [Itinerary]s in the list and returns the inserted rows.
  ///
  /// The returned [Itinerary]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  Future<List<Itinerary>> insert(
    _i1.Session session,
    List<Itinerary> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<Itinerary>(
      rows,
      transaction: transaction,
    );
  }

  /// Inserts a single [Itinerary] and returns the inserted row.
  ///
  /// The returned [Itinerary] will have its `id` field set.
  Future<Itinerary> insertRow(
    _i1.Session session,
    Itinerary row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<Itinerary>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [Itinerary]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<Itinerary>> update(
    _i1.Session session,
    List<Itinerary> rows, {
    _i1.ColumnSelections<ItineraryTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<Itinerary>(
      rows,
      columns: columns?.call(Itinerary.t),
      transaction: transaction,
    );
  }

  /// Updates a single [Itinerary]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<Itinerary> updateRow(
    _i1.Session session,
    Itinerary row, {
    _i1.ColumnSelections<ItineraryTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<Itinerary>(
      row,
      columns: columns?.call(Itinerary.t),
      transaction: transaction,
    );
  }

  /// Updates a single [Itinerary] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<Itinerary?> updateById(
    _i1.Session session,
    int id, {
    required _i1.ColumnValueListBuilder<ItineraryUpdateTable> columnValues,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateById<Itinerary>(
      id,
      columnValues: columnValues(Itinerary.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [Itinerary]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  Future<List<Itinerary>> updateWhere(
    _i1.Session session, {
    required _i1.ColumnValueListBuilder<ItineraryUpdateTable> columnValues,
    required _i1.WhereExpressionBuilder<ItineraryTable> where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<ItineraryTable>? orderBy,
    _i1.OrderByListBuilder<ItineraryTable>? orderByList,
    bool orderDescending = false,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateWhere<Itinerary>(
      columnValues: columnValues(Itinerary.t.updateTable),
      where: where(Itinerary.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Itinerary.t),
      orderByList: orderByList?.call(Itinerary.t),
      orderDescending: orderDescending,
      transaction: transaction,
    );
  }

  /// Deletes all [Itinerary]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<Itinerary>> delete(
    _i1.Session session,
    List<Itinerary> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Itinerary>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [Itinerary].
  Future<Itinerary> deleteRow(
    _i1.Session session,
    Itinerary row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<Itinerary>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<Itinerary>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<ItineraryTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<Itinerary>(
      where: where(Itinerary.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ItineraryTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Itinerary>(
      where: where?.call(Itinerary.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
