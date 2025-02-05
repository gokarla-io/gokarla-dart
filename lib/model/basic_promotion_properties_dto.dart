//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of gokarla;

class BasicPromotionPropertiesDTO {
  /// Returns a new [BasicPromotionPropertiesDTO] instance.
  BasicPromotionPropertiesDTO({
    this.title,
    this.subtitle,
    this.ctaLabel,
    this.ctaUrl,
    this.imageUrl = 'https://imagedelivery.net/dXeULRC3hlKS2IJjZmVx9Q/c5a76e52-e2d0-4c27-fc04-fcde1b725200/public',
    this.discountCode,
    this.translations = const [],
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
  String imageUrl;

  /// Discount code that may be applied to the call to action url if the shop provider supports it. DEPRECATED: use discount object instead.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? discountCode;

  /// Translations for the promotion strings
  List<BasicPromotionPropertiesI18n> translations;

  @override
  bool operator ==(Object other) => identical(this, other) || other is BasicPromotionPropertiesDTO &&
    other.title == title &&
    other.subtitle == subtitle &&
    other.ctaLabel == ctaLabel &&
    other.ctaUrl == ctaUrl &&
    other.imageUrl == imageUrl &&
    other.discountCode == discountCode &&
    _deepEquality.equals(other.translations, translations);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (title == null ? 0 : title!.hashCode) +
    (subtitle == null ? 0 : subtitle!.hashCode) +
    (ctaLabel == null ? 0 : ctaLabel!.hashCode) +
    (ctaUrl == null ? 0 : ctaUrl!.hashCode) +
    (imageUrl.hashCode) +
    (discountCode == null ? 0 : discountCode!.hashCode) +
    (translations.hashCode);

  @override
  String toString() => 'BasicPromotionPropertiesDTO[title=$title, subtitle=$subtitle, ctaLabel=$ctaLabel, ctaUrl=$ctaUrl, imageUrl=$imageUrl, discountCode=$discountCode, translations=$translations]';

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
      json[r'image_url'] = this.imageUrl;
    if (this.discountCode != null) {
      json[r'discount_code'] = this.discountCode;
    } else {
      json[r'discount_code'] = null;
    }
      json[r'translations'] = this.translations;
    return json;
  }

  /// Returns a new [BasicPromotionPropertiesDTO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static BasicPromotionPropertiesDTO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "BasicPromotionPropertiesDTO[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "BasicPromotionPropertiesDTO[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return BasicPromotionPropertiesDTO(
        title: mapValueOfType<String>(json, r'title'),
        subtitle: mapValueOfType<String>(json, r'subtitle'),
        ctaLabel: mapValueOfType<String>(json, r'cta_label'),
        ctaUrl: mapValueOfType<String>(json, r'cta_url'),
        imageUrl: mapValueOfType<String>(json, r'image_url') ?? 'https://imagedelivery.net/dXeULRC3hlKS2IJjZmVx9Q/c5a76e52-e2d0-4c27-fc04-fcde1b725200/public',
        discountCode: mapValueOfType<String>(json, r'discount_code'),
        translations: BasicPromotionPropertiesI18n.listFromJson(json[r'translations']),
      );
    }
    return null;
  }

  static List<BasicPromotionPropertiesDTO> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <BasicPromotionPropertiesDTO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = BasicPromotionPropertiesDTO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, BasicPromotionPropertiesDTO> mapFromJson(dynamic json) {
    final map = <String, BasicPromotionPropertiesDTO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = BasicPromotionPropertiesDTO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of BasicPromotionPropertiesDTO-objects as value to a dart map
  static Map<String, List<BasicPromotionPropertiesDTO>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<BasicPromotionPropertiesDTO>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = BasicPromotionPropertiesDTO.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

