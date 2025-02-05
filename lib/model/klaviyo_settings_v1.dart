//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of gokarla;

class KlaviyoSettingsV1 {
  /// Returns a new [KlaviyoSettingsV1] instance.
  KlaviyoSettingsV1({
    required this.status,
    this.customTriggers = const [],
    this.triggerDeliveredAllEvents = false,
    this.shipmentGroupKey = ShipmentGroupKey.shipmentId,
    this.staleEventThreshold = 4,
  });

  /// Whether the klaviyo integration is enabled
  SettingStatus status;

  /// Custom triggers for klaviyo
  List<Object> customTriggers;

  /// Whether to trigger all events for klaviyo
  bool triggerDeliveredAllEvents;

  /// The key to use for the shipment group
  ShipmentGroupKey shipmentGroupKey;

  /// Stale event threshold for klaviyo in hours
  int staleEventThreshold;

  @override
  bool operator ==(Object other) => identical(this, other) || other is KlaviyoSettingsV1 &&
    other.status == status &&
    _deepEquality.equals(other.customTriggers, customTriggers) &&
    other.triggerDeliveredAllEvents == triggerDeliveredAllEvents &&
    other.shipmentGroupKey == shipmentGroupKey &&
    other.staleEventThreshold == staleEventThreshold;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (status.hashCode) +
    (customTriggers.hashCode) +
    (triggerDeliveredAllEvents.hashCode) +
    (shipmentGroupKey.hashCode) +
    (staleEventThreshold.hashCode);

  @override
  String toString() => 'KlaviyoSettingsV1[status=$status, customTriggers=$customTriggers, triggerDeliveredAllEvents=$triggerDeliveredAllEvents, shipmentGroupKey=$shipmentGroupKey, staleEventThreshold=$staleEventThreshold]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'status'] = this.status;
      json[r'custom_triggers'] = this.customTriggers;
      json[r'trigger_delivered_all_events'] = this.triggerDeliveredAllEvents;
      json[r'shipment_group_key'] = this.shipmentGroupKey;
      json[r'stale_event_threshold'] = this.staleEventThreshold;
    return json;
  }

  /// Returns a new [KlaviyoSettingsV1] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static KlaviyoSettingsV1? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "KlaviyoSettingsV1[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "KlaviyoSettingsV1[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return KlaviyoSettingsV1(
        status: SettingStatus.fromJson(json[r'status'])!,
        customTriggers: Object.listFromJson(json[r'custom_triggers']),
        triggerDeliveredAllEvents: mapValueOfType<bool>(json, r'trigger_delivered_all_events') ?? false,
        shipmentGroupKey: ShipmentGroupKey.fromJson(json[r'shipment_group_key']) ?? ShipmentGroupKey.shipmentId,
        staleEventThreshold: mapValueOfType<int>(json, r'stale_event_threshold') ?? 4,
      );
    }
    return null;
  }

  static List<KlaviyoSettingsV1> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <KlaviyoSettingsV1>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = KlaviyoSettingsV1.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, KlaviyoSettingsV1> mapFromJson(dynamic json) {
    final map = <String, KlaviyoSettingsV1>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = KlaviyoSettingsV1.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of KlaviyoSettingsV1-objects as value to a dart map
  static Map<String, List<KlaviyoSettingsV1>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<KlaviyoSettingsV1>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = KlaviyoSettingsV1.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'status',
  };
}

