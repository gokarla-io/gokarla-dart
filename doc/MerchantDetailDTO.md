# gokarla.model.MerchantDetailDTO

## Load the model package
```dart
import 'package:gokarla/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**createdAt** | [**DateTime**](DateTime.md) | Time in which the resource was created | [optional] 
**updatedAt** | [**DateTime**](DateTime.md) | Time in which the resource was last updated after creation | [optional] 
**uuid** | **String** | Merchant UUID | 
**name** | **String** | Name to display | [optional] 
**slug** | **String** | Merchant Slug | 
**organization** | **String** | Organization the shop belongs to | [optional] 
**language** | [**LanguageEnum**](LanguageEnum.md) | Default language for the merchant text strings | [optional] [default to LanguageEnum.en]
**logoUrl** | **String** | Merchant logo image URL | [optional] 
**shopUrl** | **String** | URL to the main shop | [optional] 
**description** | **String** | Merchant description dependant on user language | [optional] 
**shopProvider** | [**ShopProvider**](ShopProvider.md) | Shop system provider | [optional] 
**shopAdminUrl** | **String** | URL for API calls to the shop | [optional] 
**shopFaqUrl** | **String** | URL for the FAQ page | [optional] 
**shopServiceUrl** | **String** | URL for the service page | [optional] 
**klaviyoEnabled** | **bool** | Will send klaviyo events for shipment updates | [optional] [default to false]
**webTrackingEnabled** | **bool** | Will show order and shipment updates in the web tracking page | [optional] [default to false]
**goLiveAt** | [**DateTime**](DateTime.md) | When the merchant goes live with Karla services | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


