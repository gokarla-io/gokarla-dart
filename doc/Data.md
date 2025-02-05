# gokarla.model.Data

## Load the model package
```dart
import 'package:gokarla/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**shipmentUuid** | **String** | Generated unique identifier for a shipment. Users can use this uuid to manage their shipments with other API functions. | 
**additionalInfo** | [**Object**](.md) | Lists all custom fields added by the user for the shipment. | [optional] 
**expectedDelivery** | [**ExpectedDelivery**](ExpectedDelivery.md) | Stores details pertaining to shipment's expected delivery values. | [optional] 
**allEvents** | [**List<AllEvent>**](AllEvent.md) | Lists all of the events processed for the shipment. | [optional] [default to const []]
**newEvents** | [**List<AllEvent>**](AllEvent.md) | Lists all of the new events processed for the shipment. | [optional] [default to const []]
**collectionPoint** | [**CollectionPoint**](CollectionPoint.md) | Collection point details. | [optional] 
**parcelRecipientInformation** | **String** | Information related to the parcel recipient. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


