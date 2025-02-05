//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of gokarla;

class OrderTrackingDTO {
  /// Returns a new [OrderTrackingDTO] instance.
  OrderTrackingDTO({
    required this.trackingNumber,
    this.trackingUrl,
    this.trackingPlacedAt,
    this.carrierReference,
    this.externalShipmentId,
    this.products = const [],
  });

  /// Tracking code
  String trackingNumber;

  /// The tracking URL as it comes from the carrier.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? trackingUrl;

  /// Date the fulfillment was placed. Will take current time if not provided
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? trackingPlacedAt;

  /// Carrier reference name
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? carrierReference;

  /// External shipment ID (for instance, shopify's fulfillment id)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? externalShipmentId;

  /// Line items involved in the delivery. If not provided, all products from the related order will be considered as delivered.
  List<ProductDTO> products;

  @override
  bool operator ==(Object other) => identical(this, other) || other is OrderTrackingDTO &&
    other.trackingNumber == trackingNumber &&
    other.trackingUrl == trackingUrl &&
    other.trackingPlacedAt == trackingPlacedAt &&
    other.carrierReference == carrierReference &&
    other.externalShipmentId == externalShipmentId &&
    _deepEquality.equals(other.products, products);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (trackingNumber.hashCode) +
    (trackingUrl == null ? 0 : trackingUrl!.hashCode) +
    (trackingPlacedAt == null ? 0 : trackingPlacedAt!.hashCode) +
    (carrierReference == null ? 0 : carrierReference!.hashCode) +
    (externalShipmentId == null ? 0 : externalShipmentId!.hashCode) +
    (products.hashCode);

  @override
  String toString() => 'OrderTrackingDTO[trackingNumber=$trackingNumber, trackingUrl=$trackingUrl, trackingPlacedAt=$trackingPlacedAt, carrierReference=$carrierReference, externalShipmentId=$externalShipmentId, products=$products]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'tracking_number'] = this.trackingNumber;
    if (this.trackingUrl != null) {
      json[r'tracking_url'] = this.trackingUrl;
    } else {
      json[r'tracking_url'] = null;
    }
    if (this.trackingPlacedAt != null) {
      json[r'tracking_placed_at'] = this.trackingPlacedAt!.toUtc().toIso8601String();
    } else {
      json[r'tracking_placed_at'] = null;
    }
    if (this.carrierReference != null) {
      json[r'carrier_reference'] = this.carrierReference;
    } else {
      json[r'carrier_reference'] = null;
    }
    if (this.externalShipmentId != null) {
      json[r'external_shipment_id'] = this.externalShipmentId;
    } else {
      json[r'external_shipment_id'] = null;
    }
      json[r'products'] = this.products;
    return json;
  }

  /// Returns a new [OrderTrackingDTO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static OrderTrackingDTO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "OrderTrackingDTO[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "OrderTrackingDTO[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return OrderTrackingDTO(
        trackingNumber: mapValueOfType<String>(json, r'tracking_number')!,
        trackingUrl: mapValueOfType<String>(json, r'tracking_url'),
        trackingPlacedAt: mapDateTime(json, r'tracking_placed_at', r''),
        carrierReference: mapValueOfType<String>(json, r'carrier_reference'),
        externalShipmentId: mapValueOfType<String>(json, r'external_shipment_id'),
        products: ProductDTO.listFromJson(json[r'products']),
      );
    }
    return null;
  }

  static List<OrderTrackingDTO> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <OrderTrackingDTO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = OrderTrackingDTO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, OrderTrackingDTO> mapFromJson(dynamic json) {
    final map = <String, OrderTrackingDTO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = OrderTrackingDTO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of OrderTrackingDTO-objects as value to a dart map
  static Map<String, List<OrderTrackingDTO>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<OrderTrackingDTO>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = OrderTrackingDTO.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'tracking_number',
  };
}

