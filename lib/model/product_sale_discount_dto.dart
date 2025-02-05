//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of gokarla;

class ProductSaleDiscountDTO {
  /// Returns a new [ProductSaleDiscountDTO] instance.
  ProductSaleDiscountDTO({
    required this.category,
    required this.amount,
  });

  /// Type of the sale discount
  DiscountCategory category;

  /// Sale discount amount
  num amount;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ProductSaleDiscountDTO &&
    other.category == category &&
    other.amount == amount;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (category.hashCode) +
    (amount.hashCode);

  @override
  String toString() => 'ProductSaleDiscountDTO[category=$category, amount=$amount]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'category'] = this.category;
      json[r'amount'] = this.amount;
    return json;
  }

  /// Returns a new [ProductSaleDiscountDTO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ProductSaleDiscountDTO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ProductSaleDiscountDTO[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ProductSaleDiscountDTO[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ProductSaleDiscountDTO(
        category: DiscountCategory.fromJson(json[r'category'])!,
        amount: num.parse('${json[r'amount']}'),
      );
    }
    return null;
  }

  static List<ProductSaleDiscountDTO> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ProductSaleDiscountDTO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ProductSaleDiscountDTO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ProductSaleDiscountDTO> mapFromJson(dynamic json) {
    final map = <String, ProductSaleDiscountDTO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ProductSaleDiscountDTO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ProductSaleDiscountDTO-objects as value to a dart map
  static Map<String, List<ProductSaleDiscountDTO>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ProductSaleDiscountDTO>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ProductSaleDiscountDTO.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'category',
    'amount',
  };
}

