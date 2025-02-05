//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of gokarla;

class TrackingDTO {
  /// Returns a new [TrackingDTO] instance.
  TrackingDTO({
    required this.id,
    required this.merchantId,
    required this.merchantSlug,
    required this.orderId,
    required this.orderNumber,
    this.events = const [],
    this.estimatedArrival,
    this.carrier,
    this.state = StateEnum.transit,
    this.flag = FlagEnum.normal,
    this.pickup,
    this.updatedAt,
    this.products = const [],
  });

  Id id;

  MerchantId merchantId;

  /// Merchant slug identifier
  String merchantSlug;

  OrderId orderId;

  /// Order number communicated to the user by the Merchant
  String orderNumber;

  /// Shipment tracking events
  List<TrackingEventDTO> events;

  /// Expected delivery time information for the given locale
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  TrackingEstimatedArrivalDTO? estimatedArrival;

  /// Carrier data
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  CarrierDTO? carrier;

  /// Karla shipment state
  StateEnum state;

  /// Karla shipment flag
  FlagEnum flag;

  /// Pickup data
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  TrackingPickUpDTO? pickup;

  /// Tracking last updated time
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? updatedAt;

  /// List of shipment products
  List<ProductSchema> products;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TrackingDTO &&
    other.id == id &&
    other.merchantId == merchantId &&
    other.merchantSlug == merchantSlug &&
    other.orderId == orderId &&
    other.orderNumber == orderNumber &&
    _deepEquality.equals(other.events, events) &&
    other.estimatedArrival == estimatedArrival &&
    other.carrier == carrier &&
    other.state == state &&
    other.flag == flag &&
    other.pickup == pickup &&
    other.updatedAt == updatedAt &&
    _deepEquality.equals(other.products, products);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (merchantId.hashCode) +
    (merchantSlug.hashCode) +
    (orderId.hashCode) +
    (orderNumber.hashCode) +
    (events.hashCode) +
    (estimatedArrival == null ? 0 : estimatedArrival!.hashCode) +
    (carrier == null ? 0 : carrier!.hashCode) +
    (state.hashCode) +
    (flag.hashCode) +
    (pickup == null ? 0 : pickup!.hashCode) +
    (updatedAt == null ? 0 : updatedAt!.hashCode) +
    (products.hashCode);

  @override
  String toString() => 'TrackingDTO[id=$id, merchantId=$merchantId, merchantSlug=$merchantSlug, orderId=$orderId, orderNumber=$orderNumber, events=$events, estimatedArrival=$estimatedArrival, carrier=$carrier, state=$state, flag=$flag, pickup=$pickup, updatedAt=$updatedAt, products=$products]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'merchant_id'] = this.merchantId;
      json[r'merchant_slug'] = this.merchantSlug;
      json[r'order_id'] = this.orderId;
      json[r'order_number'] = this.orderNumber;
      json[r'events'] = this.events;
    if (this.estimatedArrival != null) {
      json[r'estimated_arrival'] = this.estimatedArrival;
    } else {
      json[r'estimated_arrival'] = null;
    }
    if (this.carrier != null) {
      json[r'carrier'] = this.carrier;
    } else {
      json[r'carrier'] = null;
    }
      json[r'state'] = this.state;
      json[r'flag'] = this.flag;
    if (this.pickup != null) {
      json[r'pickup'] = this.pickup;
    } else {
      json[r'pickup'] = null;
    }
    if (this.updatedAt != null) {
      json[r'updated_at'] = this.updatedAt!.toUtc().toIso8601String();
    } else {
      json[r'updated_at'] = null;
    }
      json[r'products'] = this.products;
    return json;
  }

  /// Returns a new [TrackingDTO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TrackingDTO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TrackingDTO[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TrackingDTO[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TrackingDTO(
        id: Id.fromJson(json[r'id'])!,
        merchantId: MerchantId.fromJson(json[r'merchant_id'])!,
        merchantSlug: mapValueOfType<String>(json, r'merchant_slug')!,
        orderId: OrderId.fromJson(json[r'order_id'])!,
        orderNumber: mapValueOfType<String>(json, r'order_number')!,
        events: TrackingEventDTO.listFromJson(json[r'events']),
        estimatedArrival: TrackingEstimatedArrivalDTO.fromJson(json[r'estimated_arrival']),
        carrier: CarrierDTO.fromJson(json[r'carrier']),
        state: StateEnum.fromJson(json[r'state']) ?? StateEnum.transit,
        flag: FlagEnum.fromJson(json[r'flag']) ?? FlagEnum.normal,
        pickup: TrackingPickUpDTO.fromJson(json[r'pickup']),
        updatedAt: mapDateTime(json, r'updated_at', r''),
        products: ProductSchema.listFromJson(json[r'products']),
      );
    }
    return null;
  }

  static List<TrackingDTO> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TrackingDTO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TrackingDTO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TrackingDTO> mapFromJson(dynamic json) {
    final map = <String, TrackingDTO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TrackingDTO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TrackingDTO-objects as value to a dart map
  static Map<String, List<TrackingDTO>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TrackingDTO>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TrackingDTO.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'merchant_id',
    'merchant_slug',
    'order_id',
    'order_number',
    'events',
  };
}

