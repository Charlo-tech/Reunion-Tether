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

abstract class Destination
    implements _i1.TableRow<int?>, _i1.ProtocolSerialization {
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

  static final t = DestinationTable();

  static const db = DestinationRepository._();

  @override
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

  @override
  _i1.Table<int?> get table => t;

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
  Map<String, dynamic> toJsonForProtocol() {
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

  static DestinationInclude include() {
    return DestinationInclude._();
  }

  static DestinationIncludeList includeList({
    _i1.WhereExpressionBuilder<DestinationTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<DestinationTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<DestinationTable>? orderByList,
    DestinationInclude? include,
  }) {
    return DestinationIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Destination.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Destination.t),
      include: include,
    );
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

class DestinationUpdateTable extends _i1.UpdateTable<DestinationTable> {
  DestinationUpdateTable(super.table);

  _i1.ColumnValue<int, int> userId(int value) => _i1.ColumnValue(
    table.userId,
    value,
  );

  _i1.ColumnValue<String, String> city(String value) => _i1.ColumnValue(
    table.city,
    value,
  );

  _i1.ColumnValue<String, String> country(String? value) => _i1.ColumnValue(
    table.country,
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

  _i1.ColumnValue<String, String> notes(String? value) => _i1.ColumnValue(
    table.notes,
    value,
  );

  _i1.ColumnValue<String, String> priority(String? value) => _i1.ColumnValue(
    table.priority,
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

class DestinationTable extends _i1.Table<int?> {
  DestinationTable({super.tableRelation}) : super(tableName: 'destination') {
    updateTable = DestinationUpdateTable(this);
    userId = _i1.ColumnInt(
      'userId',
      this,
    );
    city = _i1.ColumnString(
      'city',
      this,
    );
    country = _i1.ColumnString(
      'country',
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
    notes = _i1.ColumnString(
      'notes',
      this,
    );
    priority = _i1.ColumnString(
      'priority',
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

  late final DestinationUpdateTable updateTable;

  /// The user ID who owns this destination
  late final _i1.ColumnInt userId;

  /// City name
  late final _i1.ColumnString city;

  /// Country or state
  late final _i1.ColumnString country;

  /// Latitude for map display
  late final _i1.ColumnDouble latitude;

  /// Longitude for map display
  late final _i1.ColumnDouble longitude;

  /// Notes about why this destination is interesting
  late final _i1.ColumnString notes;

  /// Priority level (high, medium, low)
  late final _i1.ColumnString priority;

  /// Created timestamp
  late final _i1.ColumnDateTime createdAt;

  /// Updated timestamp
  late final _i1.ColumnDateTime updatedAt;

  @override
  List<_i1.Column> get columns => [
    id,
    userId,
    city,
    country,
    latitude,
    longitude,
    notes,
    priority,
    createdAt,
    updatedAt,
  ];
}

class DestinationInclude extends _i1.IncludeObject {
  DestinationInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table<int?> get table => Destination.t;
}

class DestinationIncludeList extends _i1.IncludeList {
  DestinationIncludeList._({
    _i1.WhereExpressionBuilder<DestinationTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Destination.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table<int?> get table => Destination.t;
}

class DestinationRepository {
  const DestinationRepository._();

  /// Returns a list of [Destination]s matching the given query parameters.
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
  Future<List<Destination>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<DestinationTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<DestinationTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<DestinationTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<Destination>(
      where: where?.call(Destination.t),
      orderBy: orderBy?.call(Destination.t),
      orderByList: orderByList?.call(Destination.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  /// Returns the first matching [Destination] matching the given query parameters.
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
  Future<Destination?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<DestinationTable>? where,
    int? offset,
    _i1.OrderByBuilder<DestinationTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<DestinationTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findFirstRow<Destination>(
      where: where?.call(Destination.t),
      orderBy: orderBy?.call(Destination.t),
      orderByList: orderByList?.call(Destination.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  /// Finds a single [Destination] by its [id] or null if no such row exists.
  Future<Destination?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.findById<Destination>(
      id,
      transaction: transaction,
    );
  }

  /// Inserts all [Destination]s in the list and returns the inserted rows.
  ///
  /// The returned [Destination]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  Future<List<Destination>> insert(
    _i1.Session session,
    List<Destination> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<Destination>(
      rows,
      transaction: transaction,
    );
  }

  /// Inserts a single [Destination] and returns the inserted row.
  ///
  /// The returned [Destination] will have its `id` field set.
  Future<Destination> insertRow(
    _i1.Session session,
    Destination row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<Destination>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [Destination]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<Destination>> update(
    _i1.Session session,
    List<Destination> rows, {
    _i1.ColumnSelections<DestinationTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<Destination>(
      rows,
      columns: columns?.call(Destination.t),
      transaction: transaction,
    );
  }

  /// Updates a single [Destination]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<Destination> updateRow(
    _i1.Session session,
    Destination row, {
    _i1.ColumnSelections<DestinationTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<Destination>(
      row,
      columns: columns?.call(Destination.t),
      transaction: transaction,
    );
  }

  /// Updates a single [Destination] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<Destination?> updateById(
    _i1.Session session,
    int id, {
    required _i1.ColumnValueListBuilder<DestinationUpdateTable> columnValues,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateById<Destination>(
      id,
      columnValues: columnValues(Destination.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [Destination]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  Future<List<Destination>> updateWhere(
    _i1.Session session, {
    required _i1.ColumnValueListBuilder<DestinationUpdateTable> columnValues,
    required _i1.WhereExpressionBuilder<DestinationTable> where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<DestinationTable>? orderBy,
    _i1.OrderByListBuilder<DestinationTable>? orderByList,
    bool orderDescending = false,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateWhere<Destination>(
      columnValues: columnValues(Destination.t.updateTable),
      where: where(Destination.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Destination.t),
      orderByList: orderByList?.call(Destination.t),
      orderDescending: orderDescending,
      transaction: transaction,
    );
  }

  /// Deletes all [Destination]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<Destination>> delete(
    _i1.Session session,
    List<Destination> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Destination>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [Destination].
  Future<Destination> deleteRow(
    _i1.Session session,
    Destination row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<Destination>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<Destination>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<DestinationTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<Destination>(
      where: where(Destination.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<DestinationTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Destination>(
      where: where?.call(Destination.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
