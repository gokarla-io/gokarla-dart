# gokarla.model.OrderTrackingUpdateDTO

## Load the model package
```dart
import 'package:gokarla/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**trackingUrl** | **String** | The tracking URL as it comes from the carrier. | [optional] 
**products** | [**List<ProductDTO>**](ProductDTO.md) | Line items involved in the delivery. Give an empty list to remove all products from the shipment.Any list provided will override the current products in the shipment (there is no merge). Will be skipped from update if not given | [optional] [default to const []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


