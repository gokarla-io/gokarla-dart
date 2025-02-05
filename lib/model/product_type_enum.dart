//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of gokarla;

/// Product Type.
class ProductTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const ProductTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const product = ProductTypeEnum._(r'product');
  static const bundle = ProductTypeEnum._(r'bundle');

  /// List of all possible values in this [enum][ProductTypeEnum].
  static const values = <ProductTypeEnum>[
    product,
    bundle,
  ];

  static ProductTypeEnum? fromJson(dynamic value) => ProductTypeEnumTypeTransformer().decode(value);

  static List<ProductTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ProductTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ProductTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ProductTypeEnum] to String,
/// and [decode] dynamic data back to [ProductTypeEnum].
class ProductTypeEnumTypeTransformer {
  factory ProductTypeEnumTypeTransformer() => _instance ??= const ProductTypeEnumTypeTransformer._();

  const ProductTypeEnumTypeTransformer._();

  String encode(ProductTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ProductTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ProductTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'product': return ProductTypeEnum.product;
        case r'bundle': return ProductTypeEnum.bundle;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ProductTypeEnumTypeTransformer] instance.
  static ProductTypeEnumTypeTransformer? _instance;
}

