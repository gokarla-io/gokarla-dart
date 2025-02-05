//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of gokarla;

/// Selection method for line items or shipping lines to be discounted.
class DiscountTargetSelectionEnum {
  /// Instantiate a new enum with the provided [value].
  const DiscountTargetSelectionEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const all = DiscountTargetSelectionEnum._(r'all');
  static const group = DiscountTargetSelectionEnum._(r'group');
  static const specific = DiscountTargetSelectionEnum._(r'specific');

  /// List of all possible values in this [enum][DiscountTargetSelectionEnum].
  static const values = <DiscountTargetSelectionEnum>[
    all,
    group,
    specific,
  ];

  static DiscountTargetSelectionEnum? fromJson(dynamic value) => DiscountTargetSelectionEnumTypeTransformer().decode(value);

  static List<DiscountTargetSelectionEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DiscountTargetSelectionEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DiscountTargetSelectionEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [DiscountTargetSelectionEnum] to String,
/// and [decode] dynamic data back to [DiscountTargetSelectionEnum].
class DiscountTargetSelectionEnumTypeTransformer {
  factory DiscountTargetSelectionEnumTypeTransformer() => _instance ??= const DiscountTargetSelectionEnumTypeTransformer._();

  const DiscountTargetSelectionEnumTypeTransformer._();

  String encode(DiscountTargetSelectionEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a DiscountTargetSelectionEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  DiscountTargetSelectionEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'all': return DiscountTargetSelectionEnum.all;
        case r'group': return DiscountTargetSelectionEnum.group;
        case r'specific': return DiscountTargetSelectionEnum.specific;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [DiscountTargetSelectionEnumTypeTransformer] instance.
  static DiscountTargetSelectionEnumTypeTransformer? _instance;
}

