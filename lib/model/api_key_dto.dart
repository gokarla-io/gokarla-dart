//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of gokarla;

class APIKeyDTO {
  /// Returns a new [APIKeyDTO] instance.
  APIKeyDTO({
    required this.apiKey,
  });

  /// The api key
  String apiKey;

  @override
  bool operator ==(Object other) => identical(this, other) || other is APIKeyDTO &&
    other.apiKey == apiKey;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (apiKey.hashCode);

  @override
  String toString() => 'APIKeyDTO[apiKey=$apiKey]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'api_key'] = this.apiKey;
    return json;
  }

  /// Returns a new [APIKeyDTO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static APIKeyDTO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "APIKeyDTO[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "APIKeyDTO[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return APIKeyDTO(
        apiKey: mapValueOfType<String>(json, r'api_key')!,
      );
    }
    return null;
  }

  static List<APIKeyDTO> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <APIKeyDTO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = APIKeyDTO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, APIKeyDTO> mapFromJson(dynamic json) {
    final map = <String, APIKeyDTO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = APIKeyDTO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of APIKeyDTO-objects as value to a dart map
  static Map<String, List<APIKeyDTO>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<APIKeyDTO>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = APIKeyDTO.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'api_key',
  };
}

