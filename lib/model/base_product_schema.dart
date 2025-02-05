//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of gokarla;

class BaseProductSchema {
  /// Returns a new [BaseProductSchema] instance.
  BaseProductSchema({
    this.title,
    this.quantity,
    this.price,
    this.size,
    this.images = const [],
    this.sku,
    this.weight,
    this.taxLines = const [],
  });

  /// Product title
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? title;

  /// Quantity of products
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? quantity;

  /// Price of the product
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? price;

  /// Size of the product
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? size;

  /// List of product images
  List<ProductImageSchema> images;

  /// SKU of the product
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? sku;

  /// Weight of the product in grams
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? weight;

  /// List of tax lines
  List<TaxLineSchema> taxLines;

  @override
  bool operator ==(Object other) => identical(this, other) || other is BaseProductSchema &&
    other.title == title &&
    other.quantity == quantity &&
    other.price == price &&
    other.size == size &&
    _deepEquality.equals(other.images, images) &&
    other.sku == sku &&
    other.weight == weight &&
    _deepEquality.equals(other.taxLines, taxLines);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (title == null ? 0 : title!.hashCode) +
    (quantity == null ? 0 : quantity!.hashCode) +
    (price == null ? 0 : price!.hashCode) +
    (size == null ? 0 : size!.hashCode) +
    (images.hashCode) +
    (sku == null ? 0 : sku!.hashCode) +
    (weight == null ? 0 : weight!.hashCode) +
    (taxLines.hashCode);

  @override
  String toString() => 'BaseProductSchema[title=$title, quantity=$quantity, price=$price, size=$size, images=$images, sku=$sku, weight=$weight, taxLines=$taxLines]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.title != null) {
      json[r'title'] = this.title;
    } else {
      json[r'title'] = null;
    }
    if (this.quantity != null) {
      json[r'quantity'] = this.quantity;
    } else {
      json[r'quantity'] = null;
    }
    if (this.price != null) {
      json[r'price'] = this.price;
    } else {
      json[r'price'] = null;
    }
    if (this.size != null) {
      json[r'size'] = this.size;
    } else {
      json[r'size'] = null;
    }
      json[r'images'] = this.images;
    if (this.sku != null) {
      json[r'sku'] = this.sku;
    } else {
      json[r'sku'] = null;
    }
    if (this.weight != null) {
      json[r'weight'] = this.weight;
    } else {
      json[r'weight'] = null;
    }
      json[r'tax_lines'] = this.taxLines;
    return json;
  }

  /// Returns a new [BaseProductSchema] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static BaseProductSchema? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "BaseProductSchema[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "BaseProductSchema[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return BaseProductSchema(
        title: mapValueOfType<String>(json, r'title'),
        quantity: mapValueOfType<int>(json, r'quantity'),
        price: num.parse('${json[r'price']}'),
        size: mapValueOfType<String>(json, r'size'),
        images: ProductImageSchema.listFromJson(json[r'images']),
        sku: mapValueOfType<String>(json, r'sku'),
        weight: num.parse('${json[r'weight']}'),
        taxLines: TaxLineSchema.listFromJson(json[r'tax_lines']),
      );
    }
    return null;
  }

  static List<BaseProductSchema> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <BaseProductSchema>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = BaseProductSchema.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, BaseProductSchema> mapFromJson(dynamic json) {
    final map = <String, BaseProductSchema>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = BaseProductSchema.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of BaseProductSchema-objects as value to a dart map
  static Map<String, List<BaseProductSchema>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<BaseProductSchema>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = BaseProductSchema.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

