//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of gokarla;

class ProductRecommendationText {
  /// Returns a new [ProductRecommendationText] instance.
  ProductRecommendationText({
    this.title,
    this.imageUrl,
    this.productUrl,
  });

  /// Product Title
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? title;

  /// Product Image URL
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? imageUrl;

  /// Product hyperlink
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? productUrl;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ProductRecommendationText &&
    other.title == title &&
    other.imageUrl == imageUrl &&
    other.productUrl == productUrl;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (title == null ? 0 : title!.hashCode) +
    (imageUrl == null ? 0 : imageUrl!.hashCode) +
    (productUrl == null ? 0 : productUrl!.hashCode);

  @override
  String toString() => 'ProductRecommendationText[title=$title, imageUrl=$imageUrl, productUrl=$productUrl]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.title != null) {
      json[r'title'] = this.title;
    } else {
      json[r'title'] = null;
    }
    if (this.imageUrl != null) {
      json[r'image_url'] = this.imageUrl;
    } else {
      json[r'image_url'] = null;
    }
    if (this.productUrl != null) {
      json[r'product_url'] = this.productUrl;
    } else {
      json[r'product_url'] = null;
    }
    return json;
  }

  /// Returns a new [ProductRecommendationText] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ProductRecommendationText? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ProductRecommendationText[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ProductRecommendationText[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ProductRecommendationText(
        title: mapValueOfType<String>(json, r'title'),
        imageUrl: mapValueOfType<String>(json, r'image_url'),
        productUrl: mapValueOfType<String>(json, r'product_url'),
      );
    }
    return null;
  }

  static List<ProductRecommendationText> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ProductRecommendationText>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ProductRecommendationText.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ProductRecommendationText> mapFromJson(dynamic json) {
    final map = <String, ProductRecommendationText>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ProductRecommendationText.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ProductRecommendationText-objects as value to a dart map
  static Map<String, List<ProductRecommendationText>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ProductRecommendationText>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ProductRecommendationText.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

