# gokarla.api.OrganizationApi

## Load the API package
```dart
import 'package:gokarla/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1OrgMembersSearch**](OrganizationApi.md#v1orgmemberssearch) | **GET** /v1/orgs/{slug}/members | Search Org Members


# **v1OrgMembersSearch**
> List<OrgMemberDTO> v1OrgMembersSearch(slug, page, perPage, emailId)

Search Org Members

Search for shop orders (and its trackings if any) based on filters.

### Example
```dart
import 'package:gokarla/api.dart';
// TODO Configure HTTP basic authorization: HTTPBasic
//defaultApiClient.getAuthentication<HttpBasicAuth>('HTTPBasic').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('HTTPBasic').password = 'YOUR_PASSWORD';

final api_instance = OrganizationApi();
final slug = slug_example; // String | The slug identifying the shop
final page = 56; // int | 
final perPage = 56; // int | 
final emailId = emailId_example; // String | 

try {
    final result = api_instance.v1OrgMembersSearch(slug, page, perPage, emailId);
    print(result);
} catch (e) {
    print('Exception when calling OrganizationApi->v1OrgMembersSearch: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **slug** | **String**| The slug identifying the shop | 
 **page** | **int**|  | [optional] [default to 1]
 **perPage** | **int**|  | [optional] [default to 30]
 **emailId** | **String**|  | [optional] 

### Return type

[**List<OrgMemberDTO>**](OrgMemberDTO.md)

### Authorization

[HTTPBasic](../README.md#HTTPBasic)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

