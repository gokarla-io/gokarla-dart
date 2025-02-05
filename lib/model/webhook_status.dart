//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of gokarla;

/// Webhook Status Type.
class WebhookStatus {
  /// Instantiate a new enum with the provided [value].
  const WebhookStatus._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const active = WebhookStatus._(r'active');
  static const inactive = WebhookStatus._(r'inactive');

  /// List of all possible values in this [enum][WebhookStatus].
  static const values = <WebhookStatus>[
    active,
    inactive,
  ];

  static WebhookStatus? fromJson(dynamic value) => WebhookStatusTypeTransformer().decode(value);

  static List<WebhookStatus> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <WebhookStatus>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = WebhookStatus.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [WebhookStatus] to String,
/// and [decode] dynamic data back to [WebhookStatus].
class WebhookStatusTypeTransformer {
  factory WebhookStatusTypeTransformer() => _instance ??= const WebhookStatusTypeTransformer._();

  const WebhookStatusTypeTransformer._();

  String encode(WebhookStatus data) => data.value;

  /// Decodes a [dynamic value][data] to a WebhookStatus.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  WebhookStatus? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'active': return WebhookStatus.active;
        case r'inactive': return WebhookStatus.inactive;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [WebhookStatusTypeTransformer] instance.
  static WebhookStatusTypeTransformer? _instance;
}

