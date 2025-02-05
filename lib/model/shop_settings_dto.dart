//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of gokarla;

class ShopSettingsDTO {
  /// Returns a new [ShopSettingsDTO] instance.
  ShopSettingsDTO({
    required this.triggers,
    required this.carriers,
    required this.trackpages,
  });

  /// Trigger Settings
  BaseTriggerSettings triggers;

  /// Carrier Settings
  BaseCarrierSettings carriers;

  /// Trackpages Settings
  BaseTrackpagesSettings trackpages;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ShopSettingsDTO &&
    other.triggers == triggers &&
    other.carriers == carriers &&
    other.trackpages == trackpages;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (triggers.hashCode) +
    (carriers.hashCode) +
    (trackpages.hashCode);

  @override
  String toString() => 'ShopSettingsDTO[triggers=$triggers, carriers=$carriers, trackpages=$trackpages]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'triggers'] = this.triggers;
      json[r'carriers'] = this.carriers;
      json[r'trackpages'] = this.trackpages;
    return json;
  }

  /// Returns a new [ShopSettingsDTO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ShopSettingsDTO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ShopSettingsDTO[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ShopSettingsDTO[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ShopSettingsDTO(
        triggers: BaseTriggerSettings.fromJson(json[r'triggers'])!,
        carriers: BaseCarrierSettings.fromJson(json[r'carriers'])!,
        trackpages: BaseTrackpagesSettings.fromJson(json[r'trackpages'])!,
      );
    }
    return null;
  }

  static List<ShopSettingsDTO> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ShopSettingsDTO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ShopSettingsDTO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ShopSettingsDTO> mapFromJson(dynamic json) {
    final map = <String, ShopSettingsDTO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ShopSettingsDTO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ShopSettingsDTO-objects as value to a dart map
  static Map<String, List<ShopSettingsDTO>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ShopSettingsDTO>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ShopSettingsDTO.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'triggers',
    'carriers',
    'trackpages',
  };
}

