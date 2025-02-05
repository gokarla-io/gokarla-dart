//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of gokarla;

class AllEvent {
  /// Returns a new [AllEvent] instance.
  AllEvent({
    this.time,
    this.event,
    this.location,
    this.timezone,
    this.eventKey,
    this.phase,
    this.phaseKey,
    this.carrierName,
    this.additionalInfo,
  });

  /// Date & time of event occurrence.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? time;

  /// Event's description in English or original event description, depending on how the event was processed.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? event;

  /// Object containing the location details of the event.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Object? location;

  /// Timezone description for event's date & time.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? timezone;

  /// Internal event key that references to a unique event type. 
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? eventKey;

  /// Phase that the shipment's current event belongs to.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? phase;

  /// Internal key referencing a unique phase
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? phaseKey;

  /// Carrier that the event is associated to.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? carrierName;

  /// Any additional information or custom fields related to the event.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Object? additionalInfo;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AllEvent &&
    other.time == time &&
    other.event == event &&
    other.location == location &&
    other.timezone == timezone &&
    other.eventKey == eventKey &&
    other.phase == phase &&
    other.phaseKey == phaseKey &&
    other.carrierName == carrierName &&
    other.additionalInfo == additionalInfo;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (time == null ? 0 : time!.hashCode) +
    (event == null ? 0 : event!.hashCode) +
    (location == null ? 0 : location!.hashCode) +
    (timezone == null ? 0 : timezone!.hashCode) +
    (eventKey == null ? 0 : eventKey!.hashCode) +
    (phase == null ? 0 : phase!.hashCode) +
    (phaseKey == null ? 0 : phaseKey!.hashCode) +
    (carrierName == null ? 0 : carrierName!.hashCode) +
    (additionalInfo == null ? 0 : additionalInfo!.hashCode);

  @override
  String toString() => 'AllEvent[time=$time, event=$event, location=$location, timezone=$timezone, eventKey=$eventKey, phase=$phase, phaseKey=$phaseKey, carrierName=$carrierName, additionalInfo=$additionalInfo]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.time != null) {
      json[r'time'] = this.time;
    } else {
      json[r'time'] = null;
    }
    if (this.event != null) {
      json[r'event'] = this.event;
    } else {
      json[r'event'] = null;
    }
    if (this.location != null) {
      json[r'location'] = this.location;
    } else {
      json[r'location'] = null;
    }
    if (this.timezone != null) {
      json[r'timezone'] = this.timezone;
    } else {
      json[r'timezone'] = null;
    }
    if (this.eventKey != null) {
      json[r'event_key'] = this.eventKey;
    } else {
      json[r'event_key'] = null;
    }
    if (this.phase != null) {
      json[r'phase'] = this.phase;
    } else {
      json[r'phase'] = null;
    }
    if (this.phaseKey != null) {
      json[r'phase_key'] = this.phaseKey;
    } else {
      json[r'phase_key'] = null;
    }
    if (this.carrierName != null) {
      json[r'carrier_name'] = this.carrierName;
    } else {
      json[r'carrier_name'] = null;
    }
    if (this.additionalInfo != null) {
      json[r'additional_info'] = this.additionalInfo;
    } else {
      json[r'additional_info'] = null;
    }
    return json;
  }

  /// Returns a new [AllEvent] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AllEvent? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AllEvent[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AllEvent[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AllEvent(
        time: mapValueOfType<String>(json, r'time'),
        event: mapValueOfType<String>(json, r'event'),
        location: mapValueOfType<Object>(json, r'location'),
        timezone: mapValueOfType<String>(json, r'timezone'),
        eventKey: mapValueOfType<String>(json, r'event_key'),
        phase: mapValueOfType<String>(json, r'phase'),
        phaseKey: mapValueOfType<String>(json, r'phase_key'),
        carrierName: mapValueOfType<String>(json, r'carrier_name'),
        additionalInfo: mapValueOfType<Object>(json, r'additional_info'),
      );
    }
    return null;
  }

  static List<AllEvent> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AllEvent>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AllEvent.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AllEvent> mapFromJson(dynamic json) {
    final map = <String, AllEvent>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AllEvent.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AllEvent-objects as value to a dart map
  static Map<String, List<AllEvent>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AllEvent>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AllEvent.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

