//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of gokarla;

class CarrierHealthUpdateWebhookPayload {
  /// Returns a new [CarrierHealthUpdateWebhookPayload] instance.
  CarrierHealthUpdateWebhookPayload({
    required this.carrierReference,
    required this.apiKeyId,
    required this.healthy,
    required this.updatedAt,
  });

  String carrierReference;

  String apiKeyId;

  bool healthy;

  DateTime updatedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CarrierHealthUpdateWebhookPayload &&
    other.carrierReference == carrierReference &&
    other.apiKeyId == apiKeyId &&
    other.healthy == healthy &&
    other.updatedAt == updatedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (carrierReference.hashCode) +
    (apiKeyId.hashCode) +
    (healthy.hashCode) +
    (updatedAt.hashCode);

  @override
  String toString() => 'CarrierHealthUpdateWebhookPayload[carrierReference=$carrierReference, apiKeyId=$apiKeyId, healthy=$healthy, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'carrier_reference'] = this.carrierReference;
      json[r'api_key_id'] = this.apiKeyId;
      json[r'healthy'] = this.healthy;
      json[r'updated_at'] = this.updatedAt.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [CarrierHealthUpdateWebhookPayload] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CarrierHealthUpdateWebhookPayload? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CarrierHealthUpdateWebhookPayload[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CarrierHealthUpdateWebhookPayload[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CarrierHealthUpdateWebhookPayload(
        carrierReference: mapValueOfType<String>(json, r'carrier_reference')!,
        apiKeyId: mapValueOfType<String>(json, r'api_key_id')!,
        healthy: mapValueOfType<bool>(json, r'healthy')!,
        updatedAt: mapDateTime(json, r'updated_at', r'')!,
      );
    }
    return null;
  }

  static List<CarrierHealthUpdateWebhookPayload> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CarrierHealthUpdateWebhookPayload>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CarrierHealthUpdateWebhookPayload.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CarrierHealthUpdateWebhookPayload> mapFromJson(dynamic json) {
    final map = <String, CarrierHealthUpdateWebhookPayload>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CarrierHealthUpdateWebhookPayload.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CarrierHealthUpdateWebhookPayload-objects as value to a dart map
  static Map<String, List<CarrierHealthUpdateWebhookPayload>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CarrierHealthUpdateWebhookPayload>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CarrierHealthUpdateWebhookPayload.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'carrier_reference',
    'api_key_id',
    'healthy',
    'updated_at',
  };
}

