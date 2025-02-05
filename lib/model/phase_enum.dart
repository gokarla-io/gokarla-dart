//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of gokarla;

/// Karla internal shipment phase describing the phase the shipment is in.
class PhaseEnum {
  /// Instantiate a new enum with the provided [value].
  const PhaseEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const collect = PhaseEnum._(r'collect');
  static const deliveryFailed = PhaseEnum._(r'delivery_failed');
  static const delivered = PhaseEnum._(r'delivered');
  static const inDelivery = PhaseEnum._(r'in_delivery');
  static const inTransit = PhaseEnum._(r'in_transit');
  static const orderCreated = PhaseEnum._(r'order_created');
  static const orderProcessed = PhaseEnum._(r'order_processed');
  static const returnCreated = PhaseEnum._(r'return_created');
  static const returnFailed = PhaseEnum._(r'return_failed');
  static const returnReceived = PhaseEnum._(r'return_received');
  static const returnTransit = PhaseEnum._(r'return_transit');
  static const returned = PhaseEnum._(r'returned');

  /// List of all possible values in this [enum][PhaseEnum].
  static const values = <PhaseEnum>[
    collect,
    deliveryFailed,
    delivered,
    inDelivery,
    inTransit,
    orderCreated,
    orderProcessed,
    returnCreated,
    returnFailed,
    returnReceived,
    returnTransit,
    returned,
  ];

  static PhaseEnum? fromJson(dynamic value) => PhaseEnumTypeTransformer().decode(value);

  static List<PhaseEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PhaseEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PhaseEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [PhaseEnum] to String,
/// and [decode] dynamic data back to [PhaseEnum].
class PhaseEnumTypeTransformer {
  factory PhaseEnumTypeTransformer() => _instance ??= const PhaseEnumTypeTransformer._();

  const PhaseEnumTypeTransformer._();

  String encode(PhaseEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a PhaseEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  PhaseEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'collect': return PhaseEnum.collect;
        case r'delivery_failed': return PhaseEnum.deliveryFailed;
        case r'delivered': return PhaseEnum.delivered;
        case r'in_delivery': return PhaseEnum.inDelivery;
        case r'in_transit': return PhaseEnum.inTransit;
        case r'order_created': return PhaseEnum.orderCreated;
        case r'order_processed': return PhaseEnum.orderProcessed;
        case r'return_created': return PhaseEnum.returnCreated;
        case r'return_failed': return PhaseEnum.returnFailed;
        case r'return_received': return PhaseEnum.returnReceived;
        case r'return_transit': return PhaseEnum.returnTransit;
        case r'returned': return PhaseEnum.returned;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [PhaseEnumTypeTransformer] instance.
  static PhaseEnumTypeTransformer? _instance;
}

