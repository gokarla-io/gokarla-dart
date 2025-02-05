//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of gokarla;

class CollectionPoint {
  /// Returns a new [CollectionPoint] instance.
  CollectionPoint({
    this.uuid,
    this.collectionPointIdentifier,
    this.address,
    this.status,
    this.updatedDate,
    this.lat,
    this.long,
  });

  /// Unique ID for the specific collection point.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? uuid;

  /// Generated ID based on carrier unique ID and other system logic. The purpose of having this is to identify unique collection points and compare new and old collection points.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? collectionPointIdentifier;

  /// Address of the collection point
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Address? address;

  /// Collection point's activity status which is either 'active' or 'expired'
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? status;

  /// Latest update time recorded for the information provided for the collection point in UTC+0.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? updatedDate;

  /// Collection point address' latitude details.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? lat;

  /// Collection point address' longitude details.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? long;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CollectionPoint &&
    other.uuid == uuid &&
    other.collectionPointIdentifier == collectionPointIdentifier &&
    other.address == address &&
    other.status == status &&
    other.updatedDate == updatedDate &&
    other.lat == lat &&
    other.long == long;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (uuid == null ? 0 : uuid!.hashCode) +
    (collectionPointIdentifier == null ? 0 : collectionPointIdentifier!.hashCode) +
    (address == null ? 0 : address!.hashCode) +
    (status == null ? 0 : status!.hashCode) +
    (updatedDate == null ? 0 : updatedDate!.hashCode) +
    (lat == null ? 0 : lat!.hashCode) +
    (long == null ? 0 : long!.hashCode);

  @override
  String toString() => 'CollectionPoint[uuid=$uuid, collectionPointIdentifier=$collectionPointIdentifier, address=$address, status=$status, updatedDate=$updatedDate, lat=$lat, long=$long]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.uuid != null) {
      json[r'uuid'] = this.uuid;
    } else {
      json[r'uuid'] = null;
    }
    if (this.collectionPointIdentifier != null) {
      json[r'collection_point_identifier'] = this.collectionPointIdentifier;
    } else {
      json[r'collection_point_identifier'] = null;
    }
    if (this.address != null) {
      json[r'address'] = this.address;
    } else {
      json[r'address'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    if (this.updatedDate != null) {
      json[r'updated_date'] = this.updatedDate;
    } else {
      json[r'updated_date'] = null;
    }
    if (this.lat != null) {
      json[r'lat'] = this.lat;
    } else {
      json[r'lat'] = null;
    }
    if (this.long != null) {
      json[r'long'] = this.long;
    } else {
      json[r'long'] = null;
    }
    return json;
  }

  /// Returns a new [CollectionPoint] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CollectionPoint? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CollectionPoint[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CollectionPoint[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CollectionPoint(
        uuid: mapValueOfType<String>(json, r'uuid'),
        collectionPointIdentifier: mapValueOfType<String>(json, r'collection_point_identifier'),
        address: Address.fromJson(json[r'address']),
        status: mapValueOfType<String>(json, r'status'),
        updatedDate: mapValueOfType<String>(json, r'updated_date'),
        lat: num.parse('${json[r'lat']}'),
        long: num.parse('${json[r'long']}'),
      );
    }
    return null;
  }

  static List<CollectionPoint> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CollectionPoint>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CollectionPoint.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CollectionPoint> mapFromJson(dynamic json) {
    final map = <String, CollectionPoint>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CollectionPoint.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CollectionPoint-objects as value to a dart map
  static Map<String, List<CollectionPoint>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CollectionPoint>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CollectionPoint.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

