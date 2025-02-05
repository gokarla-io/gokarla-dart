//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of gokarla;

class ProductRecommendationI18n {
  /// Returns a new [ProductRecommendationI18n] instance.
  ProductRecommendationI18n({
    required this.language,
    required this.values,
  });

  /// Language of the translation
  String language;

  /// Product recommendation values to translate
  ProductRecommendationText values;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ProductRecommendationI18n &&
    other.language == language &&
    other.values == values;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (language.hashCode) +
    (values.hashCode);

  @override
  String toString() => 'ProductRecommendationI18n[language=$language, values=$values]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'language'] = this.language;
      json[r'values'] = this.values;
    return json;
  }

  /// Returns a new [ProductRecommendationI18n] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ProductRecommendationI18n? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ProductRecommendationI18n[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ProductRecommendationI18n[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ProductRecommendationI18n(
        language: mapValueOfType<String>(json, r'language')!,
        values: ProductRecommendationText.fromJson(json[r'values'])!,
      );
    }
    return null;
  }

  static List<ProductRecommendationI18n> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ProductRecommendationI18n>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ProductRecommendationI18n.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ProductRecommendationI18n> mapFromJson(dynamic json) {
    final map = <String, ProductRecommendationI18n>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ProductRecommendationI18n.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ProductRecommendationI18n-objects as value to a dart map
  static Map<String, List<ProductRecommendationI18n>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ProductRecommendationI18n>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ProductRecommendationI18n.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'language',
    'values',
  };
}

