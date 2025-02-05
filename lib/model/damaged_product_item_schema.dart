//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of gokarla;

class DamagedProductItemSchema {
  /// Returns a new [DamagedProductItemSchema] instance.
  DamagedProductItemSchema({
    this.sku,
    this.title,
    required this.quantity,
    this.netPrice,
    this.imageUrls = const [],
  });

  /// SKU of the product item
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? sku;

  /// Product title
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? title;

  /// Quantity of the product item
  int quantity;

  /// Price of the product without a discount and taxes applied
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? netPrice;

  /// List of image URLs of the product
  List<String> imageUrls;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DamagedProductItemSchema &&
    other.sku == sku &&
    other.title == title &&
    other.quantity == quantity &&
    other.netPrice == netPrice &&
    _deepEquality.equals(other.imageUrls, imageUrls);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (sku == null ? 0 : sku!.hashCode) +
    (title == null ? 0 : title!.hashCode) +
    (quantity.hashCode) +
    (netPrice == null ? 0 : netPrice!.hashCode) +
    (imageUrls.hashCode);

  @override
  String toString() => 'DamagedProductItemSchema[sku=$sku, title=$title, quantity=$quantity, netPrice=$netPrice, imageUrls=$imageUrls]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.sku != null) {
      json[r'sku'] = this.sku;
    } else {
      json[r'sku'] = null;
    }
    if (this.title != null) {
      json[r'title'] = this.title;
    } else {
      json[r'title'] = null;
    }
      json[r'quantity'] = this.quantity;
    if (this.netPrice != null) {
      json[r'net_price'] = this.netPrice;
    } else {
      json[r'net_price'] = null;
    }
      json[r'image_urls'] = this.imageUrls;
    return json;
  }

  /// Returns a new [DamagedProductItemSchema] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DamagedProductItemSchema? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DamagedProductItemSchema[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DamagedProductItemSchema[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DamagedProductItemSchema(
        sku: mapValueOfType<String>(json, r'sku'),
        title: mapValueOfType<String>(json, r'title'),
        quantity: mapValueOfType<int>(json, r'quantity')!,
        netPrice: num.parse('${json[r'net_price']}'),
        imageUrls: json[r'image_urls'] is Iterable
            ? (json[r'image_urls'] as Iterable).cast<String>().toList(growable: false)
            : const [],
      );
    }
    return null;
  }

  static List<DamagedProductItemSchema> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DamagedProductItemSchema>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DamagedProductItemSchema.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DamagedProductItemSchema> mapFromJson(dynamic json) {
    final map = <String, DamagedProductItemSchema>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DamagedProductItemSchema.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DamagedProductItemSchema-objects as value to a dart map
  static Map<String, List<DamagedProductItemSchema>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DamagedProductItemSchema>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DamagedProductItemSchema.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'quantity',
  };
}

