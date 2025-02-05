//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of gokarla;

class TrackingEventKeyTranslationsDTO {
  /// Returns a new [TrackingEventKeyTranslationsDTO] instance.
  TrackingEventKeyTranslationsDTO({
    required this.eventStatus,
    required this.listLabel,
    required this.headerHeadline,
    required this.headerTitle,
    required this.headerSubtitle,
  });

  /// Event status translation
  String eventStatus;

  /// Event list label translation
  String listLabel;

  /// Event header headline translation
  String headerHeadline;

  /// Event header title translation
  String headerTitle;

  /// Event header subtitle translation
  String headerSubtitle;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TrackingEventKeyTranslationsDTO &&
    other.eventStatus == eventStatus &&
    other.listLabel == listLabel &&
    other.headerHeadline == headerHeadline &&
    other.headerTitle == headerTitle &&
    other.headerSubtitle == headerSubtitle;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (eventStatus.hashCode) +
    (listLabel.hashCode) +
    (headerHeadline.hashCode) +
    (headerTitle.hashCode) +
    (headerSubtitle.hashCode);

  @override
  String toString() => 'TrackingEventKeyTranslationsDTO[eventStatus=$eventStatus, listLabel=$listLabel, headerHeadline=$headerHeadline, headerTitle=$headerTitle, headerSubtitle=$headerSubtitle]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'event_status'] = this.eventStatus;
      json[r'list_label'] = this.listLabel;
      json[r'header_headline'] = this.headerHeadline;
      json[r'header_title'] = this.headerTitle;
      json[r'header_subtitle'] = this.headerSubtitle;
    return json;
  }

  /// Returns a new [TrackingEventKeyTranslationsDTO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TrackingEventKeyTranslationsDTO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TrackingEventKeyTranslationsDTO[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TrackingEventKeyTranslationsDTO[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TrackingEventKeyTranslationsDTO(
        eventStatus: mapValueOfType<String>(json, r'event_status')!,
        listLabel: mapValueOfType<String>(json, r'list_label')!,
        headerHeadline: mapValueOfType<String>(json, r'header_headline')!,
        headerTitle: mapValueOfType<String>(json, r'header_title')!,
        headerSubtitle: mapValueOfType<String>(json, r'header_subtitle')!,
      );
    }
    return null;
  }

  static List<TrackingEventKeyTranslationsDTO> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TrackingEventKeyTranslationsDTO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TrackingEventKeyTranslationsDTO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TrackingEventKeyTranslationsDTO> mapFromJson(dynamic json) {
    final map = <String, TrackingEventKeyTranslationsDTO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TrackingEventKeyTranslationsDTO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TrackingEventKeyTranslationsDTO-objects as value to a dart map
  static Map<String, List<TrackingEventKeyTranslationsDTO>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TrackingEventKeyTranslationsDTO>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TrackingEventKeyTranslationsDTO.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'event_status',
    'list_label',
    'header_headline',
    'header_title',
    'header_subtitle',
  };
}

