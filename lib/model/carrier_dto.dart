//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of gokarla;

class CarrierDTO {
  /// Returns a new [CarrierDTO] instance.
  CarrierDTO({
    required this.trackingNumber,
    required this.carrierReference,
    this.trackingUrl,
  });

  /// Carrier Tracking Number
  String trackingNumber;

  /// Carrier reference
  CarrierEnum carrierReference;

  /// Shipment tracking URL.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? trackingUrl;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CarrierDTO &&
    other.trackingNumber == trackingNumber &&
    other.carrierReference == carrierReference &&
    other.trackingUrl == trackingUrl;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (trackingNumber.hashCode) +
    (carrierReference.hashCode) +
    (trackingUrl == null ? 0 : trackingUrl!.hashCode);

  @override
  String toString() => 'CarrierDTO[trackingNumber=$trackingNumber, carrierReference=$carrierReference, trackingUrl=$trackingUrl]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'tracking_number'] = this.trackingNumber;
      json[r'carrier_reference'] = this.carrierReference;
    if (this.trackingUrl != null) {
      json[r'tracking_url'] = this.trackingUrl;
    } else {
      json[r'tracking_url'] = null;
    }
    return json;
  }

  /// Returns a new [CarrierDTO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CarrierDTO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CarrierDTO[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CarrierDTO[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CarrierDTO(
        trackingNumber: mapValueOfType<String>(json, r'tracking_number')!,
        carrierReference: CarrierEnum.fromJson(json[r'carrier_reference'])!,
        trackingUrl: mapValueOfType<String>(json, r'tracking_url'),
      );
    }
    return null;
  }

  static List<CarrierDTO> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CarrierDTO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CarrierDTO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CarrierDTO> mapFromJson(dynamic json) {
    final map = <String, CarrierDTO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CarrierDTO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CarrierDTO-objects as value to a dart map
  static Map<String, List<CarrierDTO>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CarrierDTO>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CarrierDTO.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'tracking_number',
    'carrier_reference',
  };
}

