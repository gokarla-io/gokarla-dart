# gokarla.api.ShopApi

## Load the API package
```dart
import 'package:gokarla/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1ShopsCreate**](ShopApi.md#v1shopscreate) | **POST** /v1/shops | Create Shop
[**v1ShopsDelete**](ShopApi.md#v1shopsdelete) | **DELETE** /v1/shops/{slug} | Delete Shop
[**v1ShopsGet**](ShopApi.md#v1shopsget) | **GET** /v1/shops/{slug} | Get Shop Detail
[**v1ShopsImagesUpload**](ShopApi.md#v1shopsimagesupload) | **POST** /v1/shops/{slug}/images/{image_type} | Upload Shop Image
[**v1ShopsKeysKlaviyoSet**](ShopApi.md#v1shopskeysklaviyoset) | **PUT** /v1/shops/{slug}/keys/klaviyo | Set Klaviyo Key
[**v1ShopsKeysShopifySet**](ShopApi.md#v1shopskeysshopifyset) | **PUT** /v1/shops/{slug}/keys/shopify | Set Shopify Access Token
[**v1ShopsKeysShopwareSet**](ShopApi.md#v1shopskeysshopwareset) | **PUT** /v1/shops/{slug}/keys/shopware | Set Shopware Api Credentials
[**v1ShopsSearch**](ShopApi.md#v1shopssearch) | **GET** /v1/shops | Search Shops
[**v1ShopsUpdate**](ShopApi.md#v1shopsupdate) | **PATCH** /v1/shops/{slug} | Update Shop


# **v1ShopsCreate**
> Object v1ShopsCreate(merchantCreationDTO)

Create Shop

Create a shop if it does not exist.

### Example
```dart
import 'package:gokarla/api.dart';
// TODO Configure HTTP basic authorization: HTTPBasic
//defaultApiClient.getAuthentication<HttpBasicAuth>('HTTPBasic').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('HTTPBasic').password = 'YOUR_PASSWORD';

final api_instance = ShopApi();
final merchantCreationDTO = MerchantCreationDTO(); // MerchantCreationDTO | 

try {
    final result = api_instance.v1ShopsCreate(merchantCreationDTO);
    print(result);
} catch (e) {
    print('Exception when calling ShopApi->v1ShopsCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **merchantCreationDTO** | [**MerchantCreationDTO**](MerchantCreationDTO.md)|  | 

### Return type

[**Object**](Object.md)

### Authorization

[HTTPBasic](../README.md#HTTPBasic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1ShopsDelete**
> Object v1ShopsDelete(slug)

Delete Shop

Delete a shop that already exists.

### Example
```dart
import 'package:gokarla/api.dart';
// TODO Configure HTTP basic authorization: HTTPBasic
//defaultApiClient.getAuthentication<HttpBasicAuth>('HTTPBasic').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('HTTPBasic').password = 'YOUR_PASSWORD';

final api_instance = ShopApi();
final slug = slug_example; // String | The slug identifying the shop

try {
    final result = api_instance.v1ShopsDelete(slug);
    print(result);
} catch (e) {
    print('Exception when calling ShopApi->v1ShopsDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **slug** | **String**| The slug identifying the shop | 

### Return type

[**Object**](Object.md)

### Authorization

[HTTPBasic](../README.md#HTTPBasic)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1ShopsGet**
> MerchantDetailDTO v1ShopsGet(slug)

Get Shop Detail

Get details about a specific shop.

### Example
```dart
import 'package:gokarla/api.dart';
// TODO Configure HTTP basic authorization: HTTPBasic
//defaultApiClient.getAuthentication<HttpBasicAuth>('HTTPBasic').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('HTTPBasic').password = 'YOUR_PASSWORD';

final api_instance = ShopApi();
final slug = slug_example; // String | The slug identifying the shop

try {
    final result = api_instance.v1ShopsGet(slug);
    print(result);
} catch (e) {
    print('Exception when calling ShopApi->v1ShopsGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **slug** | **String**| The slug identifying the shop | 

### Return type

[**MerchantDetailDTO**](MerchantDetailDTO.md)

### Authorization

[HTTPBasic](../README.md#HTTPBasic)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1ShopsImagesUpload**
> ImageResponseDTO v1ShopsImagesUpload(slug, imageType, image)

Upload Shop Image

Upload an image for a shop.

### Example
```dart
import 'package:gokarla/api.dart';
// TODO Configure HTTP basic authorization: HTTPBasic
//defaultApiClient.getAuthentication<HttpBasicAuth>('HTTPBasic').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('HTTPBasic').password = 'YOUR_PASSWORD';

final api_instance = ShopApi();
final slug = slug_example; // String | The slug identifying the shop
final imageType = ; // ImageType | The type of image to upload
final image = BINARY_DATA_HERE; // MultipartFile | The logo image to upload

try {
    final result = api_instance.v1ShopsImagesUpload(slug, imageType, image);
    print(result);
} catch (e) {
    print('Exception when calling ShopApi->v1ShopsImagesUpload: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **slug** | **String**| The slug identifying the shop | 
 **imageType** | [**ImageType**](.md)| The type of image to upload | 
 **image** | **MultipartFile**| The logo image to upload | 

### Return type

[**ImageResponseDTO**](ImageResponseDTO.md)

### Authorization

[HTTPBasic](../README.md#HTTPBasic)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1ShopsKeysKlaviyoSet**
> Object v1ShopsKeysKlaviyoSet(slug, aPIKeyDTO)

Set Klaviyo Key

Set a klaviyo api key for the shop.

### Example
```dart
import 'package:gokarla/api.dart';
// TODO Configure HTTP basic authorization: HTTPBasic
//defaultApiClient.getAuthentication<HttpBasicAuth>('HTTPBasic').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('HTTPBasic').password = 'YOUR_PASSWORD';

final api_instance = ShopApi();
final slug = slug_example; // String | The slug identifying the shop
final aPIKeyDTO = APIKeyDTO(); // APIKeyDTO | 

try {
    final result = api_instance.v1ShopsKeysKlaviyoSet(slug, aPIKeyDTO);
    print(result);
} catch (e) {
    print('Exception when calling ShopApi->v1ShopsKeysKlaviyoSet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **slug** | **String**| The slug identifying the shop | 
 **aPIKeyDTO** | [**APIKeyDTO**](APIKeyDTO.md)|  | 

### Return type

[**Object**](Object.md)

### Authorization

[HTTPBasic](../README.md#HTTPBasic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1ShopsKeysShopifySet**
> Object v1ShopsKeysShopifySet(slug, aPIKeyDTO)

Set Shopify Access Token

Set a shopify access token for the shop.

### Example
```dart
import 'package:gokarla/api.dart';
// TODO Configure HTTP basic authorization: HTTPBasic
//defaultApiClient.getAuthentication<HttpBasicAuth>('HTTPBasic').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('HTTPBasic').password = 'YOUR_PASSWORD';

final api_instance = ShopApi();
final slug = slug_example; // String | The slug identifying the shop
final aPIKeyDTO = APIKeyDTO(); // APIKeyDTO | 

try {
    final result = api_instance.v1ShopsKeysShopifySet(slug, aPIKeyDTO);
    print(result);
} catch (e) {
    print('Exception when calling ShopApi->v1ShopsKeysShopifySet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **slug** | **String**| The slug identifying the shop | 
 **aPIKeyDTO** | [**APIKeyDTO**](APIKeyDTO.md)|  | 

### Return type

[**Object**](Object.md)

### Authorization

[HTTPBasic](../README.md#HTTPBasic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1ShopsKeysShopwareSet**
> Object v1ShopsKeysShopwareSet(slug, clientIDAndSecretDTO)

Set Shopware Api Credentials

Set shopware api credentials for the shop.

### Example
```dart
import 'package:gokarla/api.dart';
// TODO Configure HTTP basic authorization: HTTPBasic
//defaultApiClient.getAuthentication<HttpBasicAuth>('HTTPBasic').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('HTTPBasic').password = 'YOUR_PASSWORD';

final api_instance = ShopApi();
final slug = slug_example; // String | The slug identifying the shop
final clientIDAndSecretDTO = ClientIDAndSecretDTO(); // ClientIDAndSecretDTO | 

try {
    final result = api_instance.v1ShopsKeysShopwareSet(slug, clientIDAndSecretDTO);
    print(result);
} catch (e) {
    print('Exception when calling ShopApi->v1ShopsKeysShopwareSet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **slug** | **String**| The slug identifying the shop | 
 **clientIDAndSecretDTO** | [**ClientIDAndSecretDTO**](ClientIDAndSecretDTO.md)|  | 

### Return type

[**Object**](Object.md)

### Authorization

[HTTPBasic](../README.md#HTTPBasic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1ShopsSearch**
> List<MerchantDetailDTO> v1ShopsSearch(page, perPage, uuid, name, slug, shopProvider, language, organization)

Search Shops

Search shops based on some values to filter.

### Example
```dart
import 'package:gokarla/api.dart';
// TODO Configure HTTP basic authorization: HTTPBasic
//defaultApiClient.getAuthentication<HttpBasicAuth>('HTTPBasic').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('HTTPBasic').password = 'YOUR_PASSWORD';

final api_instance = ShopApi();
final page = 56; // int | 
final perPage = 56; // int | 
final uuid = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final name = name_example; // String | 
final slug = slug_example; // String | 
final shopProvider = ; // ShopProvider | 
final language = ; // LanguageEnum | 
final organization = organization_example; // String | 

try {
    final result = api_instance.v1ShopsSearch(page, perPage, uuid, name, slug, shopProvider, language, organization);
    print(result);
} catch (e) {
    print('Exception when calling ShopApi->v1ShopsSearch: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**|  | [optional] [default to 1]
 **perPage** | **int**|  | [optional] [default to 30]
 **uuid** | **String**|  | [optional] 
 **name** | **String**|  | [optional] 
 **slug** | **String**|  | [optional] 
 **shopProvider** | [**ShopProvider**](.md)|  | [optional] 
 **language** | [**LanguageEnum**](.md)|  | [optional] 
 **organization** | **String**|  | [optional] 

### Return type

[**List<MerchantDetailDTO>**](MerchantDetailDTO.md)

### Authorization

[HTTPBasic](../README.md#HTTPBasic)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1ShopsUpdate**
> Object v1ShopsUpdate(slug, merchantUpdateDTO)

Update Shop

Update a shop partially or completely.

### Example
```dart
import 'package:gokarla/api.dart';
// TODO Configure HTTP basic authorization: HTTPBasic
//defaultApiClient.getAuthentication<HttpBasicAuth>('HTTPBasic').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('HTTPBasic').password = 'YOUR_PASSWORD';

final api_instance = ShopApi();
final slug = slug_example; // String | The slug identifying the shop
final merchantUpdateDTO = MerchantUpdateDTO(); // MerchantUpdateDTO | 

try {
    final result = api_instance.v1ShopsUpdate(slug, merchantUpdateDTO);
    print(result);
} catch (e) {
    print('Exception when calling ShopApi->v1ShopsUpdate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **slug** | **String**| The slug identifying the shop | 
 **merchantUpdateDTO** | [**MerchantUpdateDTO**](MerchantUpdateDTO.md)|  | 

### Return type

[**Object**](Object.md)

### Authorization

[HTTPBasic](../README.md#HTTPBasic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

