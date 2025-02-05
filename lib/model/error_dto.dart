//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of gokarla;

class ErrorDTO {
  /// Returns a new [ErrorDTO] instance.
  ErrorDTO({
    this.errors = const [],
    this.key,
    this.message,
    this.type = ErrorTypeEnum.apiError,
  });

  List<ValidationErrorDTO>? errors;

  /// Descriptive error key
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? key;

  /// Generic error message
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? message;

  /// Type of error
  ErrorTypeEnum type;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ErrorDTO &&
    _deepEquality.equals(other.errors, errors) &&
    other.key == key &&
    other.message == message &&
    other.type == type;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (errors == null ? 0 : errors!.hashCode) +
    (key == null ? 0 : key!.hashCode) +
    (message == null ? 0 : message!.hashCode) +
    (type.hashCode);

  @override
  String toString() => 'ErrorDTO[errors=$errors, key=$key, message=$message, type=$type]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.errors != null) {
      json[r'errors'] = this.errors;
    } else {
      json[r'errors'] = null;
    }
    if (this.key != null) {
      json[r'key'] = this.key;
    } else {
      json[r'key'] = null;
    }
    if (this.message != null) {
      json[r'message'] = this.message;
    } else {
      json[r'message'] = null;
    }
      json[r'type'] = this.type;
    return json;
  }

  /// Returns a new [ErrorDTO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ErrorDTO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ErrorDTO[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ErrorDTO[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ErrorDTO(
        errors: ValidationErrorDTO.listFromJson(json[r'errors']),
        key: mapValueOfType<String>(json, r'key'),
        message: mapValueOfType<String>(json, r'message'),
        type: ErrorTypeEnum.fromJson(json[r'type']) ?? ErrorTypeEnum.apiError,
      );
    }
    return null;
  }

  static List<ErrorDTO> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ErrorDTO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ErrorDTO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ErrorDTO> mapFromJson(dynamic json) {
    final map = <String, ErrorDTO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ErrorDTO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ErrorDTO-objects as value to a dart map
  static Map<String, List<ErrorDTO>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ErrorDTO>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ErrorDTO.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

