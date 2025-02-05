//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of gokarla;

class ShopifyWebhookDTO {
  /// Returns a new [ShopifyWebhookDTO] instance.
  ShopifyWebhookDTO({
    required this.webhookType,
    this.createdAt,
    this.updatedAt,
    required this.uuid,
    required this.merchantSlug,
    required this.name,
    this.shopifyId,
    required this.topic,
    required this.hookUrl,
    this.fields = const [],
  });

  /// Webhook Type
  ShopifyWebhookType webhookType;

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

  /// Webhook UUID
  String uuid;

  /// Merchant slug for the webhook
  String merchantSlug;

  /// Name of the webhook
  String name;

  /// Shopify Webhook ID
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? shopifyId;

  /// Webhook Topic
  String topic;

  /// Webhook URL
  String hookUrl;

  /// Optional inclusive fields filter
  List<String> fields;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ShopifyWebhookDTO &&
    other.webhookType == webhookType &&
    other.createdAt == createdAt &&
    other.updatedAt == updatedAt &&
    other.uuid == uuid &&
    other.merchantSlug == merchantSlug &&
    other.name == name &&
    other.shopifyId == shopifyId &&
    other.topic == topic &&
    other.hookUrl == hookUrl &&
    _deepEquality.equals(other.fields, fields);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (webhookType.hashCode) +
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (updatedAt == null ? 0 : updatedAt!.hashCode) +
    (uuid.hashCode) +
    (merchantSlug.hashCode) +
    (name.hashCode) +
    (shopifyId == null ? 0 : shopifyId!.hashCode) +
    (topic.hashCode) +
    (hookUrl.hashCode) +
    (fields.hashCode);

  @override
  String toString() => 'ShopifyWebhookDTO[webhookType=$webhookType, createdAt=$createdAt, updatedAt=$updatedAt, uuid=$uuid, merchantSlug=$merchantSlug, name=$name, shopifyId=$shopifyId, topic=$topic, hookUrl=$hookUrl, fields=$fields]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'webhook_type'] = this.webhookType;
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
      json[r'uuid'] = this.uuid;
      json[r'merchant_slug'] = this.merchantSlug;
      json[r'name'] = this.name;
    if (this.shopifyId != null) {
      json[r'shopify_id'] = this.shopifyId;
    } else {
      json[r'shopify_id'] = null;
    }
      json[r'topic'] = this.topic;
      json[r'hook_url'] = this.hookUrl;
      json[r'fields'] = this.fields;
    return json;
  }

  /// Returns a new [ShopifyWebhookDTO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ShopifyWebhookDTO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ShopifyWebhookDTO[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ShopifyWebhookDTO[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ShopifyWebhookDTO(
        webhookType: ShopifyWebhookType.fromJson(json[r'webhook_type'])!,
        createdAt: mapDateTime(json, r'created_at', r''),
        updatedAt: mapDateTime(json, r'updated_at', r''),
        uuid: mapValueOfType<String>(json, r'uuid')!,
        merchantSlug: mapValueOfType<String>(json, r'merchant_slug')!,
        name: mapValueOfType<String>(json, r'name')!,
        shopifyId: mapValueOfType<int>(json, r'shopify_id'),
        topic: mapValueOfType<String>(json, r'topic')!,
        hookUrl: mapValueOfType<String>(json, r'hook_url')!,
        fields: json[r'fields'] is Iterable
            ? (json[r'fields'] as Iterable).cast<String>().toList(growable: false)
            : const [],
      );
    }
    return null;
  }

  static List<ShopifyWebhookDTO> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ShopifyWebhookDTO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ShopifyWebhookDTO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ShopifyWebhookDTO> mapFromJson(dynamic json) {
    final map = <String, ShopifyWebhookDTO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ShopifyWebhookDTO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ShopifyWebhookDTO-objects as value to a dart map
  static Map<String, List<ShopifyWebhookDTO>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ShopifyWebhookDTO>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ShopifyWebhookDTO.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'webhook_type',
    'uuid',
    'merchant_slug',
    'name',
    'topic',
    'hook_url',
  };
}

