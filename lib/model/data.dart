//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of gokarla;

class Data {
  /// Returns a new [Data] instance.
  Data({
    required this.shipmentUuid,
    this.additionalInfo,
    this.expectedDelivery,
    this.allEvents = const [],
    this.newEvents = const [],
    this.collectionPoint,
    this.parcelRecipientInformation,
  });

  /// Generated unique identifier for a shipment. Users can use this uuid to manage their shipments with other API functions.
  String shipmentUuid;

  /// Lists all custom fields added by the user for the shipment.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Object? additionalInfo;

  /// Stores details pertaining to shipment's expected delivery values.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ExpectedDelivery? expectedDelivery;

  /// Lists all of the events processed for the shipment.
  List<AllEvent> allEvents;

  /// Lists all of the new events processed for the shipment.
  List<AllEvent> newEvents;

  /// Collection point details.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  CollectionPoint? collectionPoint;

  /// Information related to the parcel recipient.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? parcelRecipientInformation;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Data &&
    other.shipmentUuid == shipmentUuid &&
    other.additionalInfo == additionalInfo &&
    other.expectedDelivery == expectedDelivery &&
    _deepEquality.equals(other.allEvents, allEvents) &&
    _deepEquality.equals(other.newEvents, newEvents) &&
    other.collectionPoint == collectionPoint &&
    other.parcelRecipientInformation == parcelRecipientInformation;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (shipmentUuid.hashCode) +
    (additionalInfo == null ? 0 : additionalInfo!.hashCode) +
    (expectedDelivery == null ? 0 : expectedDelivery!.hashCode) +
    (allEvents.hashCode) +
    (newEvents.hashCode) +
    (collectionPoint == null ? 0 : collectionPoint!.hashCode) +
    (parcelRecipientInformation == null ? 0 : parcelRecipientInformation!.hashCode);

  @override
  String toString() => 'Data[shipmentUuid=$shipmentUuid, additionalInfo=$additionalInfo, expectedDelivery=$expectedDelivery, allEvents=$allEvents, newEvents=$newEvents, collectionPoint=$collectionPoint, parcelRecipientInformation=$parcelRecipientInformation]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'shipment_uuid'] = this.shipmentUuid;
    if (this.additionalInfo != null) {
      json[r'additional_info'] = this.additionalInfo;
    } else {
      json[r'additional_info'] = null;
    }
    if (this.expectedDelivery != null) {
      json[r'expected_delivery'] = this.expectedDelivery;
    } else {
      json[r'expected_delivery'] = null;
    }
      json[r'all_events'] = this.allEvents;
      json[r'new_events'] = this.newEvents;
    if (this.collectionPoint != null) {
      json[r'collection_point'] = this.collectionPoint;
    } else {
      json[r'collection_point'] = null;
    }
    if (this.parcelRecipientInformation != null) {
      json[r'parcel_recipient_information'] = this.parcelRecipientInformation;
    } else {
      json[r'parcel_recipient_information'] = null;
    }
    return json;
  }

  /// Returns a new [Data] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Data? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Data[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Data[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Data(
        shipmentUuid: mapValueOfType<String>(json, r'shipment_uuid')!,
        additionalInfo: mapValueOfType<Object>(json, r'additional_info'),
        expectedDelivery: ExpectedDelivery.fromJson(json[r'expected_delivery']),
        allEvents: AllEvent.listFromJson(json[r'all_events']),
        newEvents: AllEvent.listFromJson(json[r'new_events']),
        collectionPoint: CollectionPoint.fromJson(json[r'collection_point']),
        parcelRecipientInformation: mapValueOfType<String>(json, r'parcel_recipient_information'),
      );
    }
    return null;
  }

  static List<Data> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Data>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Data.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Data> mapFromJson(dynamic json) {
    final map = <String, Data>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Data.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Data-objects as value to a dart map
  static Map<String, List<Data>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Data>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Data.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'shipment_uuid',
  };
}

