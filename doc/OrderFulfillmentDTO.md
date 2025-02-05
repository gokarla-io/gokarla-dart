# gokarla.model.OrderFulfillmentDTO

## Load the model package
```dart
import 'package:gokarla/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | Order reference whose type is defined by the id_type field | 
**idType** | [**OrderReferenceType**](OrderReferenceType.md) | Type of order identifier that is passed in the reference field | [optional] [default to OrderReferenceType.orderNumber]
**order** | [**OrderPlacementDTO**](OrderPlacementDTO.md) | Order information (will perform an upsert if provided) | [optional] 
**trackings** | [**List<OrderTrackingDTO>**](OrderTrackingDTO.md) | Tracking information relevant to the order (order must exist already if it is not provided) | [default to const []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


