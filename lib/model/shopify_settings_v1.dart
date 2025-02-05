//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of gokarla;

class ShopifySettingsV1 {
  /// Returns a new [ShopifySettingsV1] instance.
  ShopifySettingsV1({
    this.status = SettingStatus.live,
  });

  /// Whether the shopify integration is enabled
  SettingStatus status;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ShopifySettingsV1 &&
    other.status == status;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (status.hashCode);

  @override
  String toString() => 'ShopifySettingsV1[status=$status]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'status'] = this.status;
    return json;
  }

  /// Returns a new [ShopifySettingsV1] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ShopifySettingsV1? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ShopifySettingsV1[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ShopifySettingsV1[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ShopifySettingsV1(
        status: SettingStatus.fromJson(json[r'status']) ?? SettingStatus.live,
      );
    }
    return null;
  }

  static List<ShopifySettingsV1> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ShopifySettingsV1>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ShopifySettingsV1.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ShopifySettingsV1> mapFromJson(dynamic json) {
    final map = <String, ShopifySettingsV1>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ShopifySettingsV1.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ShopifySettingsV1-objects as value to a dart map
  static Map<String, List<ShopifySettingsV1>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ShopifySettingsV1>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ShopifySettingsV1.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

