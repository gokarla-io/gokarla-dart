# gokarla.model.PromotionProperties

## Load the model package
```dart
import 'package:gokarla/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**title** | **String** | Campaign Title | [optional] 
**subtitle** | **String** | Promotion Subtitle | [optional] 
**ctaLabel** | **String** | Call to Action Label (e.g. for the story widget) | [optional] 
**ctaUrl** | **String** | Call to Action hyperlink (e.g. for the story widget) | [optional] 
**imageUrl** | **String** | Product Image URL | [optional] [default to 'https://imagedelivery.net/dXeULRC3hlKS2IJjZmVx9Q/c5a76e52-e2d0-4c27-fc04-fcde1b725200/public']
**discountCode** | **String** | Discount code that may be applied to the call to action url if the shop provider supports it. DEPRECATED: use discount object instead. | [optional] 
**translations** | [**List<ProductPromotionPropertiesI18n>**](ProductPromotionPropertiesI18n.md) | Translations for the product recommendation strings | [optional] [default to const []]
**products** | [**List<ProductRecommendationDTO>**](ProductRecommendationDTO.md) | Product recommendation list | [optional] [default to const []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


