//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of gokarla;

class EventAdditionalInfo {
  /// Returns a new [EventAdditionalInfo] instance.
  EventAdditionalInfo({
    this.pickupPoint,
    this.pickupPointUrl,
    this.pickupTime,
    this.pickupOpeningHours = const {},
    this.mailMessage,
    this.merchantName,
    this.preferredDeliveryDate,
    this.date,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? pickupPoint;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? pickupPointUrl;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? pickupTime;

  Map<String, String> pickupOpeningHours;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? mailMessage;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? merchantName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? preferredDeliveryDate;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? date;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EventAdditionalInfo &&
    other.pickupPoint == pickupPoint &&
    other.pickupPointUrl == pickupPointUrl &&
    other.pickupTime == pickupTime &&
    _deepEquality.equals(other.pickupOpeningHours, pickupOpeningHours) &&
    other.mailMessage == mailMessage &&
    other.merchantName == merchantName &&
    other.preferredDeliveryDate == preferredDeliveryDate &&
    other.date == date;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (pickupPoint == null ? 0 : pickupPoint!.hashCode) +
    (pickupPointUrl == null ? 0 : pickupPointUrl!.hashCode) +
    (pickupTime == null ? 0 : pickupTime!.hashCode) +
    (pickupOpeningHours.hashCode) +
    (mailMessage == null ? 0 : mailMessage!.hashCode) +
    (merchantName == null ? 0 : merchantName!.hashCode) +
    (preferredDeliveryDate == null ? 0 : preferredDeliveryDate!.hashCode) +
    (date == null ? 0 : date!.hashCode);

  @override
  String toString() => 'EventAdditionalInfo[pickupPoint=$pickupPoint, pickupPointUrl=$pickupPointUrl, pickupTime=$pickupTime, pickupOpeningHours=$pickupOpeningHours, mailMessage=$mailMessage, merchantName=$merchantName, preferredDeliveryDate=$preferredDeliveryDate, date=$date]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.pickupPoint != null) {
      json[r'pickup_point'] = this.pickupPoint;
    } else {
      json[r'pickup_point'] = null;
    }
    if (this.pickupPointUrl != null) {
      json[r'pickup_point_url'] = this.pickupPointUrl;
    } else {
      json[r'pickup_point_url'] = null;
    }
    if (this.pickupTime != null) {
      json[r'pickup_time'] = this.pickupTime!.toUtc().toIso8601String();
    } else {
      json[r'pickup_time'] = null;
    }
      json[r'pickup_opening_hours'] = this.pickupOpeningHours;
    if (this.mailMessage != null) {
      json[r'mail_message'] = this.mailMessage;
    } else {
      json[r'mail_message'] = null;
    }
    if (this.merchantName != null) {
      json[r'merchant_name'] = this.merchantName;
    } else {
      json[r'merchant_name'] = null;
    }
    if (this.preferredDeliveryDate != null) {
      json[r'preferred_delivery_date'] = this.preferredDeliveryDate!.toUtc().toIso8601String();
    } else {
      json[r'preferred_delivery_date'] = null;
    }
    if (this.date != null) {
      json[r'date'] = this.date!.toUtc().toIso8601String();
    } else {
      json[r'date'] = null;
    }
    return json;
  }

  /// Returns a new [EventAdditionalInfo] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EventAdditionalInfo? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EventAdditionalInfo[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EventAdditionalInfo[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EventAdditionalInfo(
        pickupPoint: mapValueOfType<String>(json, r'pickup_point'),
        pickupPointUrl: mapValueOfType<String>(json, r'pickup_point_url'),
        pickupTime: mapDateTime(json, r'pickup_time', r''),
        pickupOpeningHours: mapCastOfType<String, String>(json, r'pickup_opening_hours') ?? const {},
        mailMessage: mapValueOfType<String>(json, r'mail_message'),
        merchantName: mapValueOfType<String>(json, r'merchant_name'),
        preferredDeliveryDate: mapDateTime(json, r'preferred_delivery_date', r''),
        date: mapDateTime(json, r'date', r''),
      );
    }
    return null;
  }

  static List<EventAdditionalInfo> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EventAdditionalInfo>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EventAdditionalInfo.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EventAdditionalInfo> mapFromJson(dynamic json) {
    final map = <String, EventAdditionalInfo>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EventAdditionalInfo.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EventAdditionalInfo-objects as value to a dart map
  static Map<String, List<EventAdditionalInfo>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EventAdditionalInfo>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EventAdditionalInfo.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

