//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of gokarla;

class ProductRecommendationDTO {
  /// Returns a new [ProductRecommendationDTO] instance.
  ProductRecommendationDTO({
    this.title,
    this.imageUrl = 'https://imagedelivery.net/dXeULRC3hlKS2IJjZmVx9Q/c5a76e52-e2d0-4c27-fc04-fcde1b725200/public',
    required this.productUrl,
    this.price,
    required this.currency,
    this.category,
    this.discount,
    this.translations = const [],
    this.sku,
  });

  /// Product Title
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? title;

  /// Product Image URL
  String imageUrl;

  /// Product hyperlink
  String productUrl;

  /// Product Price
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? price;

  /// The currency of the price
  String currency;

  /// Promotion category for the product
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ProductRecommendationCategory? category;

  /// Product Discount
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ProductSaleDiscountDTO? discount;

  /// Translations for the product recommendation strings
  List<ProductRecommendationI18n> translations;

  /// SKU of the product
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? sku;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ProductRecommendationDTO &&
    other.title == title &&
    other.imageUrl == imageUrl &&
    other.productUrl == productUrl &&
    other.price == price &&
    other.currency == currency &&
    other.category == category &&
    other.discount == discount &&
    _deepEquality.equals(other.translations, translations) &&
    other.sku == sku;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (title == null ? 0 : title!.hashCode) +
    (imageUrl.hashCode) +
    (productUrl.hashCode) +
    (price == null ? 0 : price!.hashCode) +
    (currency.hashCode) +
    (category == null ? 0 : category!.hashCode) +
    (discount == null ? 0 : discount!.hashCode) +
    (translations.hashCode) +
    (sku == null ? 0 : sku!.hashCode);

  @override
  String toString() => 'ProductRecommendationDTO[title=$title, imageUrl=$imageUrl, productUrl=$productUrl, price=$price, currency=$currency, category=$category, discount=$discount, translations=$translations, sku=$sku]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.title != null) {
      json[r'title'] = this.title;
    } else {
      json[r'title'] = null;
    }
      json[r'image_url'] = this.imageUrl;
      json[r'product_url'] = this.productUrl;
    if (this.price != null) {
      json[r'price'] = this.price;
    } else {
      json[r'price'] = null;
    }
      json[r'currency'] = this.currency;
    if (this.category != null) {
      json[r'category'] = this.category;
    } else {
      json[r'category'] = null;
    }
    if (this.discount != null) {
      json[r'discount'] = this.discount;
    } else {
      json[r'discount'] = null;
    }
      json[r'translations'] = this.translations;
    if (this.sku != null) {
      json[r'sku'] = this.sku;
    } else {
      json[r'sku'] = null;
    }
    return json;
  }

  /// Returns a new [ProductRecommendationDTO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ProductRecommendationDTO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ProductRecommendationDTO[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ProductRecommendationDTO[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ProductRecommendationDTO(
        title: mapValueOfType<String>(json, r'title'),
        imageUrl: mapValueOfType<String>(json, r'image_url') ?? 'https://imagedelivery.net/dXeULRC3hlKS2IJjZmVx9Q/c5a76e52-e2d0-4c27-fc04-fcde1b725200/public',
        productUrl: mapValueOfType<String>(json, r'product_url')!,
        price: num.parse('${json[r'price']}'),
        currency: mapValueOfType<String>(json, r'currency')!,
        category: ProductRecommendationCategory.fromJson(json[r'category']),
        discount: ProductSaleDiscountDTO.fromJson(json[r'discount']),
        translations: ProductRecommendationI18n.listFromJson(json[r'translations']),
        sku: mapValueOfType<String>(json, r'sku'),
      );
    }
    return null;
  }

  static List<ProductRecommendationDTO> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ProductRecommendationDTO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ProductRecommendationDTO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ProductRecommendationDTO> mapFromJson(dynamic json) {
    final map = <String, ProductRecommendationDTO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ProductRecommendationDTO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ProductRecommendationDTO-objects as value to a dart map
  static Map<String, List<ProductRecommendationDTO>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ProductRecommendationDTO>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ProductRecommendationDTO.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'product_url',
    'currency',
  };
}

