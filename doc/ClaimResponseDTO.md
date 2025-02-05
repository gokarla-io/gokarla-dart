# gokarla.model.ClaimResponseDTO

## Load the model package
```dart
import 'package:gokarla/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**createdAt** | [**DateTime**](DateTime.md) | When the resource was created | [optional] 
**updatedAt** | [**DateTime**](DateTime.md) | When the resource was last updated | [optional] 
**deletedAt** | [**DateTime**](DateTime.md) | When the resource was cancelled/completed | [optional] 
**uuid** | **String** | Claim UUID | 
**orderId** | **String** | Order UUID | [optional] 
**shipmentId** | **String** | Shipment UUID | [optional] 
**orderNumber** | **String** | Order number related to the shop | [optional] 
**resolutionPreference** | [**ClaimResolutionPreference**](ClaimResolutionPreference.md) | Claim resolution preference | [optional] 
**reason** | [**ClaimReason**](ClaimReason.md) | Reason to submit the claim | 
**status** | [**ClaimStatus**](ClaimStatus.md) | Progress of the claim | [optional] [default to ClaimStatus.pending]
**description** | **String** | Complimentary description to explain why the claim was submitted | [optional] 
**customerSignatureImageUrl** | **String** | The private image url with the client signature | [optional] 
**damagedProductItems** | [**List<DamagedProductItemSchema>**](DamagedProductItemSchema.md) | List of damaged product items (DEPRECATED) | [optional] [default to const []]
**selectedItems** | [**List<SelectedItemSchema>**](SelectedItemSchema.md) | List of selected product items | [optional] [default to const []]
**imageUrls** | **List<String>** | List of image urls | [optional] [default to const []]
**address** | [**AddressSchema**](AddressSchema.md) | Delivery address for the original order | [optional] 
**netInvoiceAmount** | **num** | Price of the entire order without discounts, shipping costs and taxes applied | [optional] 
**trackingNumber** | **String** | Carrier Tracking Number | [optional] 
**carrierReference** | [**CarrierEnum**](CarrierEnum.md) | Carrier reference | [optional] 
**scanDate** | [**DateTime**](DateTime.md) | Date the package was picked by the carrier | [optional] 
**weightKg** | **num** | The weight of the package in kilograms | [optional] 
**dropoffPermission** | **bool** | The customer's response about whether they authorized the carrier to leave the package at a designated spot without requiring direct delivery | [optional] 
**shopSlug** | **String** | Shop identifier as a url slug | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


