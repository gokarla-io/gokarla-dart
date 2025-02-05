# gokarla.model.OrderTrackingDTO

## Load the model package
```dart
import 'package:gokarla/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**trackingNumber** | **String** | Tracking code | 
**trackingUrl** | **String** | The tracking URL as it comes from the carrier. | [optional] 
**trackingPlacedAt** | [**DateTime**](DateTime.md) | Date the fulfillment was placed. Will take current time if not provided | [optional] 
**carrierReference** | **String** | Carrier reference name | [optional] 
**externalShipmentId** | **String** | External shipment ID (for instance, shopify's fulfillment id) | [optional] 
**products** | [**List<ProductDTO>**](ProductDTO.md) | Line items involved in the delivery. If not provided, all products from the related order will be considered as delivered. | [optional] [default to const []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


