//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of gokarla;

class OrderUpdateDTO {
  /// Returns a new [OrderUpdateDTO] instance.
  OrderUpdateDTO({
    this.address,
    this.expectedNumberOfShipments,
  });

  /// Shipment delivery address (skips update if undefined).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  AddressDTO? address;

  /// Expected number of shipments for the order (skips update if undefined).
  ///
  /// Maximum value: 100
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? expectedNumberOfShipments;

  @override
  bool operator ==(Object other) => identical(this, other) || other is OrderUpdateDTO &&
    other.address == address &&
    other.expectedNumberOfShipments == expectedNumberOfShipments;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (address == null ? 0 : address!.hashCode) +
    (expectedNumberOfShipments == null ? 0 : expectedNumberOfShipments!.hashCode);

  @override
  String toString() => 'OrderUpdateDTO[address=$address, expectedNumberOfShipments=$expectedNumberOfShipments]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.address != null) {
      json[r'address'] = this.address;
    } else {
      json[r'address'] = null;
    }
    if (this.expectedNumberOfShipments != null) {
      json[r'expected_number_of_shipments'] = this.expectedNumberOfShipments;
    } else {
      json[r'expected_number_of_shipments'] = null;
    }
    return json;
  }

  /// Returns a new [OrderUpdateDTO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static OrderUpdateDTO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "OrderUpdateDTO[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "OrderUpdateDTO[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return OrderUpdateDTO(
        address: AddressDTO.fromJson(json[r'address']),
        expectedNumberOfShipments: mapValueOfType<int>(json, r'expected_number_of_shipments'),
      );
    }
    return null;
  }

  static List<OrderUpdateDTO> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <OrderUpdateDTO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = OrderUpdateDTO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, OrderUpdateDTO> mapFromJson(dynamic json) {
    final map = <String, OrderUpdateDTO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = OrderUpdateDTO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of OrderUpdateDTO-objects as value to a dart map
  static Map<String, List<OrderUpdateDTO>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<OrderUpdateDTO>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = OrderUpdateDTO.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

