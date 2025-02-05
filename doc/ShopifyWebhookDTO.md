# gokarla.model.ShopifyWebhookDTO

## Load the model package
```dart
import 'package:gokarla/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**webhookType** | [**ShopifyWebhookType**](ShopifyWebhookType.md) | Webhook Type | 
**createdAt** | [**DateTime**](DateTime.md) | Time in which the resource was created | [optional] 
**updatedAt** | [**DateTime**](DateTime.md) | Time in which the resource was last updated after creation | [optional] 
**uuid** | **String** | Webhook UUID | 
**merchantSlug** | **String** | Merchant slug for the webhook | 
**name** | **String** | Name of the webhook | 
**shopifyId** | **int** | Shopify Webhook ID | [optional] 
**topic** | **String** | Webhook Topic | 
**hookUrl** | **String** | Webhook URL | 
**fields** | **List<String>** | Optional inclusive fields filter | [optional] [default to const []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


