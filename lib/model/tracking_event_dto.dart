//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of gokarla;

class TrackingEventDTO {
  /// Returns a new [TrackingEventDTO] instance.
  TrackingEventDTO({
    required this.eventKey,
    this.time,
    this.timezone,
    this.location,
    this.additionalInfo,
    required this.phase,
    required this.eventStrings,
    required this.language,
  });

  /// Event Key
  String eventKey;

  /// Event Time
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? time;

  /// Event Timezone
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? timezone;

  /// Event Location
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Object? location;

  /// Event Additional Info
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  EventAdditionalInfo? additionalInfo;

  /// Phase of the shipment
  PhaseEnum phase;

  /// Event translation strings
  TrackingEventKeyTranslationsDTO eventStrings;

  /// The locale of the language for the event
  LanguageEnum language;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TrackingEventDTO &&
    other.eventKey == eventKey &&
    other.time == time &&
    other.timezone == timezone &&
    other.location == location &&
    other.additionalInfo == additionalInfo &&
    other.phase == phase &&
    other.eventStrings == eventStrings &&
    other.language == language;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (eventKey.hashCode) +
    (time == null ? 0 : time!.hashCode) +
    (timezone == null ? 0 : timezone!.hashCode) +
    (location == null ? 0 : location!.hashCode) +
    (additionalInfo == null ? 0 : additionalInfo!.hashCode) +
    (phase.hashCode) +
    (eventStrings.hashCode) +
    (language.hashCode);

  @override
  String toString() => 'TrackingEventDTO[eventKey=$eventKey, time=$time, timezone=$timezone, location=$location, additionalInfo=$additionalInfo, phase=$phase, eventStrings=$eventStrings, language=$language]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'event_key'] = this.eventKey;
    if (this.time != null) {
      json[r'time'] = this.time!.toUtc().toIso8601String();
    } else {
      json[r'time'] = null;
    }
    if (this.timezone != null) {
      json[r'timezone'] = this.timezone;
    } else {
      json[r'timezone'] = null;
    }
    if (this.location != null) {
      json[r'location'] = this.location;
    } else {
      json[r'location'] = null;
    }
    if (this.additionalInfo != null) {
      json[r'additional_info'] = this.additionalInfo;
    } else {
      json[r'additional_info'] = null;
    }
      json[r'phase'] = this.phase;
      json[r'event_strings'] = this.eventStrings;
      json[r'language'] = this.language;
    return json;
  }

  /// Returns a new [TrackingEventDTO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TrackingEventDTO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TrackingEventDTO[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TrackingEventDTO[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TrackingEventDTO(
        eventKey: mapValueOfType<String>(json, r'event_key')!,
        time: mapDateTime(json, r'time', r''),
        timezone: mapValueOfType<String>(json, r'timezone'),
        location: mapValueOfType<Object>(json, r'location'),
        additionalInfo: EventAdditionalInfo.fromJson(json[r'additional_info']),
        phase: PhaseEnum.fromJson(json[r'phase'])!,
        eventStrings: TrackingEventKeyTranslationsDTO.fromJson(json[r'event_strings'])!,
        language: LanguageEnum.fromJson(json[r'language'])!,
      );
    }
    return null;
  }

  static List<TrackingEventDTO> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TrackingEventDTO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TrackingEventDTO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TrackingEventDTO> mapFromJson(dynamic json) {
    final map = <String, TrackingEventDTO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TrackingEventDTO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TrackingEventDTO-objects as value to a dart map
  static Map<String, List<TrackingEventDTO>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TrackingEventDTO>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TrackingEventDTO.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'event_key',
    'phase',
    'event_strings',
    'language',
  };
}

