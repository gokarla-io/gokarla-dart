//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of gokarla;

class MerchantDTO {
  /// Returns a new [MerchantDTO] instance.
  MerchantDTO({
    required this.uuid,
    required this.name,
    required this.slug,
    this.organization,
    this.language = LanguageEnum.en,
    this.logoUrl,
    this.shopUrl,
  });

  /// Merchant UUID
  String uuid;

  /// Merchant Name
  String name;

  /// Merchant Slug
  String slug;

  /// Organization the shop belongs to
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? organization;

  /// Default language for the merchant text strings
  LanguageEnum language;

  /// Merchant logo image URL
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? logoUrl;

  /// Merchant Shop URL
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? shopUrl;

  @override
  bool operator ==(Object other) => identical(this, other) || other is MerchantDTO &&
    other.uuid == uuid &&
    other.name == name &&
    other.slug == slug &&
    other.organization == organization &&
    other.language == language &&
    other.logoUrl == logoUrl &&
    other.shopUrl == shopUrl;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (uuid.hashCode) +
    (name.hashCode) +
    (slug.hashCode) +
    (organization == null ? 0 : organization!.hashCode) +
    (language.hashCode) +
    (logoUrl == null ? 0 : logoUrl!.hashCode) +
    (shopUrl == null ? 0 : shopUrl!.hashCode);

  @override
  String toString() => 'MerchantDTO[uuid=$uuid, name=$name, slug=$slug, organization=$organization, language=$language, logoUrl=$logoUrl, shopUrl=$shopUrl]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'uuid'] = this.uuid;
      json[r'name'] = this.name;
      json[r'slug'] = this.slug;
    if (this.organization != null) {
      json[r'organization'] = this.organization;
    } else {
      json[r'organization'] = null;
    }
      json[r'language'] = this.language;
    if (this.logoUrl != null) {
      json[r'logo_url'] = this.logoUrl;
    } else {
      json[r'logo_url'] = null;
    }
    if (this.shopUrl != null) {
      json[r'shop_url'] = this.shopUrl;
    } else {
      json[r'shop_url'] = null;
    }
    return json;
  }

  /// Returns a new [MerchantDTO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MerchantDTO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MerchantDTO[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MerchantDTO[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MerchantDTO(
        uuid: mapValueOfType<String>(json, r'uuid')!,
        name: mapValueOfType<String>(json, r'name')!,
        slug: mapValueOfType<String>(json, r'slug')!,
        organization: mapValueOfType<String>(json, r'organization'),
        language: LanguageEnum.fromJson(json[r'language']) ?? LanguageEnum.en,
        logoUrl: mapValueOfType<String>(json, r'logo_url'),
        shopUrl: mapValueOfType<String>(json, r'shop_url'),
      );
    }
    return null;
  }

  static List<MerchantDTO> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MerchantDTO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MerchantDTO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MerchantDTO> mapFromJson(dynamic json) {
    final map = <String, MerchantDTO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MerchantDTO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MerchantDTO-objects as value to a dart map
  static Map<String, List<MerchantDTO>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<MerchantDTO>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = MerchantDTO.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'uuid',
    'name',
    'slug',
  };
}

