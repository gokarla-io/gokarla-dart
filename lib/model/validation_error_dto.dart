//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of gokarla;

class ValidationErrorDTO {
  /// Returns a new [ValidationErrorDTO] instance.
  ValidationErrorDTO({
    this.loc,
    this.msg,
    this.field,
    this.type,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Loc? loc;

  /// FastAPI msg validation error field
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? msg;

  /// FastAPI field validation error field
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? field;

  /// FastAPI type validation error field
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? type;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ValidationErrorDTO &&
    other.loc == loc &&
    other.msg == msg &&
    other.field == field &&
    other.type == type;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (loc == null ? 0 : loc!.hashCode) +
    (msg == null ? 0 : msg!.hashCode) +
    (field == null ? 0 : field!.hashCode) +
    (type == null ? 0 : type!.hashCode);

  @override
  String toString() => 'ValidationErrorDTO[loc=$loc, msg=$msg, field=$field, type=$type]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.loc != null) {
      json[r'loc'] = this.loc;
    } else {
      json[r'loc'] = null;
    }
    if (this.msg != null) {
      json[r'msg'] = this.msg;
    } else {
      json[r'msg'] = null;
    }
    if (this.field != null) {
      json[r'field'] = this.field;
    } else {
      json[r'field'] = null;
    }
    if (this.type != null) {
      json[r'type'] = this.type;
    } else {
      json[r'type'] = null;
    }
    return json;
  }

  /// Returns a new [ValidationErrorDTO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ValidationErrorDTO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ValidationErrorDTO[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ValidationErrorDTO[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ValidationErrorDTO(
        loc: Loc.fromJson(json[r'loc']),
        msg: mapValueOfType<String>(json, r'msg'),
        field: mapValueOfType<String>(json, r'field'),
        type: mapValueOfType<String>(json, r'type'),
      );
    }
    return null;
  }

  static List<ValidationErrorDTO> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ValidationErrorDTO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ValidationErrorDTO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ValidationErrorDTO> mapFromJson(dynamic json) {
    final map = <String, ValidationErrorDTO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ValidationErrorDTO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ValidationErrorDTO-objects as value to a dart map
  static Map<String, List<ValidationErrorDTO>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ValidationErrorDTO>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ValidationErrorDTO.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

