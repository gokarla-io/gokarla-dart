//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of gokarla;

/// The type of Shopify Webhooks supported (exposed by Karla via API).
class ShopifyWebhookType {
  /// Instantiate a new enum with the provided [value].
  const ShopifyWebhookType._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const orderCreation = ShopifyWebhookType._(r'order_creation');
  static const orderFulfillment = ShopifyWebhookType._(r'order_fulfillment');
  static const orderPartialFulfillment = ShopifyWebhookType._(r'order_partial_fulfillment');
  static const orderUpdate = ShopifyWebhookType._(r'order_update');
  static const orderFulfillmentUpdate = ShopifyWebhookType._(r'order_fulfillment_update');

  /// List of all possible values in this [enum][ShopifyWebhookType].
  static const values = <ShopifyWebhookType>[
    orderCreation,
    orderFulfillment,
    orderPartialFulfillment,
    orderUpdate,
    orderFulfillmentUpdate,
  ];

  static ShopifyWebhookType? fromJson(dynamic value) => ShopifyWebhookTypeTypeTransformer().decode(value);

  static List<ShopifyWebhookType> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ShopifyWebhookType>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ShopifyWebhookType.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ShopifyWebhookType] to String,
/// and [decode] dynamic data back to [ShopifyWebhookType].
class ShopifyWebhookTypeTypeTransformer {
  factory ShopifyWebhookTypeTypeTransformer() => _instance ??= const ShopifyWebhookTypeTypeTransformer._();

  const ShopifyWebhookTypeTypeTransformer._();

  String encode(ShopifyWebhookType data) => data.value;

  /// Decodes a [dynamic value][data] to a ShopifyWebhookType.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ShopifyWebhookType? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'order_creation': return ShopifyWebhookType.orderCreation;
        case r'order_fulfillment': return ShopifyWebhookType.orderFulfillment;
        case r'order_partial_fulfillment': return ShopifyWebhookType.orderPartialFulfillment;
        case r'order_update': return ShopifyWebhookType.orderUpdate;
        case r'order_fulfillment_update': return ShopifyWebhookType.orderFulfillmentUpdate;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ShopifyWebhookTypeTypeTransformer] instance.
  static ShopifyWebhookTypeTypeTransformer? _instance;
}

