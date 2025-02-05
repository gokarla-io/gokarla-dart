//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of gokarla;

class CarrierSettingsV1 {
  /// Returns a new [CarrierSettingsV1] instance.
  CarrierSettingsV1({
    this.ppStatus = SettingStatus.live,
    this.ppDisabledCarriers = const [],
    this.hcStatus = SettingStatus.live,
    this.hcEnabledCarriers = const [],
    this.overridePpTrackingConfigForSegments = const [],
    this.overrideHcTrackingConfigForSegments = const [],
  });

  /// Current status of the pp integration
  SettingStatus ppStatus;

  /// List of carrier references to disable for pp
  List<String> ppDisabledCarriers;

  /// Current status of the hc integration
  SettingStatus hcStatus;

  /// List of carrier references to enable for hc
  List<String> hcEnabledCarriers;

  /// List of segments to submit to pp regardless of tracking config
  List<String> overridePpTrackingConfigForSegments;

  /// List of segments to submit to hc regardless of tracking config
  List<String> overrideHcTrackingConfigForSegments;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CarrierSettingsV1 &&
    other.ppStatus == ppStatus &&
    _deepEquality.equals(other.ppDisabledCarriers, ppDisabledCarriers) &&
    other.hcStatus == hcStatus &&
    _deepEquality.equals(other.hcEnabledCarriers, hcEnabledCarriers) &&
    _deepEquality.equals(other.overridePpTrackingConfigForSegments, overridePpTrackingConfigForSegments) &&
    _deepEquality.equals(other.overrideHcTrackingConfigForSegments, overrideHcTrackingConfigForSegments);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (ppStatus.hashCode) +
    (ppDisabledCarriers.hashCode) +
    (hcStatus.hashCode) +
    (hcEnabledCarriers.hashCode) +
    (overridePpTrackingConfigForSegments.hashCode) +
    (overrideHcTrackingConfigForSegments.hashCode);

  @override
  String toString() => 'CarrierSettingsV1[ppStatus=$ppStatus, ppDisabledCarriers=$ppDisabledCarriers, hcStatus=$hcStatus, hcEnabledCarriers=$hcEnabledCarriers, overridePpTrackingConfigForSegments=$overridePpTrackingConfigForSegments, overrideHcTrackingConfigForSegments=$overrideHcTrackingConfigForSegments]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'pp_status'] = this.ppStatus;
      json[r'pp_disabled_carriers'] = this.ppDisabledCarriers;
      json[r'hc_status'] = this.hcStatus;
      json[r'hc_enabled_carriers'] = this.hcEnabledCarriers;
      json[r'override_pp_tracking_config_for_segments'] = this.overridePpTrackingConfigForSegments;
      json[r'override_hc_tracking_config_for_segments'] = this.overrideHcTrackingConfigForSegments;
    return json;
  }

  /// Returns a new [CarrierSettingsV1] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CarrierSettingsV1? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CarrierSettingsV1[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CarrierSettingsV1[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CarrierSettingsV1(
        ppStatus: SettingStatus.fromJson(json[r'pp_status']) ?? SettingStatus.live,
        ppDisabledCarriers: json[r'pp_disabled_carriers'] is Iterable
            ? (json[r'pp_disabled_carriers'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        hcStatus: SettingStatus.fromJson(json[r'hc_status']) ?? SettingStatus.live,
        hcEnabledCarriers: json[r'hc_enabled_carriers'] is Iterable
            ? (json[r'hc_enabled_carriers'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        overridePpTrackingConfigForSegments: json[r'override_pp_tracking_config_for_segments'] is Iterable
            ? (json[r'override_pp_tracking_config_for_segments'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        overrideHcTrackingConfigForSegments: json[r'override_hc_tracking_config_for_segments'] is Iterable
            ? (json[r'override_hc_tracking_config_for_segments'] as Iterable).cast<String>().toList(growable: false)
            : const [],
      );
    }
    return null;
  }

  static List<CarrierSettingsV1> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CarrierSettingsV1>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CarrierSettingsV1.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CarrierSettingsV1> mapFromJson(dynamic json) {
    final map = <String, CarrierSettingsV1>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CarrierSettingsV1.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CarrierSettingsV1-objects as value to a dart map
  static Map<String, List<CarrierSettingsV1>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CarrierSettingsV1>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CarrierSettingsV1.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

