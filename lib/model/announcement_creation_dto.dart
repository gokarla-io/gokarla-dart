//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of gokarla;

class AnnouncementCreationDTO {
  /// Returns a new [AnnouncementCreationDTO] instance.
  AnnouncementCreationDTO({
    required this.text,
    required this.language,
  });

  /// Announcement text
  String text;

  /// Language for the text strings related to the merchant
  LanguageEnum language;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AnnouncementCreationDTO &&
    other.text == text &&
    other.language == language;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (text.hashCode) +
    (language.hashCode);

  @override
  String toString() => 'AnnouncementCreationDTO[text=$text, language=$language]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'text'] = this.text;
      json[r'language'] = this.language;
    return json;
  }

  /// Returns a new [AnnouncementCreationDTO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AnnouncementCreationDTO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AnnouncementCreationDTO[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AnnouncementCreationDTO[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AnnouncementCreationDTO(
        text: mapValueOfType<String>(json, r'text')!,
        language: LanguageEnum.fromJson(json[r'language'])!,
      );
    }
    return null;
  }

  static List<AnnouncementCreationDTO> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AnnouncementCreationDTO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AnnouncementCreationDTO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AnnouncementCreationDTO> mapFromJson(dynamic json) {
    final map = <String, AnnouncementCreationDTO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AnnouncementCreationDTO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AnnouncementCreationDTO-objects as value to a dart map
  static Map<String, List<AnnouncementCreationDTO>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AnnouncementCreationDTO>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AnnouncementCreationDTO.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'text',
    'language',
  };
}

