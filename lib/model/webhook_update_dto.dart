//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of gokarla;

class WebhookUpdateDTO {
  /// Returns a new [WebhookUpdateDTO] instance.
  WebhookUpdateDTO({
    this.enabledEvents = const [],
    this.description,
    this.status,
    this.url,
  });

  /// The list of events to enable for this endpoint. ['*'] indicates that all events are enabled.
  List<WebhookEvent> enabledEvents;

  /// An optional description for the endpoint
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? description;

  /// The status of the webhook.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  WebhookStatus? status;

  /// The URL of the webhook endpoint
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? url;

  @override
  bool operator ==(Object other) => identical(this, other) || other is WebhookUpdateDTO &&
    _deepEquality.equals(other.enabledEvents, enabledEvents) &&
    other.description == description &&
    other.status == status &&
    other.url == url;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (enabledEvents.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (status == null ? 0 : status!.hashCode) +
    (url == null ? 0 : url!.hashCode);

  @override
  String toString() => 'WebhookUpdateDTO[enabledEvents=$enabledEvents, description=$description, status=$status, url=$url]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'enabled_events'] = this.enabledEvents;
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    if (this.url != null) {
      json[r'url'] = this.url;
    } else {
      json[r'url'] = null;
    }
    return json;
  }

  /// Returns a new [WebhookUpdateDTO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static WebhookUpdateDTO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "WebhookUpdateDTO[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "WebhookUpdateDTO[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return WebhookUpdateDTO(
        enabledEvents: WebhookEvent.listFromJson(json[r'enabled_events']),
        description: mapValueOfType<String>(json, r'description'),
        status: WebhookStatus.fromJson(json[r'status']),
        url: mapValueOfType<String>(json, r'url'),
      );
    }
    return null;
  }

  static List<WebhookUpdateDTO> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <WebhookUpdateDTO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = WebhookUpdateDTO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, WebhookUpdateDTO> mapFromJson(dynamic json) {
    final map = <String, WebhookUpdateDTO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = WebhookUpdateDTO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of WebhookUpdateDTO-objects as value to a dart map
  static Map<String, List<WebhookUpdateDTO>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<WebhookUpdateDTO>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = WebhookUpdateDTO.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

