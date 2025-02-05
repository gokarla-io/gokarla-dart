//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of gokarla;

class WebhookDTO {
  /// Returns a new [WebhookDTO] instance.
  WebhookDTO({
    required this.uuid,
    this.enabledEvents = const [],
    required this.secret,
    this.description,
    required this.status,
    required this.url,
    this.createdAt,
    this.updatedAt,
    required this.merchantSlug,
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

  /// Time in which the resource was created
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? createdAt;

  /// Time in which the resource was last updated after creation
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? updatedAt;

  /// Merchant slug that holds the endpoint
  String merchantSlug;

  @override
  bool operator ==(Object other) => identical(this, other) || other is WebhookDTO &&
    other.uuid == uuid &&
    _deepEquality.equals(other.enabledEvents, enabledEvents) &&
    other.secret == secret &&
    other.description == description &&
    other.status == status &&
    other.url == url &&
    other.createdAt == createdAt &&
    other.updatedAt == updatedAt &&
    other.merchantSlug == merchantSlug;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (uuid.hashCode) +
    (enabledEvents.hashCode) +
    (secret.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (status.hashCode) +
    (url.hashCode) +
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (updatedAt == null ? 0 : updatedAt!.hashCode) +
    (merchantSlug.hashCode);

  @override
  String toString() => 'WebhookDTO[uuid=$uuid, enabledEvents=$enabledEvents, secret=$secret, description=$description, status=$status, url=$url, createdAt=$createdAt, updatedAt=$updatedAt, merchantSlug=$merchantSlug]';

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
    if (this.createdAt != null) {
      json[r'created_at'] = this.createdAt!.toUtc().toIso8601String();
    } else {
      json[r'created_at'] = null;
    }
    if (this.updatedAt != null) {
      json[r'updated_at'] = this.updatedAt!.toUtc().toIso8601String();
    } else {
      json[r'updated_at'] = null;
    }
      json[r'merchant_slug'] = this.merchantSlug;
    return json;
  }

  /// Returns a new [WebhookDTO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static WebhookDTO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "WebhookDTO[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "WebhookDTO[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return WebhookDTO(
        uuid: mapValueOfType<String>(json, r'uuid')!,
        enabledEvents: WebhookEvent.listFromJson(json[r'enabled_events']),
        secret: mapValueOfType<String>(json, r'secret')!,
        description: mapValueOfType<String>(json, r'description'),
        status: WebhookStatus.fromJson(json[r'status'])!,
        url: mapValueOfType<String>(json, r'url')!,
        createdAt: mapDateTime(json, r'created_at', r''),
        updatedAt: mapDateTime(json, r'updated_at', r''),
        merchantSlug: mapValueOfType<String>(json, r'merchant_slug')!,
      );
    }
    return null;
  }

  static List<WebhookDTO> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <WebhookDTO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = WebhookDTO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, WebhookDTO> mapFromJson(dynamic json) {
    final map = <String, WebhookDTO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = WebhookDTO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of WebhookDTO-objects as value to a dart map
  static Map<String, List<WebhookDTO>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<WebhookDTO>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = WebhookDTO.listFromJson(entry.value, growable: growable,);
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
    'merchant_slug',
  };
}

