# gokarla.model.WebhookCreationDTO

## Load the model package
```dart
import 'package:gokarla/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**uuid** | **String** | Unique identifier for the object | 
**enabledEvents** | [**List<WebhookEvent>**](WebhookEvent.md) | The list of events to enable for this endpoint. ['*'] indicates that all events are enabled. | [optional] [default to const []]
**secret** | **String** | The secret used to generate webhook signatures. Only returned at creation. | 
**description** | **String** | An optional description for the endpoint | [optional] 
**status** | [**WebhookStatus**](WebhookStatus.md) | The status of the webhook. | 
**url** | **String** | The URL of the webhook endpoint | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


