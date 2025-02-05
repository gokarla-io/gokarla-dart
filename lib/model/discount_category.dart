//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of gokarla;

/// Type of the Discount to store.
class DiscountCategory {
  /// Instantiate a new enum with the provided [value].
  const DiscountCategory._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const percentage = DiscountCategory._(r'percentage');
  static const fixedAmount = DiscountCategory._(r'fixed_amount');
  static const freeShipping = DiscountCategory._(r'free_shipping');

  /// List of all possible values in this [enum][DiscountCategory].
  static const values = <DiscountCategory>[
    percentage,
    fixedAmount,
    freeShipping,
  ];

  static DiscountCategory? fromJson(dynamic value) => DiscountCategoryTypeTransformer().decode(value);

  static List<DiscountCategory> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DiscountCategory>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DiscountCategory.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [DiscountCategory] to String,
/// and [decode] dynamic data back to [DiscountCategory].
class DiscountCategoryTypeTransformer {
  factory DiscountCategoryTypeTransformer() => _instance ??= const DiscountCategoryTypeTransformer._();

  const DiscountCategoryTypeTransformer._();

  String encode(DiscountCategory data) => data.value;

  /// Decodes a [dynamic value][data] to a DiscountCategory.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  DiscountCategory? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'percentage': return DiscountCategory.percentage;
        case r'fixed_amount': return DiscountCategory.fixedAmount;
        case r'free_shipping': return DiscountCategory.freeShipping;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [DiscountCategoryTypeTransformer] instance.
  static DiscountCategoryTypeTransformer? _instance;
}

