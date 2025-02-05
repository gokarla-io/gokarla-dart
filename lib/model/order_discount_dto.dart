//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of gokarla;

class OrderDiscountDTO {
  /// Returns a new [OrderDiscountDTO] instance.
  OrderDiscountDTO({
    required this.code,
    this.amount,
    this.type,
  });

  /// Code of the discount
  String code;

  /// Amount of the discount
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? amount;

  /// Type of the discount
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? type;

  @override
  bool operator ==(Object other) => identical(this, other) || other is OrderDiscountDTO &&
    other.code == code &&
    other.amount == amount &&
    other.type == type;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (code.hashCode) +
    (amount == null ? 0 : amount!.hashCode) +
    (type == null ? 0 : type!.hashCode);

  @override
  String toString() => 'OrderDiscountDTO[code=$code, amount=$amount, type=$type]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'code'] = this.code;
    if (this.amount != null) {
      json[r'amount'] = this.amount;
    } else {
      json[r'amount'] = null;
    }
    if (this.type != null) {
      json[r'type'] = this.type;
    } else {
      json[r'type'] = null;
    }
    return json;
  }

  /// Returns a new [OrderDiscountDTO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static OrderDiscountDTO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "OrderDiscountDTO[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "OrderDiscountDTO[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return OrderDiscountDTO(
        code: mapValueOfType<String>(json, r'code')!,
        amount: mapValueOfType<String>(json, r'amount'),
        type: mapValueOfType<String>(json, r'type'),
      );
    }
    return null;
  }

  static List<OrderDiscountDTO> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <OrderDiscountDTO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = OrderDiscountDTO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, OrderDiscountDTO> mapFromJson(dynamic json) {
    final map = <String, OrderDiscountDTO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = OrderDiscountDTO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of OrderDiscountDTO-objects as value to a dart map
  static Map<String, List<OrderDiscountDTO>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<OrderDiscountDTO>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = OrderDiscountDTO.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'code',
  };
}

