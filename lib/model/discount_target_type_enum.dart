//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of gokarla;

/// Type of item that the discount applies to..
class DiscountTargetTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const DiscountTargetTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const lineItem = DiscountTargetTypeEnum._(r'line_item');
  static const shippingLine = DiscountTargetTypeEnum._(r'shipping_line');

  /// List of all possible values in this [enum][DiscountTargetTypeEnum].
  static const values = <DiscountTargetTypeEnum>[
    lineItem,
    shippingLine,
  ];

  static DiscountTargetTypeEnum? fromJson(dynamic value) => DiscountTargetTypeEnumTypeTransformer().decode(value);

  static List<DiscountTargetTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DiscountTargetTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DiscountTargetTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [DiscountTargetTypeEnum] to String,
/// and [decode] dynamic data back to [DiscountTargetTypeEnum].
class DiscountTargetTypeEnumTypeTransformer {
  factory DiscountTargetTypeEnumTypeTransformer() => _instance ??= const DiscountTargetTypeEnumTypeTransformer._();

  const DiscountTargetTypeEnumTypeTransformer._();

  String encode(DiscountTargetTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a DiscountTargetTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  DiscountTargetTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'line_item': return DiscountTargetTypeEnum.lineItem;
        case r'shipping_line': return DiscountTargetTypeEnum.shippingLine;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [DiscountTargetTypeEnumTypeTransformer] instance.
  static DiscountTargetTypeEnumTypeTransformer? _instance;
}

