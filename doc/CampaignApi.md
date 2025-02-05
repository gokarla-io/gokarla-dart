# gokarla.api.CampaignApi

## Load the API package
```dart
import 'package:gokarla/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1CampaignsCreate**](CampaignApi.md#v1campaignscreate) | **POST** /v1/shops/{slug}/campaigns | Create Campaign
[**v1CampaignsDelete**](CampaignApi.md#v1campaignsdelete) | **DELETE** /v1/shops/{slug}/campaigns/{uuid} | Delete Campaign
[**v1CampaignsImageUpload**](CampaignApi.md#v1campaignsimageupload) | **POST** /v1/shops/{slug}/campaigns/{campaign_uuid}/image | Upload Basic Campaign Image
[**v1CampaignsProductsImageUpload**](CampaignApi.md#v1campaignsproductsimageupload) | **POST** /v1/shops/{slug}/campaigns/{campaign_uuid}/products/{product_position}/image | Upload Campaign Product Image
[**v1CampaignsSearch**](CampaignApi.md#v1campaignssearch) | **GET** /v1/shops/{slug}/campaigns | Search Campaigns
[**v1CampaignsUpdate**](CampaignApi.md#v1campaignsupdate) | **PUT** /v1/shops/{slug}/campaigns/{uuid} | Update Campaign


# **v1CampaignsCreate**
> CampaignResponseDTO v1CampaignsCreate(slug, campaignRequestDTO)

Create Campaign

Create a campaign if it does not exist.

### Example
```dart
import 'package:gokarla/api.dart';
// TODO Configure HTTP basic authorization: HTTPBasic
//defaultApiClient.getAuthentication<HttpBasicAuth>('HTTPBasic').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('HTTPBasic').password = 'YOUR_PASSWORD';

final api_instance = CampaignApi();
final slug = slug_example; // String | The slug identifying the shop
final campaignRequestDTO = CampaignRequestDTO(); // CampaignRequestDTO | 

try {
    final result = api_instance.v1CampaignsCreate(slug, campaignRequestDTO);
    print(result);
} catch (e) {
    print('Exception when calling CampaignApi->v1CampaignsCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **slug** | **String**| The slug identifying the shop | 
 **campaignRequestDTO** | [**CampaignRequestDTO**](CampaignRequestDTO.md)|  | 

### Return type

[**CampaignResponseDTO**](CampaignResponseDTO.md)

### Authorization

[HTTPBasic](../README.md#HTTPBasic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1CampaignsDelete**
> Object v1CampaignsDelete(slug, uuid)

Delete Campaign

Delete a campaign that already exists.

### Example
```dart
import 'package:gokarla/api.dart';
// TODO Configure HTTP basic authorization: HTTPBasic
//defaultApiClient.getAuthentication<HttpBasicAuth>('HTTPBasic').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('HTTPBasic').password = 'YOUR_PASSWORD';

final api_instance = CampaignApi();
final slug = slug_example; // String | The slug identifying the shop
final uuid = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | The campaign's unique identifier

try {
    final result = api_instance.v1CampaignsDelete(slug, uuid);
    print(result);
} catch (e) {
    print('Exception when calling CampaignApi->v1CampaignsDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **slug** | **String**| The slug identifying the shop | 
 **uuid** | **String**| The campaign's unique identifier | 

### Return type

[**Object**](Object.md)

### Authorization

[HTTPBasic](../README.md#HTTPBasic)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1CampaignsImageUpload**
> CampaignResponseDTO v1CampaignsImageUpload(slug, campaignUuid, image)

Upload Basic Campaign Image

Upload an image for a campaign product.

### Example
```dart
import 'package:gokarla/api.dart';
// TODO Configure HTTP basic authorization: HTTPBasic
//defaultApiClient.getAuthentication<HttpBasicAuth>('HTTPBasic').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('HTTPBasic').password = 'YOUR_PASSWORD';

final api_instance = CampaignApi();
final slug = slug_example; // String | The slug identifying the shop
final campaignUuid = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | The campaign's unique identifier
final image = BINARY_DATA_HERE; // MultipartFile | The product image to upload

try {
    final result = api_instance.v1CampaignsImageUpload(slug, campaignUuid, image);
    print(result);
} catch (e) {
    print('Exception when calling CampaignApi->v1CampaignsImageUpload: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **slug** | **String**| The slug identifying the shop | 
 **campaignUuid** | **String**| The campaign's unique identifier | 
 **image** | **MultipartFile**| The product image to upload | 

### Return type

[**CampaignResponseDTO**](CampaignResponseDTO.md)

### Authorization

[HTTPBasic](../README.md#HTTPBasic)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1CampaignsProductsImageUpload**
> CampaignResponseDTO v1CampaignsProductsImageUpload(slug, campaignUuid, productPosition, image)

Upload Campaign Product Image

Upload an image for a campaign product.

### Example
```dart
import 'package:gokarla/api.dart';
// TODO Configure HTTP basic authorization: HTTPBasic
//defaultApiClient.getAuthentication<HttpBasicAuth>('HTTPBasic').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('HTTPBasic').password = 'YOUR_PASSWORD';

final api_instance = CampaignApi();
final slug = slug_example; // String | The slug identifying the shop
final campaignUuid = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | The campaign's unique identifier
final productPosition = 56; // int | The product's position in the list
final image = BINARY_DATA_HERE; // MultipartFile | The product image to upload

try {
    final result = api_instance.v1CampaignsProductsImageUpload(slug, campaignUuid, productPosition, image);
    print(result);
} catch (e) {
    print('Exception when calling CampaignApi->v1CampaignsProductsImageUpload: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **slug** | **String**| The slug identifying the shop | 
 **campaignUuid** | **String**| The campaign's unique identifier | 
 **productPosition** | **int**| The product's position in the list | 
 **image** | **MultipartFile**| The product image to upload | 

### Return type

[**CampaignResponseDTO**](CampaignResponseDTO.md)

### Authorization

[HTTPBasic](../README.md#HTTPBasic)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1CampaignsSearch**
> List<CampaignResponseDTO> v1CampaignsSearch(slug, page, perPage, uuid, name, startDate, endDate, segment, promotionType, enabled)

Search Campaigns

Search all campaigns or based on some values to filter.

### Example
```dart
import 'package:gokarla/api.dart';
// TODO Configure HTTP basic authorization: HTTPBasic
//defaultApiClient.getAuthentication<HttpBasicAuth>('HTTPBasic').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('HTTPBasic').password = 'YOUR_PASSWORD';

final api_instance = CampaignApi();
final slug = slug_example; // String | The slug identifying the shop
final page = 56; // int | 
final perPage = 56; // int | 
final uuid = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final name = name_example; // String | 
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final segment = segment_example; // String | 
final promotionType = ; // PromotionType | 
final enabled = true; // bool | 

try {
    final result = api_instance.v1CampaignsSearch(slug, page, perPage, uuid, name, startDate, endDate, segment, promotionType, enabled);
    print(result);
} catch (e) {
    print('Exception when calling CampaignApi->v1CampaignsSearch: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **slug** | **String**| The slug identifying the shop | 
 **page** | **int**|  | [optional] [default to 1]
 **perPage** | **int**|  | [optional] [default to 30]
 **uuid** | **String**|  | [optional] 
 **name** | **String**|  | [optional] 
 **startDate** | **DateTime**|  | [optional] 
 **endDate** | **DateTime**|  | [optional] 
 **segment** | **String**|  | [optional] 
 **promotionType** | [**PromotionType**](.md)|  | [optional] 
 **enabled** | **bool**|  | [optional] 

### Return type

[**List<CampaignResponseDTO>**](CampaignResponseDTO.md)

### Authorization

[HTTPBasic](../README.md#HTTPBasic)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1CampaignsUpdate**
> CampaignResponseDTO v1CampaignsUpdate(slug, uuid, campaignRequestDTO)

Update Campaign

Update a campaign completely.

### Example
```dart
import 'package:gokarla/api.dart';
// TODO Configure HTTP basic authorization: HTTPBasic
//defaultApiClient.getAuthentication<HttpBasicAuth>('HTTPBasic').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('HTTPBasic').password = 'YOUR_PASSWORD';

final api_instance = CampaignApi();
final slug = slug_example; // String | The slug identifying the shop
final uuid = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | The campaign's unique identifier
final campaignRequestDTO = CampaignRequestDTO(); // CampaignRequestDTO | 

try {
    final result = api_instance.v1CampaignsUpdate(slug, uuid, campaignRequestDTO);
    print(result);
} catch (e) {
    print('Exception when calling CampaignApi->v1CampaignsUpdate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **slug** | **String**| The slug identifying the shop | 
 **uuid** | **String**| The campaign's unique identifier | 
 **campaignRequestDTO** | [**CampaignRequestDTO**](CampaignRequestDTO.md)|  | 

### Return type

[**CampaignResponseDTO**](CampaignResponseDTO.md)

### Authorization

[HTTPBasic](../README.md#HTTPBasic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

