# gokarla.api.ShopShopifyApi

## Load the API package
```dart
import 'package:gokarla/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1ShopifyWebhooksCreate**](ShopShopifyApi.md#v1shopifywebhookscreate) | **POST** /v1/shops/{slug}/shopify/webhooks | Create Shopify Webhook
[**v1ShopifyWebhooksDelete**](ShopShopifyApi.md#v1shopifywebhooksdelete) | **DELETE** /v1/shops/{slug}/shopify/webhooks/{uuid} | Delete Shopify Webhook
[**v1ShopifyWebhooksGet**](ShopShopifyApi.md#v1shopifywebhooksget) | **GET** /v1/shops/{slug}/shopify/webhooks/{uuid} | Get Shopify Webhook
[**v1ShopifyWebhooksList**](ShopShopifyApi.md#v1shopifywebhookslist) | **GET** /v1/shops/{slug}/shopify/webhooks | Search Shopify Webhooks


# **v1ShopifyWebhooksCreate**
> ShopifyWebhookDTO v1ShopifyWebhooksCreate(slug, shopifyWebhookCreationDTO)

Create Shopify Webhook

Create a webhook if it does not exist.

### Example
```dart
import 'package:gokarla/api.dart';
// TODO Configure HTTP basic authorization: HTTPBasic
//defaultApiClient.getAuthentication<HttpBasicAuth>('HTTPBasic').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('HTTPBasic').password = 'YOUR_PASSWORD';

final api_instance = ShopShopifyApi();
final slug = slug_example; // String | The slug identifying the merchant
final shopifyWebhookCreationDTO = ShopifyWebhookCreationDTO(); // ShopifyWebhookCreationDTO | 

try {
    final result = api_instance.v1ShopifyWebhooksCreate(slug, shopifyWebhookCreationDTO);
    print(result);
} catch (e) {
    print('Exception when calling ShopShopifyApi->v1ShopifyWebhooksCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **slug** | **String**| The slug identifying the merchant | 
 **shopifyWebhookCreationDTO** | [**ShopifyWebhookCreationDTO**](ShopifyWebhookCreationDTO.md)|  | 

### Return type

[**ShopifyWebhookDTO**](ShopifyWebhookDTO.md)

### Authorization

[HTTPBasic](../README.md#HTTPBasic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1ShopifyWebhooksDelete**
> Object v1ShopifyWebhooksDelete(slug, uuid)

Delete Shopify Webhook

Delete a webhook that already exists.

### Example
```dart
import 'package:gokarla/api.dart';
// TODO Configure HTTP basic authorization: HTTPBasic
//defaultApiClient.getAuthentication<HttpBasicAuth>('HTTPBasic').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('HTTPBasic').password = 'YOUR_PASSWORD';

final api_instance = ShopShopifyApi();
final slug = slug_example; // String | The slug identifying the merchant
final uuid = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | The webhook's unique identifier

try {
    final result = api_instance.v1ShopifyWebhooksDelete(slug, uuid);
    print(result);
} catch (e) {
    print('Exception when calling ShopShopifyApi->v1ShopifyWebhooksDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **slug** | **String**| The slug identifying the merchant | 
 **uuid** | **String**| The webhook's unique identifier | 

### Return type

[**Object**](Object.md)

### Authorization

[HTTPBasic](../README.md#HTTPBasic)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1ShopifyWebhooksGet**
> ShopifyWebhookDTO v1ShopifyWebhooksGet(slug, uuid)

Get Shopify Webhook

Get a shopify webhooks based on its uuid.

### Example
```dart
import 'package:gokarla/api.dart';
// TODO Configure HTTP basic authorization: HTTPBasic
//defaultApiClient.getAuthentication<HttpBasicAuth>('HTTPBasic').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('HTTPBasic').password = 'YOUR_PASSWORD';

final api_instance = ShopShopifyApi();
final slug = slug_example; // String | The slug identifying the merchant
final uuid = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | The Webhook's UUID

try {
    final result = api_instance.v1ShopifyWebhooksGet(slug, uuid);
    print(result);
} catch (e) {
    print('Exception when calling ShopShopifyApi->v1ShopifyWebhooksGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **slug** | **String**| The slug identifying the merchant | 
 **uuid** | **String**| The Webhook's UUID | 

### Return type

[**ShopifyWebhookDTO**](ShopifyWebhookDTO.md)

### Authorization

[HTTPBasic](../README.md#HTTPBasic)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1ShopifyWebhooksList**
> List<WebhookDTO> v1ShopifyWebhooksList(slug, page, perPage)

Search Shopify Webhooks

Get a shopify webhooks based on its uuid.

### Example
```dart
import 'package:gokarla/api.dart';
// TODO Configure HTTP basic authorization: HTTPBasic
//defaultApiClient.getAuthentication<HttpBasicAuth>('HTTPBasic').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('HTTPBasic').password = 'YOUR_PASSWORD';

final api_instance = ShopShopifyApi();
final slug = slug_example; // String | The slug identifying the merchant
final page = 56; // int | 
final perPage = 56; // int | 

try {
    final result = api_instance.v1ShopifyWebhooksList(slug, page, perPage);
    print(result);
} catch (e) {
    print('Exception when calling ShopShopifyApi->v1ShopifyWebhooksList: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **slug** | **String**| The slug identifying the merchant | 
 **page** | **int**|  | [optional] [default to 1]
 **perPage** | **int**|  | [optional] [default to 30]

### Return type

[**List<WebhookDTO>**](WebhookDTO.md)

### Authorization

[HTTPBasic](../README.md#HTTPBasic)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

