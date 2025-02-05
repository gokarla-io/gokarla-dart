# gokarla.model.KlaviyoSettingsV1

## Load the model package
```dart
import 'package:gokarla/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**status** | [**SettingStatus**](SettingStatus.md) | Whether the klaviyo integration is enabled | 
**customTriggers** | [**List<Object>**](Object.md) | Custom triggers for klaviyo | [optional] [default to const []]
**triggerDeliveredAllEvents** | **bool** | Whether to trigger all events for klaviyo | [optional] [default to false]
**shipmentGroupKey** | [**ShipmentGroupKey**](ShipmentGroupKey.md) | The key to use for the shipment group | [optional] [default to ShipmentGroupKey.shipmentId]
**staleEventThreshold** | **int** | Stale event threshold for klaviyo in hours | [optional] [default to 4]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


