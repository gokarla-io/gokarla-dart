//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of gokarla;

/// Webhook Event Type.
class WebhookEvent {
  /// Instantiate a new enum with the provided [value].
  const WebhookEvent._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const star = WebhookEvent._(r'*');

  /// List of all possible values in this [enum][WebhookEvent].
  static const values = <WebhookEvent>[
    star,
  ];

  static WebhookEvent? fromJson(dynamic value) => WebhookEventTypeTransformer().decode(value);

  static List<WebhookEvent> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <WebhookEvent>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = WebhookEvent.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [WebhookEvent] to String,
/// and [decode] dynamic data back to [WebhookEvent].
class WebhookEventTypeTransformer {
  factory WebhookEventTypeTransformer() => _instance ??= const WebhookEventTypeTransformer._();

  const WebhookEventTypeTransformer._();

  String encode(WebhookEvent data) => data.value;

  /// Decodes a [dynamic value][data] to a WebhookEvent.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  WebhookEvent? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'*': return WebhookEvent.star;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [WebhookEventTypeTransformer] instance.
  static WebhookEventTypeTransformer? _instance;
}

