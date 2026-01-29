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

abstract class FlightPrice implements _i1.SerializableModel {
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

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
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
