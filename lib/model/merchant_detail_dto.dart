//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of gokarla;

class MerchantDetailDTO {
  /// Returns a new [MerchantDetailDTO] instance.
  MerchantDetailDTO({
    this.createdAt,
    this.updatedAt,
    required this.uuid,
    this.name,
    required this.slug,
    this.organization,
    this.language = LanguageEnum.en,
    this.logoUrl,
    this.shopUrl,
    this.description,
    this.shopProvider,
    this.shopAdminUrl,
    this.shopFaqUrl,
    this.shopServiceUrl,
    this.klaviyoEnabled = false,
    this.webTrackingEnabled = false,
    this.goLiveAt,
  });

  /// Time in which the resource was created
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? createdAt;

  /// Time in which the resource was last updated after creation
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? updatedAt;

  /// Merchant UUID
  String uuid;

  /// Name to display
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

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

  /// URL to the main shop
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? shopUrl;

  /// Merchant description dependant on user language
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? description;

  /// Shop system provider
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ShopProvider? shopProvider;

  /// URL for API calls to the shop
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? shopAdminUrl;

  /// URL for the FAQ page
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? shopFaqUrl;

  /// URL for the service page
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? shopServiceUrl;

  /// Will send klaviyo events for shipment updates
  bool klaviyoEnabled;

  /// Will show order and shipment updates in the web tracking page
  bool webTrackingEnabled;

  /// When the merchant goes live with Karla services
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? goLiveAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is MerchantDetailDTO &&
    other.createdAt == createdAt &&
    other.updatedAt == updatedAt &&
    other.uuid == uuid &&
    other.name == name &&
    other.slug == slug &&
    other.organization == organization &&
    other.language == language &&
    other.logoUrl == logoUrl &&
    other.shopUrl == shopUrl &&
    other.description == description &&
    other.shopProvider == shopProvider &&
    other.shopAdminUrl == shopAdminUrl &&
    other.shopFaqUrl == shopFaqUrl &&
    other.shopServiceUrl == shopServiceUrl &&
    other.klaviyoEnabled == klaviyoEnabled &&
    other.webTrackingEnabled == webTrackingEnabled &&
    other.goLiveAt == goLiveAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (updatedAt == null ? 0 : updatedAt!.hashCode) +
    (uuid.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (slug.hashCode) +
    (organization == null ? 0 : organization!.hashCode) +
    (language.hashCode) +
    (logoUrl == null ? 0 : logoUrl!.hashCode) +
    (shopUrl == null ? 0 : shopUrl!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (shopProvider == null ? 0 : shopProvider!.hashCode) +
    (shopAdminUrl == null ? 0 : shopAdminUrl!.hashCode) +
    (shopFaqUrl == null ? 0 : shopFaqUrl!.hashCode) +
    (shopServiceUrl == null ? 0 : shopServiceUrl!.hashCode) +
    (klaviyoEnabled.hashCode) +
    (webTrackingEnabled.hashCode) +
    (goLiveAt == null ? 0 : goLiveAt!.hashCode);

  @override
  String toString() => 'MerchantDetailDTO[createdAt=$createdAt, updatedAt=$updatedAt, uuid=$uuid, name=$name, slug=$slug, organization=$organization, language=$language, logoUrl=$logoUrl, shopUrl=$shopUrl, description=$description, shopProvider=$shopProvider, shopAdminUrl=$shopAdminUrl, shopFaqUrl=$shopFaqUrl, shopServiceUrl=$shopServiceUrl, klaviyoEnabled=$klaviyoEnabled, webTrackingEnabled=$webTrackingEnabled, goLiveAt=$goLiveAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.createdAt != null) {
      json[r'created_at'] = this.createdAt!.toUtc().toIso8601String();
    } else {
      json[r'created_at'] = null;
    }
    if (this.updatedAt != null) {
      json[r'updated_at'] = this.updatedAt!.toUtc().toIso8601String();
    } else {
      json[r'updated_at'] = null;
    }
      json[r'uuid'] = this.uuid;
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
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
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
    if (this.shopProvider != null) {
      json[r'shop_provider'] = this.shopProvider;
    } else {
      json[r'shop_provider'] = null;
    }
    if (this.shopAdminUrl != null) {
      json[r'shop_admin_url'] = this.shopAdminUrl;
    } else {
      json[r'shop_admin_url'] = null;
    }
    if (this.shopFaqUrl != null) {
      json[r'shop_faq_url'] = this.shopFaqUrl;
    } else {
      json[r'shop_faq_url'] = null;
    }
    if (this.shopServiceUrl != null) {
      json[r'shop_service_url'] = this.shopServiceUrl;
    } else {
      json[r'shop_service_url'] = null;
    }
      json[r'klaviyo_enabled'] = this.klaviyoEnabled;
      json[r'web_tracking_enabled'] = this.webTrackingEnabled;
    if (this.goLiveAt != null) {
      json[r'go_live_at'] = this.goLiveAt!.toUtc().toIso8601String();
    } else {
      json[r'go_live_at'] = null;
    }
    return json;
  }

  /// Returns a new [MerchantDetailDTO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MerchantDetailDTO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MerchantDetailDTO[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MerchantDetailDTO[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MerchantDetailDTO(
        createdAt: mapDateTime(json, r'created_at', r''),
        updatedAt: mapDateTime(json, r'updated_at', r''),
        uuid: mapValueOfType<String>(json, r'uuid')!,
        name: mapValueOfType<String>(json, r'name'),
        slug: mapValueOfType<String>(json, r'slug')!,
        organization: mapValueOfType<String>(json, r'organization'),
        language: LanguageEnum.fromJson(json[r'language']) ?? LanguageEnum.en,
        logoUrl: mapValueOfType<String>(json, r'logo_url'),
        shopUrl: mapValueOfType<String>(json, r'shop_url'),
        description: mapValueOfType<String>(json, r'description'),
        shopProvider: ShopProvider.fromJson(json[r'shop_provider']),
        shopAdminUrl: mapValueOfType<String>(json, r'shop_admin_url'),
        shopFaqUrl: mapValueOfType<String>(json, r'shop_faq_url'),
        shopServiceUrl: mapValueOfType<String>(json, r'shop_service_url'),
        klaviyoEnabled: mapValueOfType<bool>(json, r'klaviyo_enabled') ?? false,
        webTrackingEnabled: mapValueOfType<bool>(json, r'web_tracking_enabled') ?? false,
        goLiveAt: mapDateTime(json, r'go_live_at', r''),
      );
    }
    return null;
  }

  static List<MerchantDetailDTO> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MerchantDetailDTO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MerchantDetailDTO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MerchantDetailDTO> mapFromJson(dynamic json) {
    final map = <String, MerchantDetailDTO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MerchantDetailDTO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MerchantDetailDTO-objects as value to a dart map
  static Map<String, List<MerchantDetailDTO>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<MerchantDetailDTO>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = MerchantDetailDTO.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'uuid',
    'slug',
  };
}

