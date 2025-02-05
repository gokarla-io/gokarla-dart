# gokarla.model.TrackingDTO

## Load the model package
```dart
import 'package:gokarla/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | [**Id**](Id.md) |  | 
**merchantId** | [**MerchantId**](MerchantId.md) |  | 
**merchantSlug** | **String** | Merchant slug identifier | 
**orderId** | [**OrderId**](OrderId.md) |  | 
**orderNumber** | **String** | Order number communicated to the user by the Merchant | 
**events** | [**List<TrackingEventDTO>**](TrackingEventDTO.md) | Shipment tracking events | [default to const []]
**estimatedArrival** | [**TrackingEstimatedArrivalDTO**](TrackingEstimatedArrivalDTO.md) | Expected delivery time information for the given locale | [optional] 
**carrier** | [**CarrierDTO**](CarrierDTO.md) | Carrier data | [optional] 
**state** | [**StateEnum**](StateEnum.md) | Karla shipment state | [optional] [default to StateEnum.transit]
**flag** | [**FlagEnum**](FlagEnum.md) | Karla shipment flag | [optional] [default to FlagEnum.normal]
**pickup** | [**TrackingPickUpDTO**](TrackingPickUpDTO.md) | Pickup data | [optional] 
**updatedAt** | [**DateTime**](DateTime.md) | Tracking last updated time | [optional] 
**products** | [**List<ProductSchema>**](ProductSchema.md) | List of shipment products | [optional] [default to const []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


