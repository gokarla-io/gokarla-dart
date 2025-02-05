//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of gokarla;

class ShopRole {
  /// Returns a new [ShopRole] instance.
  ShopRole({
    required this.shopSlug,
    required this.role,
  });

  /// The shop slug - if the slug is an * then it means all shops
  String shopSlug;

  /// Scopes used to access the Karla API
  ShopRoleEnum role;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ShopRole &&
    other.shopSlug == shopSlug &&
    other.role == role;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (shopSlug.hashCode) +
    (role.hashCode);

  @override
  String toString() => 'ShopRole[shopSlug=$shopSlug, role=$role]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'shop_slug'] = this.shopSlug;
      json[r'role'] = this.role;
    return json;
  }

  /// Returns a new [ShopRole] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ShopRole? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ShopRole[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ShopRole[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ShopRole(
        shopSlug: mapValueOfType<String>(json, r'shop_slug')!,
        role: ShopRoleEnum.fromJson(json[r'role'])!,
      );
    }
    return null;
  }

  static List<ShopRole> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ShopRole>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ShopRole.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ShopRole> mapFromJson(dynamic json) {
    final map = <String, ShopRole>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ShopRole.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ShopRole-objects as value to a dart map
  static Map<String, List<ShopRole>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ShopRole>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ShopRole.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'shop_slug',
    'role',
  };
}

