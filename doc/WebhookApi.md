# gokarla.api.WebhookApi

## Load the API package
```dart
import 'package:gokarla/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1WebhooksCreate**](WebhookApi.md#v1webhookscreate) | **POST** /v1/shops/{slug}/webhooks | Create Webhook
[**v1WebhooksDelete**](WebhookApi.md#v1webhooksdelete) | **DELETE** /v1/shops/{slug}/webhooks/{uuid} | Delete Webhook
[**v1WebhooksSearch**](WebhookApi.md#v1webhookssearch) | **GET** /v1/shops/{slug}/webhooks | Search Webhooks
[**v1WebhooksUpdate**](WebhookApi.md#v1webhooksupdate) | **PATCH** /v1/shops/{slug}/webhooks/{uuid} | Update Webhook


# **v1WebhooksCreate**
> Object v1WebhooksCreate(slug, webhookCreationDTO)

Create Webhook

Create a webhook if it does not exist.

### Example
```dart
import 'package:gokarla/api.dart';
// TODO Configure HTTP basic authorization: HTTPBasic
//defaultApiClient.getAuthentication<HttpBasicAuth>('HTTPBasic').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('HTTPBasic').password = 'YOUR_PASSWORD';

final api_instance = WebhookApi();
final slug = slug_example; // String | The slug identifying the shop
final webhookCreationDTO = WebhookCreationDTO(); // WebhookCreationDTO | 

try {
    final result = api_instance.v1WebhooksCreate(slug, webhookCreationDTO);
    print(result);
} catch (e) {
    print('Exception when calling WebhookApi->v1WebhooksCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **slug** | **String**| The slug identifying the shop | 
 **webhookCreationDTO** | [**WebhookCreationDTO**](WebhookCreationDTO.md)|  | 

### Return type

[**Object**](Object.md)

### Authorization

[HTTPBasic](../README.md#HTTPBasic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1WebhooksDelete**
> Object v1WebhooksDelete(slug, uuid)

Delete Webhook

Delete a webhook that already exists.

### Example
```dart
import 'package:gokarla/api.dart';
// TODO Configure HTTP basic authorization: HTTPBasic
//defaultApiClient.getAuthentication<HttpBasicAuth>('HTTPBasic').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('HTTPBasic').password = 'YOUR_PASSWORD';

final api_instance = WebhookApi();
final slug = slug_example; // String | The slug identifying the shop
final uuid = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | The webhook's unique identifier

try {
    final result = api_instance.v1WebhooksDelete(slug, uuid);
    print(result);
} catch (e) {
    print('Exception when calling WebhookApi->v1WebhooksDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **slug** | **String**| The slug identifying the shop | 
 **uuid** | **String**| The webhook's unique identifier | 

### Return type

[**Object**](Object.md)

### Authorization

[HTTPBasic](../README.md#HTTPBasic)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1WebhooksSearch**
> List<WebhookDTO> v1WebhooksSearch(slug, page, perPage, uuid, status, url)

Search Webhooks

Search all webhooks or based on some values to filter.

### Example
```dart
import 'package:gokarla/api.dart';
// TODO Configure HTTP basic authorization: HTTPBasic
//defaultApiClient.getAuthentication<HttpBasicAuth>('HTTPBasic').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('HTTPBasic').password = 'YOUR_PASSWORD';

final api_instance = WebhookApi();
final slug = slug_example; // String | The slug identifying the shop
final page = 56; // int | 
final perPage = 56; // int | 
final uuid = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final status = ; // WebhookStatus | 
final url = url_example; // String | 

try {
    final result = api_instance.v1WebhooksSearch(slug, page, perPage, uuid, status, url);
    print(result);
} catch (e) {
    print('Exception when calling WebhookApi->v1WebhooksSearch: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **slug** | **String**| The slug identifying the shop | 
 **page** | **int**|  | [optional] [default to 1]
 **perPage** | **int**|  | [optional] [default to 30]
 **uuid** | **String**|  | [optional] 
 **status** | [**WebhookStatus**](.md)|  | [optional] 
 **url** | **String**|  | [optional] 

### Return type

[**List<WebhookDTO>**](WebhookDTO.md)

### Authorization

[HTTPBasic](../README.md#HTTPBasic)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1WebhooksUpdate**
> Object v1WebhooksUpdate(slug, uuid, webhookUpdateDTO)

Update Webhook

Update a webhook partially or completely.

### Example
```dart
import 'package:gokarla/api.dart';
// TODO Configure HTTP basic authorization: HTTPBasic
//defaultApiClient.getAuthentication<HttpBasicAuth>('HTTPBasic').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('HTTPBasic').password = 'YOUR_PASSWORD';

final api_instance = WebhookApi();
final slug = slug_example; // String | The slug identifying the shop
final uuid = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | The webhook's unique identifier
final webhookUpdateDTO = WebhookUpdateDTO(); // WebhookUpdateDTO | 

try {
    final result = api_instance.v1WebhooksUpdate(slug, uuid, webhookUpdateDTO);
    print(result);
} catch (e) {
    print('Exception when calling WebhookApi->v1WebhooksUpdate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **slug** | **String**| The slug identifying the shop | 
 **uuid** | **String**| The webhook's unique identifier | 
 **webhookUpdateDTO** | [**WebhookUpdateDTO**](WebhookUpdateDTO.md)|  | 

### Return type

[**Object**](Object.md)

### Authorization

[HTTPBasic](../README.md#HTTPBasic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

