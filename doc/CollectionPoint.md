# gokarla.model.CollectionPoint

## Load the model package
```dart
import 'package:gokarla/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**uuid** | **String** | Unique ID for the specific collection point. | [optional] 
**collectionPointIdentifier** | **String** | Generated ID based on carrier unique ID and other system logic. The purpose of having this is to identify unique collection points and compare new and old collection points. | [optional] 
**address** | [**Address**](Address.md) | Address of the collection point | [optional] 
**status** | **String** | Collection point's activity status which is either 'active' or 'expired' | [optional] 
**updatedDate** | **String** | Latest update time recorded for the information provided for the collection point in UTC+0. | [optional] 
**lat** | **num** | Collection point address' latitude details. | [optional] 
**long** | **num** | Collection point address' longitude details. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


