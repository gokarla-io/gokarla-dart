//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of gokarla;

class AnnouncementDetailDTO {
  /// Returns a new [AnnouncementDetailDTO] instance.
  AnnouncementDetailDTO({
    this.createdAt,
    this.updatedAt,
    required this.text,
    required this.language,
  });

  /// Time in which the resource was created
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? createdAt;

  /// Time in which the resource was last updated after creation
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? updatedAt;

  /// Announcement text
  String text;

  /// Language for the text strings related to the merchant
  LanguageEnum language;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AnnouncementDetailDTO &&
    other.createdAt == createdAt &&
    other.updatedAt == updatedAt &&
    other.text == text &&
    other.language == language;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (updatedAt == null ? 0 : updatedAt!.hashCode) +
    (text.hashCode) +
    (language.hashCode);

  @override
  String toString() => 'AnnouncementDetailDTO[createdAt=$createdAt, updatedAt=$updatedAt, text=$text, language=$language]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.createdAt != null) {
      json[r'created_at'] = this.createdAt!.toUtc().toIso8601String();
    } else {
      json[r'created_at'] = null;
    }
    if (this.updatedAt != null) {
      json[r'updated_at'] = this.updatedAt!.toUtc().toIso8601String();
    } else {
      json[r'updated_at'] = null;
    }
      json[r'text'] = this.text;
      json[r'language'] = this.language;
    return json;
  }

  /// Returns a new [AnnouncementDetailDTO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AnnouncementDetailDTO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AnnouncementDetailDTO[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AnnouncementDetailDTO[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AnnouncementDetailDTO(
        createdAt: mapDateTime(json, r'created_at', r''),
        updatedAt: mapDateTime(json, r'updated_at', r''),
        text: mapValueOfType<String>(json, r'text')!,
        language: LanguageEnum.fromJson(json[r'language'])!,
      );
    }
    return null;
  }

  static List<AnnouncementDetailDTO> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AnnouncementDetailDTO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AnnouncementDetailDTO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AnnouncementDetailDTO> mapFromJson(dynamic json) {
    final map = <String, AnnouncementDetailDTO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AnnouncementDetailDTO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AnnouncementDetailDTO-objects as value to a dart map
  static Map<String, List<AnnouncementDetailDTO>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AnnouncementDetailDTO>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AnnouncementDetailDTO.listFromJson(entry.value, growable: growable,);
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

