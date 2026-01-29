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

abstract class FlightPrice
    implements _i1.TableRow<int?>, _i1.ProtocolSerialization {
  FlightPrice._({
    this.id,
    required this.userId,
    required this.destinationCity,
    this.destinationCountry,
    required this.originCity,
    required this.price,
    required this.currency,
    required this.observedDate,
    this.source,
    this.notes,
  });

  factory FlightPrice({
    int? id,
    required int userId,
    required String destinationCity,
    String? destinationCountry,
    required String originCity,
    required double price,
    required String currency,
    required DateTime observedDate,
    String? source,
    String? notes,
  }) = _FlightPriceImpl;

  factory FlightPrice.fromJson(Map<String, dynamic> jsonSerialization) {
    return FlightPrice(
      id: jsonSerialization['id'] as int?,
      userId: jsonSerialization['userId'] as int,
      destinationCity: jsonSerialization['destinationCity'] as String,
      destinationCountry: jsonSerialization['destinationCountry'] as String?,
      originCity: jsonSerialization['originCity'] as String,
      price: (jsonSerialization['price'] as num).toDouble(),
      currency: jsonSerialization['currency'] as String,
      observedDate: _i1.DateTimeJsonExtension.fromJson(
        jsonSerialization['observedDate'],
      ),
      source: jsonSerialization['source'] as String?,
      notes: jsonSerialization['notes'] as String?,
    );
  }

  static final t = FlightPriceTable();

  static const db = FlightPriceRepository._();

  @override
  int? id;

  /// The user ID who owns this price record
  int userId;

  /// Destination city
  String destinationCity;

  /// Destination country/state
  String? destinationCountry;

  /// Origin city
  String originCity;

  /// Price observed
  double price;

  /// Currency code (USD, EUR, etc.)
  String currency;

  /// Date when price was observed
  DateTime observedDate;

  /// Airline or source
  String? source;

  /// Notes
  String? notes;

  @override
  _i1.Table<int?> get table => t;

  /// Returns a shallow copy of this [FlightPrice]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  FlightPrice copyWith({
    int? id,
    int? userId,
    String? destinationCity,
    String? destinationCountry,
    String? originCity,
    double? price,
    String? currency,
    DateTime? observedDate,
    String? source,
    String? notes,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'FlightPrice',
      if (id != null) 'id': id,
      'userId': userId,
      'destinationCity': destinationCity,
      if (destinationCountry != null) 'destinationCountry': destinationCountry,
      'originCity': originCity,
      'price': price,
      'currency': currency,
      'observedDate': observedDate.toJson(),
      if (source != null) 'source': source,
      if (notes != null) 'notes': notes,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'FlightPrice',
      if (id != null) 'id': id,
      'userId': userId,
      'destinationCity': destinationCity,
      if (destinationCountry != null) 'destinationCountry': destinationCountry,
      'originCity': originCity,
      'price': price,
      'currency': currency,
      'observedDate': observedDate.toJson(),
      if (source != null) 'source': source,
      if (notes != null) 'notes': notes,
    };
  }

  static FlightPriceInclude include() {
    return FlightPriceInclude._();
  }

  static FlightPriceIncludeList includeList({
    _i1.WhereExpressionBuilder<FlightPriceTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<FlightPriceTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<FlightPriceTable>? orderByList,
    FlightPriceInclude? include,
  }) {
    return FlightPriceIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(FlightPrice.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(FlightPrice.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _FlightPriceImpl extends FlightPrice {
  _FlightPriceImpl({
    int? id,
    required int userId,
    required String destinationCity,
    String? destinationCountry,
    required String originCity,
    required double price,
    required String currency,
    required DateTime observedDate,
    String? source,
    String? notes,
  }) : super._(
         id: id,
         userId: userId,
         destinationCity: destinationCity,
         destinationCountry: destinationCountry,
         originCity: originCity,
         price: price,
         currency: currency,
         observedDate: observedDate,
         source: source,
         notes: notes,
       );

  /// Returns a shallow copy of this [FlightPrice]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  FlightPrice copyWith({
    Object? id = _Undefined,
    int? userId,
    String? destinationCity,
    Object? destinationCountry = _Undefined,
    String? originCity,
    double? price,
    String? currency,
    DateTime? observedDate,
    Object? source = _Undefined,
    Object? notes = _Undefined,
  }) {
    return FlightPrice(
      id: id is int? ? id : this.id,
      userId: userId ?? this.userId,
      destinationCity: destinationCity ?? this.destinationCity,
      destinationCountry: destinationCountry is String?
          ? destinationCountry
          : this.destinationCountry,
      originCity: originCity ?? this.originCity,
      price: price ?? this.price,
      currency: currency ?? this.currency,
      observedDate: observedDate ?? this.observedDate,
      source: source is String? ? source : this.source,
      notes: notes is String? ? notes : this.notes,
    );
  }
}

class FlightPriceUpdateTable extends _i1.UpdateTable<FlightPriceTable> {
  FlightPriceUpdateTable(super.table);

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

  _i1.ColumnValue<String, String> originCity(String value) => _i1.ColumnValue(
    table.originCity,
    value,
  );

  _i1.ColumnValue<double, double> price(double value) => _i1.ColumnValue(
    table.price,
    value,
  );

  _i1.ColumnValue<String, String> currency(String value) => _i1.ColumnValue(
    table.currency,
    value,
  );

  _i1.ColumnValue<DateTime, DateTime> observedDate(DateTime value) =>
      _i1.ColumnValue(
        table.observedDate,
        value,
      );

  _i1.ColumnValue<String, String> source(String? value) => _i1.ColumnValue(
    table.source,
    value,
  );

  _i1.ColumnValue<String, String> notes(String? value) => _i1.ColumnValue(
    table.notes,
    value,
  );
}

class FlightPriceTable extends _i1.Table<int?> {
  FlightPriceTable({super.tableRelation}) : super(tableName: 'flight_price') {
    updateTable = FlightPriceUpdateTable(this);
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
    originCity = _i1.ColumnString(
      'originCity',
      this,
    );
    price = _i1.ColumnDouble(
      'price',
      this,
    );
    currency = _i1.ColumnString(
      'currency',
      this,
    );
    observedDate = _i1.ColumnDateTime(
      'observedDate',
      this,
    );
    source = _i1.ColumnString(
      'source',
      this,
    );
    notes = _i1.ColumnString(
      'notes',
      this,
    );
  }

  late final FlightPriceUpdateTable updateTable;

  /// The user ID who owns this price record
  late final _i1.ColumnInt userId;

  /// Destination city
  late final _i1.ColumnString destinationCity;

  /// Destination country/state
  late final _i1.ColumnString destinationCountry;

  /// Origin city
  late final _i1.ColumnString originCity;

  /// Price observed
  late final _i1.ColumnDouble price;

  /// Currency code (USD, EUR, etc.)
  late final _i1.ColumnString currency;

  /// Date when price was observed
  late final _i1.ColumnDateTime observedDate;

  /// Airline or source
  late final _i1.ColumnString source;

  /// Notes
  late final _i1.ColumnString notes;

  @override
  List<_i1.Column> get columns => [
    id,
    userId,
    destinationCity,
    destinationCountry,
    originCity,
    price,
    currency,
    observedDate,
    source,
    notes,
  ];
}

class FlightPriceInclude extends _i1.IncludeObject {
  FlightPriceInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table<int?> get table => FlightPrice.t;
}

class FlightPriceIncludeList extends _i1.IncludeList {
  FlightPriceIncludeList._({
    _i1.WhereExpressionBuilder<FlightPriceTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(FlightPrice.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table<int?> get table => FlightPrice.t;
}

class FlightPriceRepository {
  const FlightPriceRepository._();

  /// Returns a list of [FlightPrice]s matching the given query parameters.
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
  Future<List<FlightPrice>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<FlightPriceTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<FlightPriceTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<FlightPriceTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<FlightPrice>(
      where: where?.call(FlightPrice.t),
      orderBy: orderBy?.call(FlightPrice.t),
      orderByList: orderByList?.call(FlightPrice.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  /// Returns the first matching [FlightPrice] matching the given query parameters.
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
  Future<FlightPrice?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<FlightPriceTable>? where,
    int? offset,
    _i1.OrderByBuilder<FlightPriceTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<FlightPriceTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findFirstRow<FlightPrice>(
      where: where?.call(FlightPrice.t),
      orderBy: orderBy?.call(FlightPrice.t),
      orderByList: orderByList?.call(FlightPrice.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  /// Finds a single [FlightPrice] by its [id] or null if no such row exists.
  Future<FlightPrice?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.findById<FlightPrice>(
      id,
      transaction: transaction,
    );
  }

  /// Inserts all [FlightPrice]s in the list and returns the inserted rows.
  ///
  /// The returned [FlightPrice]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  Future<List<FlightPrice>> insert(
    _i1.Session session,
    List<FlightPrice> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<FlightPrice>(
      rows,
      transaction: transaction,
    );
  }

  /// Inserts a single [FlightPrice] and returns the inserted row.
  ///
  /// The returned [FlightPrice] will have its `id` field set.
  Future<FlightPrice> insertRow(
    _i1.Session session,
    FlightPrice row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<FlightPrice>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [FlightPrice]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<FlightPrice>> update(
    _i1.Session session,
    List<FlightPrice> rows, {
    _i1.ColumnSelections<FlightPriceTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<FlightPrice>(
      rows,
      columns: columns?.call(FlightPrice.t),
      transaction: transaction,
    );
  }

  /// Updates a single [FlightPrice]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<FlightPrice> updateRow(
    _i1.Session session,
    FlightPrice row, {
    _i1.ColumnSelections<FlightPriceTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<FlightPrice>(
      row,
      columns: columns?.call(FlightPrice.t),
      transaction: transaction,
    );
  }

  /// Updates a single [FlightPrice] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<FlightPrice?> updateById(
    _i1.Session session,
    int id, {
    required _i1.ColumnValueListBuilder<FlightPriceUpdateTable> columnValues,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateById<FlightPrice>(
      id,
      columnValues: columnValues(FlightPrice.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [FlightPrice]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  Future<List<FlightPrice>> updateWhere(
    _i1.Session session, {
    required _i1.ColumnValueListBuilder<FlightPriceUpdateTable> columnValues,
    required _i1.WhereExpressionBuilder<FlightPriceTable> where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<FlightPriceTable>? orderBy,
    _i1.OrderByListBuilder<FlightPriceTable>? orderByList,
    bool orderDescending = false,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateWhere<FlightPrice>(
      columnValues: columnValues(FlightPrice.t.updateTable),
      where: where(FlightPrice.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(FlightPrice.t),
      orderByList: orderByList?.call(FlightPrice.t),
      orderDescending: orderDescending,
      transaction: transaction,
    );
  }

  /// Deletes all [FlightPrice]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<FlightPrice>> delete(
    _i1.Session session,
    List<FlightPrice> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<FlightPrice>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [FlightPrice].
  Future<FlightPrice> deleteRow(
    _i1.Session session,
    FlightPrice row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<FlightPrice>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<FlightPrice>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<FlightPriceTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<FlightPrice>(
      where: where(FlightPrice.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<FlightPriceTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<FlightPrice>(
      where: where?.call(FlightPrice.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
