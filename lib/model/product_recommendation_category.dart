//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of gokarla;

/// Type of product recommendation promotion category.
class ProductRecommendationCategory {
  /// Instantiate a new enum with the provided [value].
  const ProductRecommendationCategory._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const sale = ProductRecommendationCategory._(r'sale');
  static const new_ = ProductRecommendationCategory._(r'new');

  /// List of all possible values in this [enum][ProductRecommendationCategory].
  static const values = <ProductRecommendationCategory>[
    sale,
    new_,
  ];

  static ProductRecommendationCategory? fromJson(dynamic value) => ProductRecommendationCategoryTypeTransformer().decode(value);

  static List<ProductRecommendationCategory> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ProductRecommendationCategory>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ProductRecommendationCategory.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ProductRecommendationCategory] to String,
/// and [decode] dynamic data back to [ProductRecommendationCategory].
class ProductRecommendationCategoryTypeTransformer {
  factory ProductRecommendationCategoryTypeTransformer() => _instance ??= const ProductRecommendationCategoryTypeTransformer._();

  const ProductRecommendationCategoryTypeTransformer._();

  String encode(ProductRecommendationCategory data) => data.value;

  /// Decodes a [dynamic value][data] to a ProductRecommendationCategory.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ProductRecommendationCategory? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'sale': return ProductRecommendationCategory.sale;
        case r'new': return ProductRecommendationCategory.new_;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ProductRecommendationCategoryTypeTransformer] instance.
  static ProductRecommendationCategoryTypeTransformer? _instance;
}

