# gokarla.api.ShopSettingApi

## Load the API package
```dart
import 'package:gokarla/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1ShopsSettingsGet**](ShopSettingApi.md#v1shopssettingsget) | **GET** /v1/shops/{slug}/settings | Get Shop Configuration
[**v1ShopsSettingsSet**](ShopSettingApi.md#v1shopssettingsset) | **POST** /v1/shops/{slug}/settings | Set Shop Settings
[**v1ShopsSettingsUpdateTrackpages**](ShopSettingApi.md#v1shopssettingsupdatetrackpages) | **PUT** /v1/shops/{slug}/settings/trackpages | Update Shop Trackpages Settings


# **v1ShopsSettingsGet**
> ShopSettingsDTO v1ShopsSettingsGet(slug)

Get Shop Configuration

Get settings for a specific shop.

### Example
```dart
import 'package:gokarla/api.dart';
// TODO Configure HTTP basic authorization: HTTPBasic
//defaultApiClient.getAuthentication<HttpBasicAuth>('HTTPBasic').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('HTTPBasic').password = 'YOUR_PASSWORD';

final api_instance = ShopSettingApi();
final slug = slug_example; // String | The slug identifying the shop

try {
    final result = api_instance.v1ShopsSettingsGet(slug);
    print(result);
} catch (e) {
    print('Exception when calling ShopSettingApi->v1ShopsSettingsGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **slug** | **String**| The slug identifying the shop | 

### Return type

[**ShopSettingsDTO**](ShopSettingsDTO.md)

### Authorization

[HTTPBasic](../README.md#HTTPBasic)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1ShopsSettingsSet**
> ShopSettingsDTO v1ShopsSettingsSet(slug, shopSettingsDTO)

Set Shop Settings

Set settings for a specific shop (creating them if they do not exist).

### Example
```dart
import 'package:gokarla/api.dart';
// TODO Configure HTTP basic authorization: HTTPBasic
//defaultApiClient.getAuthentication<HttpBasicAuth>('HTTPBasic').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('HTTPBasic').password = 'YOUR_PASSWORD';

final api_instance = ShopSettingApi();
final slug = slug_example; // String | The slug identifying the shop
final shopSettingsDTO = ShopSettingsDTO(); // ShopSettingsDTO | 

try {
    final result = api_instance.v1ShopsSettingsSet(slug, shopSettingsDTO);
    print(result);
} catch (e) {
    print('Exception when calling ShopSettingApi->v1ShopsSettingsSet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **slug** | **String**| The slug identifying the shop | 
 **shopSettingsDTO** | [**ShopSettingsDTO**](ShopSettingsDTO.md)|  | 

### Return type

[**ShopSettingsDTO**](ShopSettingsDTO.md)

### Authorization

[HTTPBasic](../README.md#HTTPBasic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1ShopsSettingsUpdateTrackpages**
> ShopSettingsDTO v1ShopsSettingsUpdateTrackpages(slug, baseTrackpagesSettings)

Update Shop Trackpages Settings

Update trackpages settings for a specific shop.

### Example
```dart
import 'package:gokarla/api.dart';
// TODO Configure HTTP basic authorization: HTTPBasic
//defaultApiClient.getAuthentication<HttpBasicAuth>('HTTPBasic').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('HTTPBasic').password = 'YOUR_PASSWORD';

final api_instance = ShopSettingApi();
final slug = slug_example; // String | The slug identifying the shop
final baseTrackpagesSettings = BaseTrackpagesSettings(); // BaseTrackpagesSettings | 

try {
    final result = api_instance.v1ShopsSettingsUpdateTrackpages(slug, baseTrackpagesSettings);
    print(result);
} catch (e) {
    print('Exception when calling ShopSettingApi->v1ShopsSettingsUpdateTrackpages: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **slug** | **String**| The slug identifying the shop | 
 **baseTrackpagesSettings** | [**BaseTrackpagesSettings**](BaseTrackpagesSettings.md)|  | 

### Return type

[**ShopSettingsDTO**](ShopSettingsDTO.md)

### Authorization

[HTTPBasic](../README.md#HTTPBasic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

