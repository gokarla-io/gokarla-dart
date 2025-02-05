# gokarla.model.WebhookUpdateDTO

## Load the model package
```dart
import 'package:gokarla/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**enabledEvents** | [**List<WebhookEvent>**](WebhookEvent.md) | The list of events to enable for this endpoint. ['*'] indicates that all events are enabled. | [optional] [default to const []]
**description** | **String** | An optional description for the endpoint | [optional] 
**status** | [**WebhookStatus**](WebhookStatus.md) | The status of the webhook. | [optional] 
**url** | **String** | The URL of the webhook endpoint | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


