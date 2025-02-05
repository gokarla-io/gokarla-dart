//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of gokarla;

class OrderFulfillmentDTO {
  /// Returns a new [OrderFulfillmentDTO] instance.
  OrderFulfillmentDTO({
    required this.id,
    this.idType = OrderReferenceType.orderNumber,
    this.order,
    this.trackings = const [],
  });

  /// Order reference whose type is defined by the id_type field
  String id;

  /// Type of order identifier that is passed in the reference field
  OrderReferenceType idType;

  /// Order information (will perform an upsert if provided)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  OrderPlacementDTO? order;

  /// Tracking information relevant to the order (order must exist already if it is not provided)
  List<OrderTrackingDTO> trackings;

  @override
  bool operator ==(Object other) => identical(this, other) || other is OrderFulfillmentDTO &&
    other.id == id &&
    other.idType == idType &&
    other.order == order &&
    _deepEquality.equals(other.trackings, trackings);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (idType.hashCode) +
    (order == null ? 0 : order!.hashCode) +
    (trackings.hashCode);

  @override
  String toString() => 'OrderFulfillmentDTO[id=$id, idType=$idType, order=$order, trackings=$trackings]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'id_type'] = this.idType;
    if (this.order != null) {
      json[r'order'] = this.order;
    } else {
      json[r'order'] = null;
    }
      json[r'trackings'] = this.trackings;
    return json;
  }

  /// Returns a new [OrderFulfillmentDTO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static OrderFulfillmentDTO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "OrderFulfillmentDTO[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "OrderFulfillmentDTO[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return OrderFulfillmentDTO(
        id: mapValueOfType<String>(json, r'id')!,
        idType: OrderReferenceType.fromJson(json[r'id_type']) ?? OrderReferenceType.orderNumber,
        order: OrderPlacementDTO.fromJson(json[r'order']),
        trackings: OrderTrackingDTO.listFromJson(json[r'trackings']),
      );
    }
    return null;
  }

  static List<OrderFulfillmentDTO> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <OrderFulfillmentDTO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = OrderFulfillmentDTO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, OrderFulfillmentDTO> mapFromJson(dynamic json) {
    final map = <String, OrderFulfillmentDTO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = OrderFulfillmentDTO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of OrderFulfillmentDTO-objects as value to a dart map
  static Map<String, List<OrderFulfillmentDTO>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<OrderFulfillmentDTO>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = OrderFulfillmentDTO.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'trackings',
  };
}

