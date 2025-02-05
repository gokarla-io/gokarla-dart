# gokarla.model.MerchantCreationDTO

## Load the model package
```dart
import 'package:gokarla/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | Name to display | 
**description** | **String** | Merchant description dependant on user language | [optional] 
**organization** | **String** | Organization the shop belongs to | 
**shopProvider** | [**ShopProvider**](ShopProvider.md) | Shop system provider | [optional] 
**shopAdminUrl** | **String** | URL for API calls to the shop | [optional] 
**shopFaqUrl** | **String** | URL for the FAQ page | [optional] 
**shopServiceUrl** | **String** | URL for the service page | [optional] 
**shopUrl** | **String** | URL to the main shop | [optional] 
**logoUrl** | **String** | Merchant logo image URL | [optional] 
**klaviyoEnabled** | **bool** | Will send klaviyo events for shipment updates | 
**webTrackingEnabled** | **bool** | Will show order and shipment updates in the web tracking page | [optional] 
**slug** | **String** | Slug to filter | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


