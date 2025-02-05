//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of gokarla;

class ShipmentActionRequestDTO {
  /// Returns a new [ShipmentActionRequestDTO] instance.
  ShipmentActionRequestDTO({
    required this.shipmentUuid,
    required this.action,
    this.payload = {},
  });

  /// Shipment UUID to be processed
  String shipmentUuid;

  /// The action to be taken on the shipment
  ShipmentAction action;

  /// The payload to be sent with the action
  Object payload;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ShipmentActionRequestDTO &&
    other.shipmentUuid == shipmentUuid &&
    other.action == action &&
    other.payload == payload;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (shipmentUuid.hashCode) +
    (action.hashCode) +
    (payload.hashCode);

  @override
  String toString() => 'ShipmentActionRequestDTO[shipmentUuid=$shipmentUuid, action=$action, payload=$payload]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'shipment_uuid'] = this.shipmentUuid;
      json[r'action'] = this.action;
      json[r'payload'] = this.payload;
    return json;
  }

  /// Returns a new [ShipmentActionRequestDTO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ShipmentActionRequestDTO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ShipmentActionRequestDTO[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ShipmentActionRequestDTO[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ShipmentActionRequestDTO(
        shipmentUuid: mapValueOfType<String>(json, r'shipment_uuid')!,
        action: ShipmentAction.fromJson(json[r'action'])!,
        payload: mapValueOfType<Object>(json, r'payload') ?? {},
      );
    }
    return null;
  }

  static List<ShipmentActionRequestDTO> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ShipmentActionRequestDTO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ShipmentActionRequestDTO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ShipmentActionRequestDTO> mapFromJson(dynamic json) {
    final map = <String, ShipmentActionRequestDTO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ShipmentActionRequestDTO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ShipmentActionRequestDTO-objects as value to a dart map
  static Map<String, List<ShipmentActionRequestDTO>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ShipmentActionRequestDTO>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ShipmentActionRequestDTO.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'shipment_uuid',
    'action',
  };
}

