# gokarla.model.AllEvent

## Load the model package
```dart
import 'package:gokarla/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**time** | **String** | Date & time of event occurrence. | [optional] 
**event** | **String** | Event's description in English or original event description, depending on how the event was processed. | [optional] 
**location** | [**Object**](.md) | Object containing the location details of the event. | [optional] 
**timezone** | **String** | Timezone description for event's date & time. | [optional] 
**eventKey** | **String** | Internal event key that references to a unique event type.  | [optional] 
**phase** | **String** | Phase that the shipment's current event belongs to. | [optional] 
**phaseKey** | **String** | Internal key referencing a unique phase | [optional] 
**carrierName** | **String** | Carrier that the event is associated to. | [optional] 
**additionalInfo** | [**Object**](.md) | Any additional information or custom fields related to the event. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


