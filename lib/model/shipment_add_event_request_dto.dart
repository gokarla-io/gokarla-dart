//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of gokarla;

class ShipmentAddEventRequestDTO {
  /// Returns a new [ShipmentAddEventRequestDTO] instance.
  ShipmentAddEventRequestDTO({
    required this.eventName,
    required this.eventTime,
    required this.externalId,
  });

  /// The event to be added to the shipment
  String eventName;

  /// The event time to be added to the shipment
  DateTime eventTime;

  /// The external ID of the event.
  String externalId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ShipmentAddEventRequestDTO &&
    other.eventName == eventName &&
    other.eventTime == eventTime &&
    other.externalId == externalId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (eventName.hashCode) +
    (eventTime.hashCode) +
    (externalId.hashCode);

  @override
  String toString() => 'ShipmentAddEventRequestDTO[eventName=$eventName, eventTime=$eventTime, externalId=$externalId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'event_name'] = this.eventName;
      json[r'event_time'] = this.eventTime.toUtc().toIso8601String();
      json[r'external_id'] = this.externalId;
    return json;
  }

  /// Returns a new [ShipmentAddEventRequestDTO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ShipmentAddEventRequestDTO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ShipmentAddEventRequestDTO[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ShipmentAddEventRequestDTO[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ShipmentAddEventRequestDTO(
        eventName: mapValueOfType<String>(json, r'event_name')!,
        eventTime: mapDateTime(json, r'event_time', r'')!,
        externalId: mapValueOfType<String>(json, r'external_id')!,
      );
    }
    return null;
  }

  static List<ShipmentAddEventRequestDTO> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ShipmentAddEventRequestDTO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ShipmentAddEventRequestDTO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ShipmentAddEventRequestDTO> mapFromJson(dynamic json) {
    final map = <String, ShipmentAddEventRequestDTO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ShipmentAddEventRequestDTO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ShipmentAddEventRequestDTO-objects as value to a dart map
  static Map<String, List<ShipmentAddEventRequestDTO>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ShipmentAddEventRequestDTO>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ShipmentAddEventRequestDTO.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'event_name',
    'event_time',
    'external_id',
  };
}

