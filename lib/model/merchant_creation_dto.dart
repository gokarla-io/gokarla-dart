//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of gokarla;

class MerchantCreationDTO {
  /// Returns a new [MerchantCreationDTO] instance.
  MerchantCreationDTO({
    required this.name,
    this.description,
    required this.organization,
    this.shopProvider,
    this.shopAdminUrl,
    this.shopFaqUrl,
    this.shopServiceUrl,
    this.shopUrl,
    this.logoUrl,
    required this.klaviyoEnabled,
    this.webTrackingEnabled,
    required this.slug,
  });

  /// Name to display
  String name;

  /// Merchant description dependant on user language
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? description;

  /// Organization the shop belongs to
  String organization;

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

  /// URL to the main shop
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? shopUrl;

  /// Merchant logo image URL
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? logoUrl;

  /// Will send klaviyo events for shipment updates
  bool klaviyoEnabled;

  /// Will show order and shipment updates in the web tracking page
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? webTrackingEnabled;

  /// Slug to filter
  String slug;

  @override
  bool operator ==(Object other) => identical(this, other) || other is MerchantCreationDTO &&
    other.name == name &&
    other.description == description &&
    other.organization == organization &&
    other.shopProvider == shopProvider &&
    other.shopAdminUrl == shopAdminUrl &&
    other.shopFaqUrl == shopFaqUrl &&
    other.shopServiceUrl == shopServiceUrl &&
    other.shopUrl == shopUrl &&
    other.logoUrl == logoUrl &&
    other.klaviyoEnabled == klaviyoEnabled &&
    other.webTrackingEnabled == webTrackingEnabled &&
    other.slug == slug;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (organization.hashCode) +
    (shopProvider == null ? 0 : shopProvider!.hashCode) +
    (shopAdminUrl == null ? 0 : shopAdminUrl!.hashCode) +
    (shopFaqUrl == null ? 0 : shopFaqUrl!.hashCode) +
    (shopServiceUrl == null ? 0 : shopServiceUrl!.hashCode) +
    (shopUrl == null ? 0 : shopUrl!.hashCode) +
    (logoUrl == null ? 0 : logoUrl!.hashCode) +
    (klaviyoEnabled.hashCode) +
    (webTrackingEnabled == null ? 0 : webTrackingEnabled!.hashCode) +
    (slug.hashCode);

  @override
  String toString() => 'MerchantCreationDTO[name=$name, description=$description, organization=$organization, shopProvider=$shopProvider, shopAdminUrl=$shopAdminUrl, shopFaqUrl=$shopFaqUrl, shopServiceUrl=$shopServiceUrl, shopUrl=$shopUrl, logoUrl=$logoUrl, klaviyoEnabled=$klaviyoEnabled, webTrackingEnabled=$webTrackingEnabled, slug=$slug]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'name'] = this.name;
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
      json[r'organization'] = this.organization;
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
    if (this.shopUrl != null) {
      json[r'shop_url'] = this.shopUrl;
    } else {
      json[r'shop_url'] = null;
    }
    if (this.logoUrl != null) {
      json[r'logo_url'] = this.logoUrl;
    } else {
      json[r'logo_url'] = null;
    }
      json[r'klaviyo_enabled'] = this.klaviyoEnabled;
    if (this.webTrackingEnabled != null) {
      json[r'web_tracking_enabled'] = this.webTrackingEnabled;
    } else {
      json[r'web_tracking_enabled'] = null;
    }
      json[r'slug'] = this.slug;
    return json;
  }

  /// Returns a new [MerchantCreationDTO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MerchantCreationDTO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MerchantCreationDTO[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MerchantCreationDTO[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MerchantCreationDTO(
        name: mapValueOfType<String>(json, r'name')!,
        description: mapValueOfType<String>(json, r'description'),
        organization: mapValueOfType<String>(json, r'organization')!,
        shopProvider: ShopProvider.fromJson(json[r'shop_provider']),
        shopAdminUrl: mapValueOfType<String>(json, r'shop_admin_url'),
        shopFaqUrl: mapValueOfType<String>(json, r'shop_faq_url'),
        shopServiceUrl: mapValueOfType<String>(json, r'shop_service_url'),
        shopUrl: mapValueOfType<String>(json, r'shop_url'),
        logoUrl: mapValueOfType<String>(json, r'logo_url'),
        klaviyoEnabled: mapValueOfType<bool>(json, r'klaviyo_enabled')!,
        webTrackingEnabled: mapValueOfType<bool>(json, r'web_tracking_enabled'),
        slug: mapValueOfType<String>(json, r'slug')!,
      );
    }
    return null;
  }

  static List<MerchantCreationDTO> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MerchantCreationDTO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MerchantCreationDTO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MerchantCreationDTO> mapFromJson(dynamic json) {
    final map = <String, MerchantCreationDTO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MerchantCreationDTO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MerchantCreationDTO-objects as value to a dart map
  static Map<String, List<MerchantCreationDTO>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<MerchantCreationDTO>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = MerchantCreationDTO.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'name',
    'organization',
    'klaviyo_enabled',
    'slug',
  };
}

