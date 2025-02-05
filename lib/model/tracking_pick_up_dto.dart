//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of gokarla;

class TrackingPickUpDTO {
  /// Returns a new [TrackingPickUpDTO] instance.
  TrackingPickUpDTO({
    this.type,
    required this.name,
    this.address,
    this.url,
    this.openingHours,
    this.dateTo,
  });

  /// PickUp type
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  PickUpTypeEnum? type;

  /// PickUp name
  String name;

  /// PickUp address
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  AddressDTO? address;

  /// PickUp url
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? url;

  /// PickUp opening hours
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? openingHours;

  /// PickUp date to
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? dateTo;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TrackingPickUpDTO &&
    other.type == type &&
    other.name == name &&
    other.address == address &&
    other.url == url &&
    other.openingHours == openingHours &&
    other.dateTo == dateTo;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (type == null ? 0 : type!.hashCode) +
    (name.hashCode) +
    (address == null ? 0 : address!.hashCode) +
    (url == null ? 0 : url!.hashCode) +
    (openingHours == null ? 0 : openingHours!.hashCode) +
    (dateTo == null ? 0 : dateTo!.hashCode);

  @override
  String toString() => 'TrackingPickUpDTO[type=$type, name=$name, address=$address, url=$url, openingHours=$openingHours, dateTo=$dateTo]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.type != null) {
      json[r'type'] = this.type;
    } else {
      json[r'type'] = null;
    }
      json[r'name'] = this.name;
    if (this.address != null) {
      json[r'address'] = this.address;
    } else {
      json[r'address'] = null;
    }
    if (this.url != null) {
      json[r'url'] = this.url;
    } else {
      json[r'url'] = null;
    }
    if (this.openingHours != null) {
      json[r'opening_hours'] = this.openingHours;
    } else {
      json[r'opening_hours'] = null;
    }
    if (this.dateTo != null) {
      json[r'date_to'] = this.dateTo!.toUtc().toIso8601String();
    } else {
      json[r'date_to'] = null;
    }
    return json;
  }

  /// Returns a new [TrackingPickUpDTO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TrackingPickUpDTO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TrackingPickUpDTO[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TrackingPickUpDTO[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TrackingPickUpDTO(
        type: PickUpTypeEnum.fromJson(json[r'type']),
        name: mapValueOfType<String>(json, r'name')!,
        address: AddressDTO.fromJson(json[r'address']),
        url: mapValueOfType<String>(json, r'url'),
        openingHours: mapValueOfType<String>(json, r'opening_hours'),
        dateTo: mapDateTime(json, r'date_to', r''),
      );
    }
    return null;
  }

  static List<TrackingPickUpDTO> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TrackingPickUpDTO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TrackingPickUpDTO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TrackingPickUpDTO> mapFromJson(dynamic json) {
    final map = <String, TrackingPickUpDTO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TrackingPickUpDTO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TrackingPickUpDTO-objects as value to a dart map
  static Map<String, List<TrackingPickUpDTO>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TrackingPickUpDTO>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TrackingPickUpDTO.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'name',
  };
}

