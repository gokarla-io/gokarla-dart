//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of gokarla;

class MerchantUpdateDTO {
  /// Returns a new [MerchantUpdateDTO] instance.
  MerchantUpdateDTO({
    this.name,
    this.description,
    this.organization,
    this.shopProvider,
    this.shopAdminUrl,
    this.shopFaqUrl,
    this.shopServiceUrl,
    this.shopUrl,
    this.logoUrl,
    this.klaviyoEnabled,
    this.webTrackingEnabled,
  });

  /// Name to display
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// Merchant description dependant on user language
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? description;

  /// Organization the shop belongs to
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? organization;

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
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? klaviyoEnabled;

  /// Will show order and shipment updates in the web tracking page
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? webTrackingEnabled;

  @override
  bool operator ==(Object other) => identical(this, other) || other is MerchantUpdateDTO &&
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
    other.webTrackingEnabled == webTrackingEnabled;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name == null ? 0 : name!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (organization == null ? 0 : organization!.hashCode) +
    (shopProvider == null ? 0 : shopProvider!.hashCode) +
    (shopAdminUrl == null ? 0 : shopAdminUrl!.hashCode) +
    (shopFaqUrl == null ? 0 : shopFaqUrl!.hashCode) +
    (shopServiceUrl == null ? 0 : shopServiceUrl!.hashCode) +
    (shopUrl == null ? 0 : shopUrl!.hashCode) +
    (logoUrl == null ? 0 : logoUrl!.hashCode) +
    (klaviyoEnabled == null ? 0 : klaviyoEnabled!.hashCode) +
    (webTrackingEnabled == null ? 0 : webTrackingEnabled!.hashCode);

  @override
  String toString() => 'MerchantUpdateDTO[name=$name, description=$description, organization=$organization, shopProvider=$shopProvider, shopAdminUrl=$shopAdminUrl, shopFaqUrl=$shopFaqUrl, shopServiceUrl=$shopServiceUrl, shopUrl=$shopUrl, logoUrl=$logoUrl, klaviyoEnabled=$klaviyoEnabled, webTrackingEnabled=$webTrackingEnabled]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
    if (this.organization != null) {
      json[r'organization'] = this.organization;
    } else {
      json[r'organization'] = null;
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
    if (this.klaviyoEnabled != null) {
      json[r'klaviyo_enabled'] = this.klaviyoEnabled;
    } else {
      json[r'klaviyo_enabled'] = null;
    }
    if (this.webTrackingEnabled != null) {
      json[r'web_tracking_enabled'] = this.webTrackingEnabled;
    } else {
      json[r'web_tracking_enabled'] = null;
    }
    return json;
  }

  /// Returns a new [MerchantUpdateDTO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MerchantUpdateDTO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MerchantUpdateDTO[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MerchantUpdateDTO[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MerchantUpdateDTO(
        name: mapValueOfType<String>(json, r'name'),
        description: mapValueOfType<String>(json, r'description'),
        organization: mapValueOfType<String>(json, r'organization'),
        shopProvider: ShopProvider.fromJson(json[r'shop_provider']),
        shopAdminUrl: mapValueOfType<String>(json, r'shop_admin_url'),
        shopFaqUrl: mapValueOfType<String>(json, r'shop_faq_url'),
        shopServiceUrl: mapValueOfType<String>(json, r'shop_service_url'),
        shopUrl: mapValueOfType<String>(json, r'shop_url'),
        logoUrl: mapValueOfType<String>(json, r'logo_url'),
        klaviyoEnabled: mapValueOfType<bool>(json, r'klaviyo_enabled'),
        webTrackingEnabled: mapValueOfType<bool>(json, r'web_tracking_enabled'),
      );
    }
    return null;
  }

  static List<MerchantUpdateDTO> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MerchantUpdateDTO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MerchantUpdateDTO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MerchantUpdateDTO> mapFromJson(dynamic json) {
    final map = <String, MerchantUpdateDTO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MerchantUpdateDTO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MerchantUpdateDTO-objects as value to a dart map
  static Map<String, List<MerchantUpdateDTO>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<MerchantUpdateDTO>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = MerchantUpdateDTO.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

