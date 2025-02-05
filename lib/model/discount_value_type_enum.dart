//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of gokarla;

/// Type of value for order and product discounts.
class DiscountValueTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const DiscountValueTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const percentage = DiscountValueTypeEnum._(r'percentage');
  static const fixedAmount = DiscountValueTypeEnum._(r'fixed_amount');

  /// List of all possible values in this [enum][DiscountValueTypeEnum].
  static const values = <DiscountValueTypeEnum>[
    percentage,
    fixedAmount,
  ];

  static DiscountValueTypeEnum? fromJson(dynamic value) => DiscountValueTypeEnumTypeTransformer().decode(value);

  static List<DiscountValueTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DiscountValueTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DiscountValueTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [DiscountValueTypeEnum] to String,
/// and [decode] dynamic data back to [DiscountValueTypeEnum].
class DiscountValueTypeEnumTypeTransformer {
  factory DiscountValueTypeEnumTypeTransformer() => _instance ??= const DiscountValueTypeEnumTypeTransformer._();

  const DiscountValueTypeEnumTypeTransformer._();

  String encode(DiscountValueTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a DiscountValueTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  DiscountValueTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'percentage': return DiscountValueTypeEnum.percentage;
        case r'fixed_amount': return DiscountValueTypeEnum.fixedAmount;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [DiscountValueTypeEnumTypeTransformer] instance.
  static DiscountValueTypeEnumTypeTransformer? _instance;
}

