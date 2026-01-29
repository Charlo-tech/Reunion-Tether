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

abstract class Trip implements _i1.TableRow<int?>, _i1.ProtocolSerialization {
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

  static final t = TripTable();

  static const db = TripRepository._();

  @override
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

  @override
  _i1.Table<int?> get table => t;

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
  Map<String, dynamic> toJsonForProtocol() {
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

  static TripInclude include() {
    return TripInclude._();
  }

  static TripIncludeList includeList({
    _i1.WhereExpressionBuilder<TripTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<TripTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<TripTable>? orderByList,
    TripInclude? include,
  }) {
    return TripIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Trip.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Trip.t),
      include: include,
    );
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

class TripUpdateTable extends _i1.UpdateTable<TripTable> {
  TripUpdateTable(super.table);

  _i1.ColumnValue<int, int> userId(int value) => _i1.ColumnValue(
    table.userId,
    value,
  );

  _i1.ColumnValue<String, String> destinationCity(String value) =>
      _i1.ColumnValue(
        table.destinationCity,
        value,
      );

  _i1.ColumnValue<String, String> destinationCountry(String? value) =>
      _i1.ColumnValue(
        table.destinationCountry,
        value,
      );

  _i1.ColumnValue<double, double> latitude(double? value) => _i1.ColumnValue(
    table.latitude,
    value,
  );

  _i1.ColumnValue<double, double> longitude(double? value) => _i1.ColumnValue(
    table.longitude,
    value,
  );

  _i1.ColumnValue<DateTime, DateTime> startDate(DateTime? value) =>
      _i1.ColumnValue(
        table.startDate,
        value,
      );

  _i1.ColumnValue<DateTime, DateTime> endDate(DateTime? value) =>
      _i1.ColumnValue(
        table.endDate,
        value,
      );

  _i1.ColumnValue<String, String> status(String value) => _i1.ColumnValue(
    table.status,
    value,
  );

  _i1.ColumnValue<String, String> notes(String? value) => _i1.ColumnValue(
    table.notes,
    value,
  );

  _i1.ColumnValue<DateTime, DateTime> createdAt(DateTime value) =>
      _i1.ColumnValue(
        table.createdAt,
        value,
      );

  _i1.ColumnValue<DateTime, DateTime> updatedAt(DateTime value) =>
      _i1.ColumnValue(
        table.updatedAt,
        value,
      );
}

class TripTable extends _i1.Table<int?> {
  TripTable({super.tableRelation}) : super(tableName: 'trip') {
    updateTable = TripUpdateTable(this);
    userId = _i1.ColumnInt(
      'userId',
      this,
    );
    destinationCity = _i1.ColumnString(
      'destinationCity',
      this,
    );
    destinationCountry = _i1.ColumnString(
      'destinationCountry',
      this,
    );
    latitude = _i1.ColumnDouble(
      'latitude',
      this,
    );
    longitude = _i1.ColumnDouble(
      'longitude',
      this,
    );
    startDate = _i1.ColumnDateTime(
      'startDate',
      this,
    );
    endDate = _i1.ColumnDateTime(
      'endDate',
      this,
    );
    status = _i1.ColumnString(
      'status',
      this,
    );
    notes = _i1.ColumnString(
      'notes',
      this,
    );
    createdAt = _i1.ColumnDateTime(
      'createdAt',
      this,
    );
    updatedAt = _i1.ColumnDateTime(
      'updatedAt',
      this,
    );
  }

  late final TripUpdateTable updateTable;

  /// The user ID who owns this trip
  late final _i1.ColumnInt userId;

  /// Destination city
  late final _i1.ColumnString destinationCity;

  /// Destination country/state
  late final _i1.ColumnString destinationCountry;

  /// Latitude for map display
  late final _i1.ColumnDouble latitude;

  /// Longitude for map display
  late final _i1.ColumnDouble longitude;

  /// Start date of the trip
  late final _i1.ColumnDateTime startDate;

  /// End date of the trip
  late final _i1.ColumnDateTime endDate;

  /// Trip status (planned, in_progress, completed, cancelled)
  late final _i1.ColumnString status;

  /// Notes about the trip
  late final _i1.ColumnString notes;

  /// Created timestamp
  late final _i1.ColumnDateTime createdAt;

  /// Updated timestamp
  late final _i1.ColumnDateTime updatedAt;

  @override
  List<_i1.Column> get columns => [
    id,
    userId,
    destinationCity,
    destinationCountry,
    latitude,
    longitude,
    startDate,
    endDate,
    status,
    notes,
    createdAt,
    updatedAt,
  ];
}

class TripInclude extends _i1.IncludeObject {
  TripInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table<int?> get table => Trip.t;
}

class TripIncludeList extends _i1.IncludeList {
  TripIncludeList._({
    _i1.WhereExpressionBuilder<TripTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Trip.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table<int?> get table => Trip.t;
}

class TripRepository {
  const TripRepository._();

  /// Returns a list of [Trip]s matching the given query parameters.
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
  Future<List<Trip>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<TripTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<TripTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<TripTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<Trip>(
      where: where?.call(Trip.t),
      orderBy: orderBy?.call(Trip.t),
      orderByList: orderByList?.call(Trip.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  /// Returns the first matching [Trip] matching the given query parameters.
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
  Future<Trip?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<TripTable>? where,
    int? offset,
    _i1.OrderByBuilder<TripTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<TripTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findFirstRow<Trip>(
      where: where?.call(Trip.t),
      orderBy: orderBy?.call(Trip.t),
      orderByList: orderByList?.call(Trip.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  /// Finds a single [Trip] by its [id] or null if no such row exists.
  Future<Trip?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.findById<Trip>(
      id,
      transaction: transaction,
    );
  }

  /// Inserts all [Trip]s in the list and returns the inserted rows.
  ///
  /// The returned [Trip]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  Future<List<Trip>> insert(
    _i1.Session session,
    List<Trip> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<Trip>(
      rows,
      transaction: transaction,
    );
  }

  /// Inserts a single [Trip] and returns the inserted row.
  ///
  /// The returned [Trip] will have its `id` field set.
  Future<Trip> insertRow(
    _i1.Session session,
    Trip row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<Trip>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [Trip]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<Trip>> update(
    _i1.Session session,
    List<Trip> rows, {
    _i1.ColumnSelections<TripTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<Trip>(
      rows,
      columns: columns?.call(Trip.t),
      transaction: transaction,
    );
  }

  /// Updates a single [Trip]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<Trip> updateRow(
    _i1.Session session,
    Trip row, {
    _i1.ColumnSelections<TripTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<Trip>(
      row,
      columns: columns?.call(Trip.t),
      transaction: transaction,
    );
  }

  /// Updates a single [Trip] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<Trip?> updateById(
    _i1.Session session,
    int id, {
    required _i1.ColumnValueListBuilder<TripUpdateTable> columnValues,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateById<Trip>(
      id,
      columnValues: columnValues(Trip.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [Trip]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  Future<List<Trip>> updateWhere(
    _i1.Session session, {
    required _i1.ColumnValueListBuilder<TripUpdateTable> columnValues,
    required _i1.WhereExpressionBuilder<TripTable> where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<TripTable>? orderBy,
    _i1.OrderByListBuilder<TripTable>? orderByList,
    bool orderDescending = false,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateWhere<Trip>(
      columnValues: columnValues(Trip.t.updateTable),
      where: where(Trip.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Trip.t),
      orderByList: orderByList?.call(Trip.t),
      orderDescending: orderDescending,
      transaction: transaction,
    );
  }

  /// Deletes all [Trip]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<Trip>> delete(
    _i1.Session session,
    List<Trip> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Trip>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [Trip].
  Future<Trip> deleteRow(
    _i1.Session session,
    Trip row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<Trip>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<Trip>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<TripTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<Trip>(
      where: where(Trip.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<TripTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Trip>(
      where: where?.call(Trip.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
