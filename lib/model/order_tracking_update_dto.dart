//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of gokarla;

class OrderTrackingUpdateDTO {
  /// Returns a new [OrderTrackingUpdateDTO] instance.
  OrderTrackingUpdateDTO({
    this.trackingUrl,
    this.products = const [],
  });

  /// The tracking URL as it comes from the carrier.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? trackingUrl;

  /// Line items involved in the delivery. Give an empty list to remove all products from the shipment.Any list provided will override the current products in the shipment (there is no merge). Will be skipped from update if not given
  List<ProductDTO> products;

  @override
  bool operator ==(Object other) => identical(this, other) || other is OrderTrackingUpdateDTO &&
    other.trackingUrl == trackingUrl &&
    _deepEquality.equals(other.products, products);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (trackingUrl == null ? 0 : trackingUrl!.hashCode) +
    (products.hashCode);

  @override
  String toString() => 'OrderTrackingUpdateDTO[trackingUrl=$trackingUrl, products=$products]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.trackingUrl != null) {
      json[r'tracking_url'] = this.trackingUrl;
    } else {
      json[r'tracking_url'] = null;
    }
      json[r'products'] = this.products;
    return json;
  }

  /// Returns a new [OrderTrackingUpdateDTO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static OrderTrackingUpdateDTO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "OrderTrackingUpdateDTO[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "OrderTrackingUpdateDTO[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return OrderTrackingUpdateDTO(
        trackingUrl: mapValueOfType<String>(json, r'tracking_url'),
        products: ProductDTO.listFromJson(json[r'products']),
      );
    }
    return null;
  }

  static List<OrderTrackingUpdateDTO> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <OrderTrackingUpdateDTO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = OrderTrackingUpdateDTO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, OrderTrackingUpdateDTO> mapFromJson(dynamic json) {
    final map = <String, OrderTrackingUpdateDTO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = OrderTrackingUpdateDTO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of OrderTrackingUpdateDTO-objects as value to a dart map
  static Map<String, List<OrderTrackingUpdateDTO>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<OrderTrackingUpdateDTO>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = OrderTrackingUpdateDTO.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

