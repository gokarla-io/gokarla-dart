# gokarla.api.DiscountApi

## Load the API package
```dart
import 'package:gokarla/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1DiscountsCreate**](DiscountApi.md#v1discountscreate) | **POST** /v1/shops/{slug}/discounts | Create Discount
[**v1DiscountsDelete**](DiscountApi.md#v1discountsdelete) | **DELETE** /v1/shops/{slug}/discounts/{uuid} | Delete Discount
[**v1DiscountsSearch**](DiscountApi.md#v1discountssearch) | **GET** /v1/shops/{slug}/discounts | Search Discounts
[**v1DiscountsUpdate**](DiscountApi.md#v1discountsupdate) | **PATCH** /v1/shops/{slug}/discounts/{uuid} | Update Discount


# **v1DiscountsCreate**
> Object v1DiscountsCreate(slug, discountCreationDTO)

Create Discount

Create a discount if it does not exist.

### Example
```dart
import 'package:gokarla/api.dart';
// TODO Configure HTTP basic authorization: HTTPBasic
//defaultApiClient.getAuthentication<HttpBasicAuth>('HTTPBasic').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('HTTPBasic').password = 'YOUR_PASSWORD';

final api_instance = DiscountApi();
final slug = slug_example; // String | The slug identifying the shop
final discountCreationDTO = DiscountCreationDTO(); // DiscountCreationDTO | 

try {
    final result = api_instance.v1DiscountsCreate(slug, discountCreationDTO);
    print(result);
} catch (e) {
    print('Exception when calling DiscountApi->v1DiscountsCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **slug** | **String**| The slug identifying the shop | 
 **discountCreationDTO** | [**DiscountCreationDTO**](DiscountCreationDTO.md)|  | 

### Return type

[**Object**](Object.md)

### Authorization

[HTTPBasic](../README.md#HTTPBasic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1DiscountsDelete**
> Object v1DiscountsDelete(slug, uuid)

Delete Discount

Delete a discount that already exists.

### Example
```dart
import 'package:gokarla/api.dart';
// TODO Configure HTTP basic authorization: HTTPBasic
//defaultApiClient.getAuthentication<HttpBasicAuth>('HTTPBasic').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('HTTPBasic').password = 'YOUR_PASSWORD';

final api_instance = DiscountApi();
final slug = slug_example; // String | The slug identifying the shop
final uuid = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | The discount's unique identifier

try {
    final result = api_instance.v1DiscountsDelete(slug, uuid);
    print(result);
} catch (e) {
    print('Exception when calling DiscountApi->v1DiscountsDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **slug** | **String**| The slug identifying the shop | 
 **uuid** | **String**| The discount's unique identifier | 

### Return type

[**Object**](Object.md)

### Authorization

[HTTPBasic](../README.md#HTTPBasic)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1DiscountsSearch**
> List<DiscountResponseDTO> v1DiscountsSearch(slug, code, targetSelection, targetType, title, valueType, value, page, perPage, uuid, type)

Search Discounts

Search all discounts or based on some values to filter.

### Example
```dart
import 'package:gokarla/api.dart';
// TODO Configure HTTP basic authorization: HTTPBasic
//defaultApiClient.getAuthentication<HttpBasicAuth>('HTTPBasic').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('HTTPBasic').password = 'YOUR_PASSWORD';

final api_instance = DiscountApi();
final slug = slug_example; // String | The slug identifying the shop
final code = code_example; // String | 
final targetSelection = ; // DiscountTargetSelectionEnum | 
final targetType = ; // DiscountTargetTypeEnum | 
final title = title_example; // String | 
final valueType = ; // DiscountValueTypeEnum | 
final value = 8.14; // num | 
final page = 56; // int | 
final perPage = 56; // int | 
final uuid = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final type = ; // DiscountTypeEnum | 

try {
    final result = api_instance.v1DiscountsSearch(slug, code, targetSelection, targetType, title, valueType, value, page, perPage, uuid, type);
    print(result);
} catch (e) {
    print('Exception when calling DiscountApi->v1DiscountsSearch: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **slug** | **String**| The slug identifying the shop | 
 **code** | **String**|  | [optional] 
 **targetSelection** | [**DiscountTargetSelectionEnum**](.md)|  | [optional] 
 **targetType** | [**DiscountTargetTypeEnum**](.md)|  | [optional] 
 **title** | **String**|  | [optional] 
 **valueType** | [**DiscountValueTypeEnum**](.md)|  | [optional] 
 **value** | **num**|  | [optional] 
 **page** | **int**|  | [optional] [default to 1]
 **perPage** | **int**|  | [optional] [default to 30]
 **uuid** | **String**|  | [optional] 
 **type** | [**DiscountTypeEnum**](.md)|  | [optional] 

### Return type

[**List<DiscountResponseDTO>**](DiscountResponseDTO.md)

### Authorization

[HTTPBasic](../README.md#HTTPBasic)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1DiscountsUpdate**
> Object v1DiscountsUpdate(slug, uuid, discountUpdateDTO)

Update Discount

Update a discount partially or completely.

### Example
```dart
import 'package:gokarla/api.dart';
// TODO Configure HTTP basic authorization: HTTPBasic
//defaultApiClient.getAuthentication<HttpBasicAuth>('HTTPBasic').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('HTTPBasic').password = 'YOUR_PASSWORD';

final api_instance = DiscountApi();
final slug = slug_example; // String | The slug identifying the shop
final uuid = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | The discount's unique identifier
final discountUpdateDTO = DiscountUpdateDTO(); // DiscountUpdateDTO | 

try {
    final result = api_instance.v1DiscountsUpdate(slug, uuid, discountUpdateDTO);
    print(result);
} catch (e) {
    print('Exception when calling DiscountApi->v1DiscountsUpdate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **slug** | **String**| The slug identifying the shop | 
 **uuid** | **String**| The discount's unique identifier | 
 **discountUpdateDTO** | [**DiscountUpdateDTO**](DiscountUpdateDTO.md)|  | 

### Return type

[**Object**](Object.md)

### Authorization

[HTTPBasic](../README.md#HTTPBasic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

