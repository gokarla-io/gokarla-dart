//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of gokarla;

/// Enum for order reference types.
class OrderReferenceType {
  /// Instantiate a new enum with the provided [value].
  const OrderReferenceType._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const uuid = OrderReferenceType._(r'uuid');
  static const externalId = OrderReferenceType._(r'external_id');
  static const orderName = OrderReferenceType._(r'order_name');
  static const orderNumber = OrderReferenceType._(r'order_number');

  /// List of all possible values in this [enum][OrderReferenceType].
  static const values = <OrderReferenceType>[
    uuid,
    externalId,
    orderName,
    orderNumber,
  ];

  static OrderReferenceType? fromJson(dynamic value) => OrderReferenceTypeTypeTransformer().decode(value);

  static List<OrderReferenceType> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <OrderReferenceType>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = OrderReferenceType.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [OrderReferenceType] to String,
/// and [decode] dynamic data back to [OrderReferenceType].
class OrderReferenceTypeTypeTransformer {
  factory OrderReferenceTypeTypeTransformer() => _instance ??= const OrderReferenceTypeTypeTransformer._();

  const OrderReferenceTypeTypeTransformer._();

  String encode(OrderReferenceType data) => data.value;

  /// Decodes a [dynamic value][data] to a OrderReferenceType.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  OrderReferenceType? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'uuid': return OrderReferenceType.uuid;
        case r'external_id': return OrderReferenceType.externalId;
        case r'order_name': return OrderReferenceType.orderName;
        case r'order_number': return OrderReferenceType.orderNumber;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [OrderReferenceTypeTypeTransformer] instance.
  static OrderReferenceTypeTypeTransformer? _instance;
}

