# gokarla.api.ClaimApi

## Load the API package
```dart
import 'package:gokarla/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1ClaimsCreate**](ClaimApi.md#v1claimscreate) | **POST** /v1/shops/{slug}/claims | Create Claim
[**v1ClaimsDelete**](ClaimApi.md#v1claimsdelete) | **DELETE** /v1/shops/{slug}/claims/{uuid} | Delete Claim
[**v1ClaimsSearch**](ClaimApi.md#v1claimssearch) | **GET** /v1/shops/{slug}/claims | Search Claims
[**v1ClaimsUpdate**](ClaimApi.md#v1claimsupdate) | **PUT** /v1/shops/{slug}/claims/{uuid} | Update Claim


# **v1ClaimsCreate**
> ClaimResponseDTO v1ClaimsCreate(slug, claimCreationDTO)

Create Claim

Create a claim if it does not exist.

### Example
```dart
import 'package:gokarla/api.dart';
// TODO Configure HTTP basic authorization: HTTPBasic
//defaultApiClient.getAuthentication<HttpBasicAuth>('HTTPBasic').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('HTTPBasic').password = 'YOUR_PASSWORD';

final api_instance = ClaimApi();
final slug = slug_example; // String | The slug identifying the shop
final claimCreationDTO = ClaimCreationDTO(); // ClaimCreationDTO | 

try {
    final result = api_instance.v1ClaimsCreate(slug, claimCreationDTO);
    print(result);
} catch (e) {
    print('Exception when calling ClaimApi->v1ClaimsCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **slug** | **String**| The slug identifying the shop | 
 **claimCreationDTO** | [**ClaimCreationDTO**](ClaimCreationDTO.md)|  | 

### Return type

[**ClaimResponseDTO**](ClaimResponseDTO.md)

### Authorization

[HTTPBasic](../README.md#HTTPBasic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1ClaimsDelete**
> Object v1ClaimsDelete(slug, uuid)

Delete Claim

Delete a claim that already exists.

### Example
```dart
import 'package:gokarla/api.dart';
// TODO Configure HTTP basic authorization: HTTPBasic
//defaultApiClient.getAuthentication<HttpBasicAuth>('HTTPBasic').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('HTTPBasic').password = 'YOUR_PASSWORD';

final api_instance = ClaimApi();
final slug = slug_example; // String | The slug identifying the shop
final uuid = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | The claim's unique identifier

try {
    final result = api_instance.v1ClaimsDelete(slug, uuid);
    print(result);
} catch (e) {
    print('Exception when calling ClaimApi->v1ClaimsDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **slug** | **String**| The slug identifying the shop | 
 **uuid** | **String**| The claim's unique identifier | 

### Return type

[**Object**](Object.md)

### Authorization

[HTTPBasic](../README.md#HTTPBasic)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1ClaimsSearch**
> List<ClaimResponseDTO> v1ClaimsSearch(slug, page, perPage, orderId, shipmentId, resolutionPreference, status)

Search Claims

Search all claims or based on some values to filter.

### Example
```dart
import 'package:gokarla/api.dart';
// TODO Configure HTTP basic authorization: HTTPBasic
//defaultApiClient.getAuthentication<HttpBasicAuth>('HTTPBasic').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('HTTPBasic').password = 'YOUR_PASSWORD';

final api_instance = ClaimApi();
final slug = slug_example; // String | The slug identifying the shop
final page = 56; // int | 
final perPage = 56; // int | 
final orderId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final shipmentId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final resolutionPreference = ; // ClaimResolutionPreference | 
final status = ; // ClaimStatus | 

try {
    final result = api_instance.v1ClaimsSearch(slug, page, perPage, orderId, shipmentId, resolutionPreference, status);
    print(result);
} catch (e) {
    print('Exception when calling ClaimApi->v1ClaimsSearch: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **slug** | **String**| The slug identifying the shop | 
 **page** | **int**|  | [optional] [default to 1]
 **perPage** | **int**|  | [optional] [default to 30]
 **orderId** | **String**|  | [optional] 
 **shipmentId** | **String**|  | [optional] 
 **resolutionPreference** | [**ClaimResolutionPreference**](.md)|  | [optional] 
 **status** | [**ClaimStatus**](.md)|  | [optional] 

### Return type

[**List<ClaimResponseDTO>**](ClaimResponseDTO.md)

### Authorization

[HTTPBasic](../README.md#HTTPBasic)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1ClaimsUpdate**
> ClaimResponseDTO v1ClaimsUpdate(slug, uuid, claimUpdateDTO)

Update Claim

Modify an existing claim.

### Example
```dart
import 'package:gokarla/api.dart';
// TODO Configure HTTP basic authorization: HTTPBasic
//defaultApiClient.getAuthentication<HttpBasicAuth>('HTTPBasic').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('HTTPBasic').password = 'YOUR_PASSWORD';

final api_instance = ClaimApi();
final slug = slug_example; // String | The slug identifying the shop
final uuid = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | The claim's unique identifier
final claimUpdateDTO = ClaimUpdateDTO(); // ClaimUpdateDTO | 

try {
    final result = api_instance.v1ClaimsUpdate(slug, uuid, claimUpdateDTO);
    print(result);
} catch (e) {
    print('Exception when calling ClaimApi->v1ClaimsUpdate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **slug** | **String**| The slug identifying the shop | 
 **uuid** | **String**| The claim's unique identifier | 
 **claimUpdateDTO** | [**ClaimUpdateDTO**](ClaimUpdateDTO.md)|  | 

### Return type

[**ClaimResponseDTO**](ClaimResponseDTO.md)

### Authorization

[HTTPBasic](../README.md#HTTPBasic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

