# gokarla.model.ClaimCreationDTO

## Load the model package
```dart
import 'package:gokarla/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**shipmentId** | **String** | Unique identifier for the system in Karla. If not provided, a tracking number has to be given. | [optional] 
**resolutionPreference** | [**ClaimResolutionPreference**](ClaimResolutionPreference.md) | Claim resolution preference | [optional] 
**reason** | [**ClaimReason**](ClaimReason.md) | Reason to submit the claim | 
**status** | [**ClaimStatus**](ClaimStatus.md) | Claim status | [optional] 
**description** | **String** | Complimentary description to explain why the claim was submitted | [optional] 
**customerSignatureImageUrl** | **String** | The private image url with the client signature | [optional] 
**damagedProductItems** | [**List<DamagedProductItemSchema>**](DamagedProductItemSchema.md) | List of damaged product items (DEPRECATED) | [optional] [default to const []]
**selectedItems** | [**List<SelectedItemSchema>**](SelectedItemSchema.md) | List of selected product items | [optional] [default to const []]
**imageUrls** | **List<String>** | List of image URLs that give evidence of the damaged product or claim in general | [optional] [default to const []]
**dropoffPermission** | **bool** | The customer's response about whether they authorized the carrier to leave the package at a designated spot without requiring direct delivery | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


