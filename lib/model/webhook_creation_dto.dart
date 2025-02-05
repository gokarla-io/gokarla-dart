//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of gokarla;

class WebhookCreationDTO {
  /// Returns a new [WebhookCreationDTO] instance.
  WebhookCreationDTO({
    required this.uuid,
    this.enabledEvents = const [],
    required this.secret,
    this.description,
    required this.status,
    required this.url,
  });

  /// Unique identifier for the object
  String uuid;

  /// The list of events to enable for this endpoint. ['*'] indicates that all events are enabled.
  List<WebhookEvent> enabledEvents;

  /// The secret used to generate webhook signatures. Only returned at creation.
  String secret;

  /// An optional description for the endpoint
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? description;

  /// The status of the webhook.
  WebhookStatus status;

  /// The URL of the webhook endpoint
  String url;

  @override
  bool operator ==(Object other) => identical(this, other) || other is WebhookCreationDTO &&
    other.uuid == uuid &&
    _deepEquality.equals(other.enabledEvents, enabledEvents) &&
    other.secret == secret &&
    other.description == description &&
    other.status == status &&
    other.url == url;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (uuid.hashCode) +
    (enabledEvents.hashCode) +
    (secret.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (status.hashCode) +
    (url.hashCode);

  @override
  String toString() => 'WebhookCreationDTO[uuid=$uuid, enabledEvents=$enabledEvents, secret=$secret, description=$description, status=$status, url=$url]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'uuid'] = this.uuid;
      json[r'enabled_events'] = this.enabledEvents;
      json[r'secret'] = this.secret;
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
      json[r'status'] = this.status;
      json[r'url'] = this.url;
    return json;
  }

  /// Returns a new [WebhookCreationDTO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static WebhookCreationDTO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "WebhookCreationDTO[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "WebhookCreationDTO[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return WebhookCreationDTO(
        uuid: mapValueOfType<String>(json, r'uuid')!,
        enabledEvents: WebhookEvent.listFromJson(json[r'enabled_events']),
        secret: mapValueOfType<String>(json, r'secret')!,
        description: mapValueOfType<String>(json, r'description'),
        status: WebhookStatus.fromJson(json[r'status'])!,
        url: mapValueOfType<String>(json, r'url')!,
      );
    }
    return null;
  }

  static List<WebhookCreationDTO> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <WebhookCreationDTO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = WebhookCreationDTO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, WebhookCreationDTO> mapFromJson(dynamic json) {
    final map = <String, WebhookCreationDTO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = WebhookCreationDTO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of WebhookCreationDTO-objects as value to a dart map
  static Map<String, List<WebhookCreationDTO>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<WebhookCreationDTO>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = WebhookCreationDTO.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'uuid',
    'secret',
    'status',
    'url',
  };
}

