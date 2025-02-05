# gokarla.api.AnnouncementApi

## Load the API package
```dart
import 'package:gokarla/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1AnnouncementsCreate**](AnnouncementApi.md#v1announcementscreate) | **POST** /v1/shops/{slug}/announcements | Create Announcement
[**v1AnnouncementsDelete**](AnnouncementApi.md#v1announcementsdelete) | **DELETE** /v1/shops/{slug}/announcements/{uuid} | Delete Announcement
[**v1AnnouncementsSearch**](AnnouncementApi.md#v1announcementssearch) | **GET** /v1/shops/{slug}/announcements | Search Announcements
[**v1AnnouncementsUpdate**](AnnouncementApi.md#v1announcementsupdate) | **PATCH** /v1/shops/{slug}/announcements/{uuid} | Update Announcement


# **v1AnnouncementsCreate**
> Object v1AnnouncementsCreate(slug, announcementCreationDTO)

Create Announcement

Create an announcement if it does not exist.

### Example
```dart
import 'package:gokarla/api.dart';
// TODO Configure HTTP basic authorization: HTTPBasic
//defaultApiClient.getAuthentication<HttpBasicAuth>('HTTPBasic').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('HTTPBasic').password = 'YOUR_PASSWORD';

final api_instance = AnnouncementApi();
final slug = slug_example; // String | The slug identifying the shop
final announcementCreationDTO = AnnouncementCreationDTO(); // AnnouncementCreationDTO | 

try {
    final result = api_instance.v1AnnouncementsCreate(slug, announcementCreationDTO);
    print(result);
} catch (e) {
    print('Exception when calling AnnouncementApi->v1AnnouncementsCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **slug** | **String**| The slug identifying the shop | 
 **announcementCreationDTO** | [**AnnouncementCreationDTO**](AnnouncementCreationDTO.md)|  | 

### Return type

[**Object**](Object.md)

### Authorization

[HTTPBasic](../README.md#HTTPBasic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1AnnouncementsDelete**
> Object v1AnnouncementsDelete(slug, uuid)

Delete Announcement

Delete an announcement that already exists.

### Example
```dart
import 'package:gokarla/api.dart';
// TODO Configure HTTP basic authorization: HTTPBasic
//defaultApiClient.getAuthentication<HttpBasicAuth>('HTTPBasic').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('HTTPBasic').password = 'YOUR_PASSWORD';

final api_instance = AnnouncementApi();
final slug = slug_example; // String | The slug identifying the shop
final uuid = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | The announcement's unique identifier

try {
    final result = api_instance.v1AnnouncementsDelete(slug, uuid);
    print(result);
} catch (e) {
    print('Exception when calling AnnouncementApi->v1AnnouncementsDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **slug** | **String**| The slug identifying the shop | 
 **uuid** | **String**| The announcement's unique identifier | 

### Return type

[**Object**](Object.md)

### Authorization

[HTTPBasic](../README.md#HTTPBasic)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1AnnouncementsSearch**
> List<AnnouncementDetailDTO> v1AnnouncementsSearch(slug, uuid, text, page, perPage, language)

Search Announcements

Search all announcements or based on some values to filter.

### Example
```dart
import 'package:gokarla/api.dart';
// TODO Configure HTTP basic authorization: HTTPBasic
//defaultApiClient.getAuthentication<HttpBasicAuth>('HTTPBasic').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('HTTPBasic').password = 'YOUR_PASSWORD';

final api_instance = AnnouncementApi();
final slug = slug_example; // String | The slug identifying the shop
final uuid = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final text = text_example; // String | 
final page = 56; // int | 
final perPage = 56; // int | 
final language = ; // LanguageEnum | 

try {
    final result = api_instance.v1AnnouncementsSearch(slug, uuid, text, page, perPage, language);
    print(result);
} catch (e) {
    print('Exception when calling AnnouncementApi->v1AnnouncementsSearch: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **slug** | **String**| The slug identifying the shop | 
 **uuid** | **String**|  | 
 **text** | **String**|  | 
 **page** | **int**|  | [optional] [default to 1]
 **perPage** | **int**|  | [optional] [default to 30]
 **language** | [**LanguageEnum**](.md)|  | [optional] 

### Return type

[**List<AnnouncementDetailDTO>**](AnnouncementDetailDTO.md)

### Authorization

[HTTPBasic](../README.md#HTTPBasic)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1AnnouncementsUpdate**
> Object v1AnnouncementsUpdate(slug, uuid, announcementUpdateDTO)

Update Announcement

Update an announcement partially or completely.

### Example
```dart
import 'package:gokarla/api.dart';
// TODO Configure HTTP basic authorization: HTTPBasic
//defaultApiClient.getAuthentication<HttpBasicAuth>('HTTPBasic').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('HTTPBasic').password = 'YOUR_PASSWORD';

final api_instance = AnnouncementApi();
final slug = slug_example; // String | The slug identifying the shop
final uuid = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | The announcement's unique identifier
final announcementUpdateDTO = AnnouncementUpdateDTO(); // AnnouncementUpdateDTO | 

try {
    final result = api_instance.v1AnnouncementsUpdate(slug, uuid, announcementUpdateDTO);
    print(result);
} catch (e) {
    print('Exception when calling AnnouncementApi->v1AnnouncementsUpdate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **slug** | **String**| The slug identifying the shop | 
 **uuid** | **String**| The announcement's unique identifier | 
 **announcementUpdateDTO** | [**AnnouncementUpdateDTO**](AnnouncementUpdateDTO.md)|  | 

### Return type

[**Object**](Object.md)

### Authorization

[HTTPBasic](../README.md#HTTPBasic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

