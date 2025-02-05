# gokarla.model.CampaignResponseDTO

## Load the model package
```dart
import 'package:gokarla/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**enabled** | **bool** | Campaign visibility toggle. Only one campaign can be enabled per segment at a time. | [optional] [default to false]
**name** | **String** | Campaign name to be used internally | 
**startDate** | [**DateTime**](DateTime.md) | Time in which the campaign will start (defaults to now) | 
**endDate** | [**DateTime**](DateTime.md) | Time in which the campaign will end | [optional] 
**segment** | **String** | Segment to which the campaign is targeted | 
**promotionType** | [**PromotionType**](PromotionType.md) | Type of promotion | 
**promotionProperties** | [**PromotionProperties**](PromotionProperties.md) |  | 
**uuid** | **String** | Campaign UUID | 
**shopSlug** | **String** | Shop Slug | 
**status** | [**CampaignStatus**](CampaignStatus.md) | The status of the campaign | 
**discount** | [**DiscountDTO**](DiscountDTO.md) | The discount attached to the campaign | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


