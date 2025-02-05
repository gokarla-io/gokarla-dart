# gokarla.model.CampaignRequestDTO

## Load the model package
```dart
import 'package:gokarla/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**enabled** | **bool** | Campaign visibility toggle. Only one campaign can be enabled per segment at a time. | [optional] [default to false]
**name** | **String** | Campaign name to be used internally | 
**startDate** | [**DateTime**](DateTime.md) | Time in which the campaign will start (defaults to now) | [optional] 
**endDate** | [**DateTime**](DateTime.md) | Time in which the campaign will end | [optional] 
**segment** | **String** | Segment to which the campaign is targeted | 
**promotionType** | [**PromotionType**](PromotionType.md) | Type of promotion | 
**promotionProperties** | [**PromotionProperties**](PromotionProperties.md) |  | 
**discountId** | **String** | Discount UUID | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


