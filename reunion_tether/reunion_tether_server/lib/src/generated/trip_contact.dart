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

abstract class TripContact
    implements _i1.TableRow<int?>, _i1.ProtocolSerialization {
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

  static final t = TripContactTable();

  static const db = TripContactRepository._();

  @override
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

  @override
  _i1.Table<int?> get table => t;

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
  Map<String, dynamic> toJsonForProtocol() {
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

  static TripContactInclude include() {
    return TripContactInclude._();
  }

  static TripContactIncludeList includeList({
    _i1.WhereExpressionBuilder<TripContactTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<TripContactTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<TripContactTable>? orderByList,
    TripContactInclude? include,
  }) {
    return TripContactIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(TripContact.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(TripContact.t),
      include: include,
    );
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

class TripContactUpdateTable extends _i1.UpdateTable<TripContactTable> {
  TripContactUpdateTable(super.table);

  _i1.ColumnValue<int, int> tripId(int value) => _i1.ColumnValue(
    table.tripId,
    value,
  );

  _i1.ColumnValue<int, int> contactId(int value) => _i1.ColumnValue(
    table.contactId,
    value,
  );

  _i1.ColumnValue<bool, bool> isConfirmed(bool value) => _i1.ColumnValue(
    table.isConfirmed,
    value,
  );

  _i1.ColumnValue<DateTime, DateTime> plannedMeetupDate(DateTime? value) =>
      _i1.ColumnValue(
        table.plannedMeetupDate,
        value,
      );

  _i1.ColumnValue<String, String> meetupLocation(String? value) =>
      _i1.ColumnValue(
        table.meetupLocation,
        value,
      );
}

class TripContactTable extends _i1.Table<int?> {
  TripContactTable({super.tableRelation}) : super(tableName: 'trip_contact') {
    updateTable = TripContactUpdateTable(this);
    tripId = _i1.ColumnInt(
      'tripId',
      this,
    );
    contactId = _i1.ColumnInt(
      'contactId',
      this,
    );
    isConfirmed = _i1.ColumnBool(
      'isConfirmed',
      this,
    );
    plannedMeetupDate = _i1.ColumnDateTime(
      'plannedMeetupDate',
      this,
    );
    meetupLocation = _i1.ColumnString(
      'meetupLocation',
      this,
    );
  }

  late final TripContactUpdateTable updateTable;

  /// The trip ID
  late final _i1.ColumnInt tripId;

  /// The contact ID
  late final _i1.ColumnInt contactId;

  /// Whether visit is confirmed
  late final _i1.ColumnBool isConfirmed;

  /// Planned meetup date/time
  late final _i1.ColumnDateTime plannedMeetupDate;

  /// Meetup location
  late final _i1.ColumnString meetupLocation;

  @override
  List<_i1.Column> get columns => [
    id,
    tripId,
    contactId,
    isConfirmed,
    plannedMeetupDate,
    meetupLocation,
  ];
}

class TripContactInclude extends _i1.IncludeObject {
  TripContactInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table<int?> get table => TripContact.t;
}

class TripContactIncludeList extends _i1.IncludeList {
  TripContactIncludeList._({
    _i1.WhereExpressionBuilder<TripContactTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(TripContact.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table<int?> get table => TripContact.t;
}

class TripContactRepository {
  const TripContactRepository._();

  /// Returns a list of [TripContact]s matching the given query parameters.
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
  Future<List<TripContact>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<TripContactTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<TripContactTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<TripContactTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<TripContact>(
      where: where?.call(TripContact.t),
      orderBy: orderBy?.call(TripContact.t),
      orderByList: orderByList?.call(TripContact.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  /// Returns the first matching [TripContact] matching the given query parameters.
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
  Future<TripContact?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<TripContactTable>? where,
    int? offset,
    _i1.OrderByBuilder<TripContactTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<TripContactTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findFirstRow<TripContact>(
      where: where?.call(TripContact.t),
      orderBy: orderBy?.call(TripContact.t),
      orderByList: orderByList?.call(TripContact.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  /// Finds a single [TripContact] by its [id] or null if no such row exists.
  Future<TripContact?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.findById<TripContact>(
      id,
      transaction: transaction,
    );
  }

  /// Inserts all [TripContact]s in the list and returns the inserted rows.
  ///
  /// The returned [TripContact]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  Future<List<TripContact>> insert(
    _i1.Session session,
    List<TripContact> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<TripContact>(
      rows,
      transaction: transaction,
    );
  }

  /// Inserts a single [TripContact] and returns the inserted row.
  ///
  /// The returned [TripContact] will have its `id` field set.
  Future<TripContact> insertRow(
    _i1.Session session,
    TripContact row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<TripContact>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [TripContact]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<TripContact>> update(
    _i1.Session session,
    List<TripContact> rows, {
    _i1.ColumnSelections<TripContactTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<TripContact>(
      rows,
      columns: columns?.call(TripContact.t),
      transaction: transaction,
    );
  }

  /// Updates a single [TripContact]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<TripContact> updateRow(
    _i1.Session session,
    TripContact row, {
    _i1.ColumnSelections<TripContactTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<TripContact>(
      row,
      columns: columns?.call(TripContact.t),
      transaction: transaction,
    );
  }

  /// Updates a single [TripContact] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<TripContact?> updateById(
    _i1.Session session,
    int id, {
    required _i1.ColumnValueListBuilder<TripContactUpdateTable> columnValues,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateById<TripContact>(
      id,
      columnValues: columnValues(TripContact.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [TripContact]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  Future<List<TripContact>> updateWhere(
    _i1.Session session, {
    required _i1.ColumnValueListBuilder<TripContactUpdateTable> columnValues,
    required _i1.WhereExpressionBuilder<TripContactTable> where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<TripContactTable>? orderBy,
    _i1.OrderByListBuilder<TripContactTable>? orderByList,
    bool orderDescending = false,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateWhere<TripContact>(
      columnValues: columnValues(TripContact.t.updateTable),
      where: where(TripContact.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(TripContact.t),
      orderByList: orderByList?.call(TripContact.t),
      orderDescending: orderDescending,
      transaction: transaction,
    );
  }

  /// Deletes all [TripContact]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<TripContact>> delete(
    _i1.Session session,
    List<TripContact> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<TripContact>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [TripContact].
  Future<TripContact> deleteRow(
    _i1.Session session,
    TripContact row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<TripContact>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<TripContact>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<TripContactTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<TripContact>(
      where: where(TripContact.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<TripContactTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<TripContact>(
      where: where?.call(TripContact.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
