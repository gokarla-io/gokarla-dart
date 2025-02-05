//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of gokarla;

class ProductPromotionPropertiesText {
  /// Returns a new [ProductPromotionPropertiesText] instance.
  ProductPromotionPropertiesText({
    this.title,
    this.ctaLabel,
    this.ctaUrl,
  });

  /// Product Promotion title
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? title;

  /// Call to Action Label (e.g. for the story widget)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? ctaLabel;

  /// Call to Action hyperlink (e.g. for the story widget)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? ctaUrl;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ProductPromotionPropertiesText &&
    other.title == title &&
    other.ctaLabel == ctaLabel &&
    other.ctaUrl == ctaUrl;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (title == null ? 0 : title!.hashCode) +
    (ctaLabel == null ? 0 : ctaLabel!.hashCode) +
    (ctaUrl == null ? 0 : ctaUrl!.hashCode);

  @override
  String toString() => 'ProductPromotionPropertiesText[title=$title, ctaLabel=$ctaLabel, ctaUrl=$ctaUrl]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.title != null) {
      json[r'title'] = this.title;
    } else {
      json[r'title'] = null;
    }
    if (this.ctaLabel != null) {
      json[r'cta_label'] = this.ctaLabel;
    } else {
      json[r'cta_label'] = null;
    }
    if (this.ctaUrl != null) {
      json[r'cta_url'] = this.ctaUrl;
    } else {
      json[r'cta_url'] = null;
    }
    return json;
  }

  /// Returns a new [ProductPromotionPropertiesText] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ProductPromotionPropertiesText? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ProductPromotionPropertiesText[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ProductPromotionPropertiesText[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ProductPromotionPropertiesText(
        title: mapValueOfType<String>(json, r'title'),
        ctaLabel: mapValueOfType<String>(json, r'cta_label'),
        ctaUrl: mapValueOfType<String>(json, r'cta_url'),
      );
    }
    return null;
  }

  static List<ProductPromotionPropertiesText> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ProductPromotionPropertiesText>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ProductPromotionPropertiesText.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ProductPromotionPropertiesText> mapFromJson(dynamic json) {
    final map = <String, ProductPromotionPropertiesText>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ProductPromotionPropertiesText.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ProductPromotionPropertiesText-objects as value to a dart map
  static Map<String, List<ProductPromotionPropertiesText>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ProductPromotionPropertiesText>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ProductPromotionPropertiesText.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

