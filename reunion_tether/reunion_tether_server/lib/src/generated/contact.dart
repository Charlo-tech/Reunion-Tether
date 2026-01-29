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

abstract class Contact
    implements _i1.TableRow<int?>, _i1.ProtocolSerialization {
  Contact._({
    this.id,
    required this.userId,
    required this.name,
    required this.relationshipType,
    this.location,
    this.latitude,
    this.longitude,
    this.birthday,
    this.anniversary,
    this.lastMeetup,
    this.notes,
    this.conversationTopics,
    this.preferredContactMethod,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Contact({
    int? id,
    required int userId,
    required String name,
    required String relationshipType,
    String? location,
    double? latitude,
    double? longitude,
    DateTime? birthday,
    DateTime? anniversary,
    DateTime? lastMeetup,
    String? notes,
    String? conversationTopics,
    String? preferredContactMethod,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _ContactImpl;

  factory Contact.fromJson(Map<String, dynamic> jsonSerialization) {
    return Contact(
      id: jsonSerialization['id'] as int?,
      userId: jsonSerialization['userId'] as int,
      name: jsonSerialization['name'] as String,
      relationshipType: jsonSerialization['relationshipType'] as String,
      location: jsonSerialization['location'] as String?,
      latitude: (jsonSerialization['latitude'] as num?)?.toDouble(),
      longitude: (jsonSerialization['longitude'] as num?)?.toDouble(),
      birthday: jsonSerialization['birthday'] == null
          ? null
          : _i1.DateTimeJsonExtension.fromJson(jsonSerialization['birthday']),
      anniversary: jsonSerialization['anniversary'] == null
          ? null
          : _i1.DateTimeJsonExtension.fromJson(
              jsonSerialization['anniversary'],
            ),
      lastMeetup: jsonSerialization['lastMeetup'] == null
          ? null
          : _i1.DateTimeJsonExtension.fromJson(jsonSerialization['lastMeetup']),
      notes: jsonSerialization['notes'] as String?,
      conversationTopics: jsonSerialization['conversationTopics'] as String?,
      preferredContactMethod:
          jsonSerialization['preferredContactMethod'] as String?,
      createdAt: _i1.DateTimeJsonExtension.fromJson(
        jsonSerialization['createdAt'],
      ),
      updatedAt: _i1.DateTimeJsonExtension.fromJson(
        jsonSerialization['updatedAt'],
      ),
    );
  }

  static final t = ContactTable();

  static const db = ContactRepository._();

  @override
  int? id;

  /// The user ID who owns this contact
  int userId;

  /// Full name of the contact
  String name;

  /// Relationship type (family, close_friend, acquaintance)
  String relationshipType;

  /// Primary location (city, state/country)
  String? location;

  /// Latitude for map display
  double? latitude;

  /// Longitude for map display
  double? longitude;

  /// Birthday (month and day)
  DateTime? birthday;

  /// Anniversary date
  DateTime? anniversary;

  /// Last time user met/interacted with this contact
  DateTime? lastMeetup;

  /// Personal notes about the contact
  String? notes;

  /// Conversation topics to remember
  String? conversationTopics;

  /// Preferred contact method
  String? preferredContactMethod;

  /// Created timestamp
  DateTime createdAt;

  /// Updated timestamp
  DateTime updatedAt;

  @override
  _i1.Table<int?> get table => t;

  /// Returns a shallow copy of this [Contact]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  Contact copyWith({
    int? id,
    int? userId,
    String? name,
    String? relationshipType,
    String? location,
    double? latitude,
    double? longitude,
    DateTime? birthday,
    DateTime? anniversary,
    DateTime? lastMeetup,
    String? notes,
    String? conversationTopics,
    String? preferredContactMethod,
    DateTime? createdAt,
    DateTime? updatedAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'Contact',
      if (id != null) 'id': id,
      'userId': userId,
      'name': name,
      'relationshipType': relationshipType,
      if (location != null) 'location': location,
      if (latitude != null) 'latitude': latitude,
      if (longitude != null) 'longitude': longitude,
      if (birthday != null) 'birthday': birthday?.toJson(),
      if (anniversary != null) 'anniversary': anniversary?.toJson(),
      if (lastMeetup != null) 'lastMeetup': lastMeetup?.toJson(),
      if (notes != null) 'notes': notes,
      if (conversationTopics != null) 'conversationTopics': conversationTopics,
      if (preferredContactMethod != null)
        'preferredContactMethod': preferredContactMethod,
      'createdAt': createdAt.toJson(),
      'updatedAt': updatedAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'Contact',
      if (id != null) 'id': id,
      'userId': userId,
      'name': name,
      'relationshipType': relationshipType,
      if (location != null) 'location': location,
      if (latitude != null) 'latitude': latitude,
      if (longitude != null) 'longitude': longitude,
      if (birthday != null) 'birthday': birthday?.toJson(),
      if (anniversary != null) 'anniversary': anniversary?.toJson(),
      if (lastMeetup != null) 'lastMeetup': lastMeetup?.toJson(),
      if (notes != null) 'notes': notes,
      if (conversationTopics != null) 'conversationTopics': conversationTopics,
      if (preferredContactMethod != null)
        'preferredContactMethod': preferredContactMethod,
      'createdAt': createdAt.toJson(),
      'updatedAt': updatedAt.toJson(),
    };
  }

  static ContactInclude include() {
    return ContactInclude._();
  }

  static ContactIncludeList includeList({
    _i1.WhereExpressionBuilder<ContactTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<ContactTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ContactTable>? orderByList,
    ContactInclude? include,
  }) {
    return ContactIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Contact.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Contact.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ContactImpl extends Contact {
  _ContactImpl({
    int? id,
    required int userId,
    required String name,
    required String relationshipType,
    String? location,
    double? latitude,
    double? longitude,
    DateTime? birthday,
    DateTime? anniversary,
    DateTime? lastMeetup,
    String? notes,
    String? conversationTopics,
    String? preferredContactMethod,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) : super._(
         id: id,
         userId: userId,
         name: name,
         relationshipType: relationshipType,
         location: location,
         latitude: latitude,
         longitude: longitude,
         birthday: birthday,
         anniversary: anniversary,
         lastMeetup: lastMeetup,
         notes: notes,
         conversationTopics: conversationTopics,
         preferredContactMethod: preferredContactMethod,
         createdAt: createdAt,
         updatedAt: updatedAt,
       );

  /// Returns a shallow copy of this [Contact]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  Contact copyWith({
    Object? id = _Undefined,
    int? userId,
    String? name,
    String? relationshipType,
    Object? location = _Undefined,
    Object? latitude = _Undefined,
    Object? longitude = _Undefined,
    Object? birthday = _Undefined,
    Object? anniversary = _Undefined,
    Object? lastMeetup = _Undefined,
    Object? notes = _Undefined,
    Object? conversationTopics = _Undefined,
    Object? preferredContactMethod = _Undefined,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return Contact(
      id: id is int? ? id : this.id,
      userId: userId ?? this.userId,
      name: name ?? this.name,
      relationshipType: relationshipType ?? this.relationshipType,
      location: location is String? ? location : this.location,
      latitude: latitude is double? ? latitude : this.latitude,
      longitude: longitude is double? ? longitude : this.longitude,
      birthday: birthday is DateTime? ? birthday : this.birthday,
      anniversary: anniversary is DateTime? ? anniversary : this.anniversary,
      lastMeetup: lastMeetup is DateTime? ? lastMeetup : this.lastMeetup,
      notes: notes is String? ? notes : this.notes,
      conversationTopics: conversationTopics is String?
          ? conversationTopics
          : this.conversationTopics,
      preferredContactMethod: preferredContactMethod is String?
          ? preferredContactMethod
          : this.preferredContactMethod,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}

class ContactUpdateTable extends _i1.UpdateTable<ContactTable> {
  ContactUpdateTable(super.table);

  _i1.ColumnValue<int, int> userId(int value) => _i1.ColumnValue(
    table.userId,
    value,
  );

  _i1.ColumnValue<String, String> name(String value) => _i1.ColumnValue(
    table.name,
    value,
  );

  _i1.ColumnValue<String, String> relationshipType(String value) =>
      _i1.ColumnValue(
        table.relationshipType,
        value,
      );

  _i1.ColumnValue<String, String> location(String? value) => _i1.ColumnValue(
    table.location,
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

  _i1.ColumnValue<DateTime, DateTime> birthday(DateTime? value) =>
      _i1.ColumnValue(
        table.birthday,
        value,
      );

  _i1.ColumnValue<DateTime, DateTime> anniversary(DateTime? value) =>
      _i1.ColumnValue(
        table.anniversary,
        value,
      );

  _i1.ColumnValue<DateTime, DateTime> lastMeetup(DateTime? value) =>
      _i1.ColumnValue(
        table.lastMeetup,
        value,
      );

  _i1.ColumnValue<String, String> notes(String? value) => _i1.ColumnValue(
    table.notes,
    value,
  );

  _i1.ColumnValue<String, String> conversationTopics(String? value) =>
      _i1.ColumnValue(
        table.conversationTopics,
        value,
      );

  _i1.ColumnValue<String, String> preferredContactMethod(String? value) =>
      _i1.ColumnValue(
        table.preferredContactMethod,
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

class ContactTable extends _i1.Table<int?> {
  ContactTable({super.tableRelation}) : super(tableName: 'contact') {
    updateTable = ContactUpdateTable(this);
    userId = _i1.ColumnInt(
      'userId',
      this,
    );
    name = _i1.ColumnString(
      'name',
      this,
    );
    relationshipType = _i1.ColumnString(
      'relationshipType',
      this,
    );
    location = _i1.ColumnString(
      'location',
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
    birthday = _i1.ColumnDateTime(
      'birthday',
      this,
    );
    anniversary = _i1.ColumnDateTime(
      'anniversary',
      this,
    );
    lastMeetup = _i1.ColumnDateTime(
      'lastMeetup',
      this,
    );
    notes = _i1.ColumnString(
      'notes',
      this,
    );
    conversationTopics = _i1.ColumnString(
      'conversationTopics',
      this,
    );
    preferredContactMethod = _i1.ColumnString(
      'preferredContactMethod',
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

  late final ContactUpdateTable updateTable;

  /// The user ID who owns this contact
  late final _i1.ColumnInt userId;

  /// Full name of the contact
  late final _i1.ColumnString name;

  /// Relationship type (family, close_friend, acquaintance)
  late final _i1.ColumnString relationshipType;

  /// Primary location (city, state/country)
  late final _i1.ColumnString location;

  /// Latitude for map display
  late final _i1.ColumnDouble latitude;

  /// Longitude for map display
  late final _i1.ColumnDouble longitude;

  /// Birthday (month and day)
  late final _i1.ColumnDateTime birthday;

  /// Anniversary date
  late final _i1.ColumnDateTime anniversary;

  /// Last time user met/interacted with this contact
  late final _i1.ColumnDateTime lastMeetup;

  /// Personal notes about the contact
  late final _i1.ColumnString notes;

  /// Conversation topics to remember
  late final _i1.ColumnString conversationTopics;

  /// Preferred contact method
  late final _i1.ColumnString preferredContactMethod;

  /// Created timestamp
  late final _i1.ColumnDateTime createdAt;

  /// Updated timestamp
  late final _i1.ColumnDateTime updatedAt;

  @override
  List<_i1.Column> get columns => [
    id,
    userId,
    name,
    relationshipType,
    location,
    latitude,
    longitude,
    birthday,
    anniversary,
    lastMeetup,
    notes,
    conversationTopics,
    preferredContactMethod,
    createdAt,
    updatedAt,
  ];
}

class ContactInclude extends _i1.IncludeObject {
  ContactInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table<int?> get table => Contact.t;
}

class ContactIncludeList extends _i1.IncludeList {
  ContactIncludeList._({
    _i1.WhereExpressionBuilder<ContactTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Contact.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table<int?> get table => Contact.t;
}

class ContactRepository {
  const ContactRepository._();

  /// Returns a list of [Contact]s matching the given query parameters.
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
  Future<List<Contact>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ContactTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<ContactTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ContactTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<Contact>(
      where: where?.call(Contact.t),
      orderBy: orderBy?.call(Contact.t),
      orderByList: orderByList?.call(Contact.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  /// Returns the first matching [Contact] matching the given query parameters.
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
  Future<Contact?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ContactTable>? where,
    int? offset,
    _i1.OrderByBuilder<ContactTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ContactTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findFirstRow<Contact>(
      where: where?.call(Contact.t),
      orderBy: orderBy?.call(Contact.t),
      orderByList: orderByList?.call(Contact.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  /// Finds a single [Contact] by its [id] or null if no such row exists.
  Future<Contact?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.findById<Contact>(
      id,
      transaction: transaction,
    );
  }

  /// Inserts all [Contact]s in the list and returns the inserted rows.
  ///
  /// The returned [Contact]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  Future<List<Contact>> insert(
    _i1.Session session,
    List<Contact> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<Contact>(
      rows,
      transaction: transaction,
    );
  }

  /// Inserts a single [Contact] and returns the inserted row.
  ///
  /// The returned [Contact] will have its `id` field set.
  Future<Contact> insertRow(
    _i1.Session session,
    Contact row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<Contact>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [Contact]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<Contact>> update(
    _i1.Session session,
    List<Contact> rows, {
    _i1.ColumnSelections<ContactTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<Contact>(
      rows,
      columns: columns?.call(Contact.t),
      transaction: transaction,
    );
  }

  /// Updates a single [Contact]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<Contact> updateRow(
    _i1.Session session,
    Contact row, {
    _i1.ColumnSelections<ContactTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<Contact>(
      row,
      columns: columns?.call(Contact.t),
      transaction: transaction,
    );
  }

  /// Updates a single [Contact] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<Contact?> updateById(
    _i1.Session session,
    int id, {
    required _i1.ColumnValueListBuilder<ContactUpdateTable> columnValues,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateById<Contact>(
      id,
      columnValues: columnValues(Contact.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [Contact]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  Future<List<Contact>> updateWhere(
    _i1.Session session, {
    required _i1.ColumnValueListBuilder<ContactUpdateTable> columnValues,
    required _i1.WhereExpressionBuilder<ContactTable> where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<ContactTable>? orderBy,
    _i1.OrderByListBuilder<ContactTable>? orderByList,
    bool orderDescending = false,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateWhere<Contact>(
      columnValues: columnValues(Contact.t.updateTable),
      where: where(Contact.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Contact.t),
      orderByList: orderByList?.call(Contact.t),
      orderDescending: orderDescending,
      transaction: transaction,
    );
  }

  /// Deletes all [Contact]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<Contact>> delete(
    _i1.Session session,
    List<Contact> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Contact>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [Contact].
  Future<Contact> deleteRow(
    _i1.Session session,
    Contact row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<Contact>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<Contact>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<ContactTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<Contact>(
      where: where(Contact.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ContactTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Contact>(
      where: where?.call(Contact.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
