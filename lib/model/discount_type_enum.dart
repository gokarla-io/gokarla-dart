//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of gokarla;

/// Type of discount.
class DiscountTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const DiscountTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const product = DiscountTypeEnum._(r'product');
  static const order = DiscountTypeEnum._(r'order');
  static const shipping = DiscountTypeEnum._(r'shipping');

  /// List of all possible values in this [enum][DiscountTypeEnum].
  static const values = <DiscountTypeEnum>[
    product,
    order,
    shipping,
  ];

  static DiscountTypeEnum? fromJson(dynamic value) => DiscountTypeEnumTypeTransformer().decode(value);

  static List<DiscountTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DiscountTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DiscountTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [DiscountTypeEnum] to String,
/// and [decode] dynamic data back to [DiscountTypeEnum].
class DiscountTypeEnumTypeTransformer {
  factory DiscountTypeEnumTypeTransformer() => _instance ??= const DiscountTypeEnumTypeTransformer._();

  const DiscountTypeEnumTypeTransformer._();

  String encode(DiscountTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a DiscountTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  DiscountTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'product': return DiscountTypeEnum.product;
        case r'order': return DiscountTypeEnum.order;
        case r'shipping': return DiscountTypeEnum.shipping;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [DiscountTypeEnumTypeTransformer] instance.
  static DiscountTypeEnumTypeTransformer? _instance;
}

