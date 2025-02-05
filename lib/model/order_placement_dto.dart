//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of gokarla;

class OrderPlacementDTO {
  /// Returns a new [OrderPlacementDTO] instance.
  OrderPlacementDTO({
    required this.orderNumber,
    this.orderName,
    this.orderPlacedAt,
    this.totalOrderPrice,
    this.shippingPrice,
    this.subTotalPrice,
    this.discountPrice = 0,
    this.products = const [],
    this.discounts = const [],
    this.emailId,
    required this.address,
    this.currency = 'EUR',
    this.segments = const [],
    this.weight,
    required this.externalId,
    this.userAgent,
    this.orderAnalytics = {},
    this.expectedNumberOfShipments = 1,
  });

  /// Opinionated numeric identification of the order
  String orderNumber;

  /// Opinionated name of the order
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? orderName;

  /// Date the order was placed. Will take current time if not provided
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? orderPlacedAt;

  /// Total price of the order
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? totalOrderPrice;

  /// Total shipping price of the order
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? shippingPrice;

  /// Subtotal price of items before shipping and discounts
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? subTotalPrice;

  /// Total price of all the accumulated discounts
  num discountPrice;

  /// Line items for the order
  List<ProductDTO> products;

  /// Discounts applied to the order
  List<OrderDiscountDTO> discounts;

  /// Email address of the customer
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? emailId;

  /// Shipment delivery address
  AddressWithZipCodeDTO address;

  /// ISO 4217 currency code (default to 'EUR')
  String currency;

  /// The segments to which the user of the order belongs
  List<String> segments;

  /// Total weight of the order in grams
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? weight;

  /// External identifier of the order as defined by the merchant shop system (e.g. shopify's order id)
  String externalId;

  /// User agent of the customer
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? userAgent;

  /// Analytics information related to the order. This information is not used for any computation, but can be used to track the order in the merchant's analytics system.
  Object orderAnalytics;

  /// Expected number of shipments for the order (defaults to 1)
  ///
  /// Maximum value: 100
  int expectedNumberOfShipments;

  @override
  bool operator ==(Object other) => identical(this, other) || other is OrderPlacementDTO &&
    other.orderNumber == orderNumber &&
    other.orderName == orderName &&
    other.orderPlacedAt == orderPlacedAt &&
    other.totalOrderPrice == totalOrderPrice &&
    other.shippingPrice == shippingPrice &&
    other.subTotalPrice == subTotalPrice &&
    other.discountPrice == discountPrice &&
    _deepEquality.equals(other.products, products) &&
    _deepEquality.equals(other.discounts, discounts) &&
    other.emailId == emailId &&
    other.address == address &&
    other.currency == currency &&
    _deepEquality.equals(other.segments, segments) &&
    other.weight == weight &&
    other.externalId == externalId &&
    other.userAgent == userAgent &&
    other.orderAnalytics == orderAnalytics &&
    other.expectedNumberOfShipments == expectedNumberOfShipments;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (orderNumber.hashCode) +
    (orderName == null ? 0 : orderName!.hashCode) +
    (orderPlacedAt == null ? 0 : orderPlacedAt!.hashCode) +
    (totalOrderPrice == null ? 0 : totalOrderPrice!.hashCode) +
    (shippingPrice == null ? 0 : shippingPrice!.hashCode) +
    (subTotalPrice == null ? 0 : subTotalPrice!.hashCode) +
    (discountPrice.hashCode) +
    (products.hashCode) +
    (discounts.hashCode) +
    (emailId == null ? 0 : emailId!.hashCode) +
    (address.hashCode) +
    (currency.hashCode) +
    (segments.hashCode) +
    (weight == null ? 0 : weight!.hashCode) +
    (externalId.hashCode) +
    (userAgent == null ? 0 : userAgent!.hashCode) +
    (orderAnalytics.hashCode) +
    (expectedNumberOfShipments.hashCode);

  @override
  String toString() => 'OrderPlacementDTO[orderNumber=$orderNumber, orderName=$orderName, orderPlacedAt=$orderPlacedAt, totalOrderPrice=$totalOrderPrice, shippingPrice=$shippingPrice, subTotalPrice=$subTotalPrice, discountPrice=$discountPrice, products=$products, discounts=$discounts, emailId=$emailId, address=$address, currency=$currency, segments=$segments, weight=$weight, externalId=$externalId, userAgent=$userAgent, orderAnalytics=$orderAnalytics, expectedNumberOfShipments=$expectedNumberOfShipments]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'order_number'] = this.orderNumber;
    if (this.orderName != null) {
      json[r'order_name'] = this.orderName;
    } else {
      json[r'order_name'] = null;
    }
    if (this.orderPlacedAt != null) {
      json[r'order_placed_at'] = this.orderPlacedAt!.toUtc().toIso8601String();
    } else {
      json[r'order_placed_at'] = null;
    }
    if (this.totalOrderPrice != null) {
      json[r'total_order_price'] = this.totalOrderPrice;
    } else {
      json[r'total_order_price'] = null;
    }
    if (this.shippingPrice != null) {
      json[r'shipping_price'] = this.shippingPrice;
    } else {
      json[r'shipping_price'] = null;
    }
    if (this.subTotalPrice != null) {
      json[r'sub_total_price'] = this.subTotalPrice;
    } else {
      json[r'sub_total_price'] = null;
    }
      json[r'discount_price'] = this.discountPrice;
      json[r'products'] = this.products;
      json[r'discounts'] = this.discounts;
    if (this.emailId != null) {
      json[r'email_id'] = this.emailId;
    } else {
      json[r'email_id'] = null;
    }
      json[r'address'] = this.address;
      json[r'currency'] = this.currency;
      json[r'segments'] = this.segments;
    if (this.weight != null) {
      json[r'weight'] = this.weight;
    } else {
      json[r'weight'] = null;
    }
      json[r'external_id'] = this.externalId;
    if (this.userAgent != null) {
      json[r'user_agent'] = this.userAgent;
    } else {
      json[r'user_agent'] = null;
    }
      json[r'order_analytics'] = this.orderAnalytics;
      json[r'expected_number_of_shipments'] = this.expectedNumberOfShipments;
    return json;
  }

  /// Returns a new [OrderPlacementDTO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static OrderPlacementDTO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "OrderPlacementDTO[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "OrderPlacementDTO[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return OrderPlacementDTO(
        orderNumber: mapValueOfType<String>(json, r'order_number')!,
        orderName: mapValueOfType<String>(json, r'order_name'),
        orderPlacedAt: mapDateTime(json, r'order_placed_at', r''),
        totalOrderPrice: num.parse('${json[r'total_order_price']}'),
        shippingPrice: num.parse('${json[r'shipping_price']}'),
        subTotalPrice: num.parse('${json[r'sub_total_price']}'),
        discountPrice: num.parse('${json[r'discount_price']}'),
        products: ProductDTO.listFromJson(json[r'products']),
        discounts: OrderDiscountDTO.listFromJson(json[r'discounts']),
        emailId: mapValueOfType<String>(json, r'email_id'),
        address: AddressWithZipCodeDTO.fromJson(json[r'address'])!,
        currency: mapValueOfType<String>(json, r'currency') ?? 'EUR',
        segments: json[r'segments'] is Iterable
            ? (json[r'segments'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        weight: num.parse('${json[r'weight']}'),
        externalId: mapValueOfType<String>(json, r'external_id')!,
        userAgent: mapValueOfType<String>(json, r'user_agent'),
        orderAnalytics: mapValueOfType<Object>(json, r'order_analytics') ?? {},
        expectedNumberOfShipments: mapValueOfType<int>(json, r'expected_number_of_shipments') ?? 1,
      );
    }
    return null;
  }

  static List<OrderPlacementDTO> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <OrderPlacementDTO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = OrderPlacementDTO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, OrderPlacementDTO> mapFromJson(dynamic json) {
    final map = <String, OrderPlacementDTO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = OrderPlacementDTO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of OrderPlacementDTO-objects as value to a dart map
  static Map<String, List<OrderPlacementDTO>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<OrderPlacementDTO>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = OrderPlacementDTO.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'order_number',
    'address',
    'external_id',
  };
}

