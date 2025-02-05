# gokarla.model.ProductRecommendationDTO

## Load the model package
```dart
import 'package:gokarla/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**title** | **String** | Product Title | [optional] 
**imageUrl** | **String** | Product Image URL | [optional] [default to 'https://imagedelivery.net/dXeULRC3hlKS2IJjZmVx9Q/c5a76e52-e2d0-4c27-fc04-fcde1b725200/public']
**productUrl** | **String** | Product hyperlink | 
**price** | **num** | Product Price | [optional] 
**currency** | **String** | The currency of the price | 
**category** | [**ProductRecommendationCategory**](ProductRecommendationCategory.md) | Promotion category for the product | [optional] 
**discount** | [**ProductSaleDiscountDTO**](ProductSaleDiscountDTO.md) | Product Discount | [optional] 
**translations** | [**List<ProductRecommendationI18n>**](ProductRecommendationI18n.md) | Translations for the product recommendation strings | [optional] [default to const []]
**sku** | **String** | SKU of the product | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


