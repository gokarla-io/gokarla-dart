//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of gokarla;

class BasicPromotionPropertiesText {
  /// Returns a new [BasicPromotionPropertiesText] instance.
  BasicPromotionPropertiesText({
    this.title,
    this.subtitle,
    this.ctaLabel,
    this.ctaUrl,
    this.imageUrl,
  });

  /// Campaign Title
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? title;

  /// Promotion Subtitle
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? subtitle;

  /// Call to Action Label
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? ctaLabel;

  /// Call to Action hyperlink
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? ctaUrl;

  /// Product Image URL
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? imageUrl;

  @override
  bool operator ==(Object other) => identical(this, other) || other is BasicPromotionPropertiesText &&
    other.title == title &&
    other.subtitle == subtitle &&
    other.ctaLabel == ctaLabel &&
    other.ctaUrl == ctaUrl &&
    other.imageUrl == imageUrl;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (title == null ? 0 : title!.hashCode) +
    (subtitle == null ? 0 : subtitle!.hashCode) +
    (ctaLabel == null ? 0 : ctaLabel!.hashCode) +
    (ctaUrl == null ? 0 : ctaUrl!.hashCode) +
    (imageUrl == null ? 0 : imageUrl!.hashCode);

  @override
  String toString() => 'BasicPromotionPropertiesText[title=$title, subtitle=$subtitle, ctaLabel=$ctaLabel, ctaUrl=$ctaUrl, imageUrl=$imageUrl]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.title != null) {
      json[r'title'] = this.title;
    } else {
      json[r'title'] = null;
    }
    if (this.subtitle != null) {
      json[r'subtitle'] = this.subtitle;
    } else {
      json[r'subtitle'] = null;
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
    if (this.imageUrl != null) {
      json[r'image_url'] = this.imageUrl;
    } else {
      json[r'image_url'] = null;
    }
    return json;
  }

  /// Returns a new [BasicPromotionPropertiesText] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static BasicPromotionPropertiesText? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "BasicPromotionPropertiesText[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "BasicPromotionPropertiesText[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return BasicPromotionPropertiesText(
        title: mapValueOfType<String>(json, r'title'),
        subtitle: mapValueOfType<String>(json, r'subtitle'),
        ctaLabel: mapValueOfType<String>(json, r'cta_label'),
        ctaUrl: mapValueOfType<String>(json, r'cta_url'),
        imageUrl: mapValueOfType<String>(json, r'image_url'),
      );
    }
    return null;
  }

  static List<BasicPromotionPropertiesText> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <BasicPromotionPropertiesText>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = BasicPromotionPropertiesText.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, BasicPromotionPropertiesText> mapFromJson(dynamic json) {
    final map = <String, BasicPromotionPropertiesText>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = BasicPromotionPropertiesText.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of BasicPromotionPropertiesText-objects as value to a dart map
  static Map<String, List<BasicPromotionPropertiesText>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<BasicPromotionPropertiesText>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = BasicPromotionPropertiesText.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

