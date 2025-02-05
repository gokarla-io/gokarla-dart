# gokarla.api.OrderApi

## Load the API package
```dart
import 'package:gokarla/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1OrdersFulfillmentBulk**](OrderApi.md#v1ordersfulfillmentbulk) | **PUT** /v1/shops/{slug}/orders/bulk | Fulfill Orders
[**v1OrdersPlacement**](OrderApi.md#v1ordersplacement) | **POST** /v1/shops/{slug}/orders | Place Order
[**v1OrdersSearch**](OrderApi.md#v1orderssearch) | **GET** /v1/shops/{slug}/orders | Search Orders
[**v1OrdersShipmentsUpdate**](OrderApi.md#v1ordersshipmentsupdate) | **PATCH** /v1/shops/{slug}/orders/{order_id}/shipments/{shipment_id} | Update Order Shipment
[**v1OrdersUpdate**](OrderApi.md#v1ordersupdate) | **PATCH** /v1/shops/{slug}/orders/{order_id} | Update Order
[**v1OrdersUpsert**](OrderApi.md#v1ordersupsert) | **PUT** /v1/shops/{slug}/orders | Upsert Order


# **v1OrdersFulfillmentBulk**
> Object v1OrdersFulfillmentBulk(slug, orderFulfillmentDTO)

Fulfill Orders

Process a shop order fulfillment in bulk (via shop slug).

### Example
```dart
import 'package:gokarla/api.dart';
// TODO Configure HTTP basic authorization: HTTPBasic
//defaultApiClient.getAuthentication<HttpBasicAuth>('HTTPBasic').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('HTTPBasic').password = 'YOUR_PASSWORD';

final api_instance = OrderApi();
final slug = slug_example; // String | The slug identifying the shop
final orderFulfillmentDTO = [List<OrderFulfillmentDTO>()]; // List<OrderFulfillmentDTO> | 

try {
    final result = api_instance.v1OrdersFulfillmentBulk(slug, orderFulfillmentDTO);
    print(result);
} catch (e) {
    print('Exception when calling OrderApi->v1OrdersFulfillmentBulk: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **slug** | **String**| The slug identifying the shop | 
 **orderFulfillmentDTO** | [**List<OrderFulfillmentDTO>**](OrderFulfillmentDTO.md)|  | 

### Return type

[**Object**](Object.md)

### Authorization

[HTTPBasic](../README.md#HTTPBasic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1OrdersPlacement**
> Object v1OrdersPlacement(slug, orderPlacementDTO)

Place Order

Process a shop order placement.

### Example
```dart
import 'package:gokarla/api.dart';
// TODO Configure HTTP basic authorization: HTTPBasic
//defaultApiClient.getAuthentication<HttpBasicAuth>('HTTPBasic').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('HTTPBasic').password = 'YOUR_PASSWORD';

final api_instance = OrderApi();
final slug = slug_example; // String | The slug identifying the shop
final orderPlacementDTO = OrderPlacementDTO(); // OrderPlacementDTO | 

try {
    final result = api_instance.v1OrdersPlacement(slug, orderPlacementDTO);
    print(result);
} catch (e) {
    print('Exception when calling OrderApi->v1OrdersPlacement: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **slug** | **String**| The slug identifying the shop | 
 **orderPlacementDTO** | [**OrderPlacementDTO**](OrderPlacementDTO.md)|  | 

### Return type

[**Object**](Object.md)

### Authorization

[HTTPBasic](../README.md#HTTPBasic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1OrdersSearch**
> List<OrderDetailDTO> v1OrdersSearch(slug, page, perPage, emailId, externalId, orderName, orderNumber, uuid, zipCode)

Search Orders

Search for shop orders (and its trackings if any) based on filters.

### Example
```dart
import 'package:gokarla/api.dart';
// TODO Configure HTTP basic authorization: HTTPBasic
//defaultApiClient.getAuthentication<HttpBasicAuth>('HTTPBasic').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('HTTPBasic').password = 'YOUR_PASSWORD';

final api_instance = OrderApi();
final slug = slug_example; // String | The slug identifying the shop
final page = 56; // int | 
final perPage = 56; // int | 
final emailId = emailId_example; // String | 
final externalId = externalId_example; // String | 
final orderName = orderName_example; // String | 
final orderNumber = orderNumber_example; // String | 
final uuid = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final zipCode = zipCode_example; // String | 

try {
    final result = api_instance.v1OrdersSearch(slug, page, perPage, emailId, externalId, orderName, orderNumber, uuid, zipCode);
    print(result);
} catch (e) {
    print('Exception when calling OrderApi->v1OrdersSearch: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **slug** | **String**| The slug identifying the shop | 
 **page** | **int**|  | [optional] [default to 1]
 **perPage** | **int**|  | [optional] [default to 30]
 **emailId** | **String**|  | [optional] 
 **externalId** | **String**|  | [optional] 
 **orderName** | **String**|  | [optional] 
 **orderNumber** | **String**|  | [optional] 
 **uuid** | **String**|  | [optional] 
 **zipCode** | **String**|  | [optional] 

### Return type

[**List<OrderDetailDTO>**](OrderDetailDTO.md)

### Authorization

[HTTPBasic](../README.md#HTTPBasic)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1OrdersShipmentsUpdate**
> TrackingDTO v1OrdersShipmentsUpdate(slug, orderId, shipmentId, orderTrackingUpdateDTO)

Update Order Shipment

Process a shop order shipment update.

### Example
```dart
import 'package:gokarla/api.dart';
// TODO Configure HTTP basic authorization: HTTPBasic
//defaultApiClient.getAuthentication<HttpBasicAuth>('HTTPBasic').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('HTTPBasic').password = 'YOUR_PASSWORD';

final api_instance = OrderApi();
final slug = slug_example; // String | The slug identifying the shop
final orderId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | The id given by Karla identifying the order
final shipmentId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | The id given by Karla identifying the tracking from the order
final orderTrackingUpdateDTO = OrderTrackingUpdateDTO(); // OrderTrackingUpdateDTO | 

try {
    final result = api_instance.v1OrdersShipmentsUpdate(slug, orderId, shipmentId, orderTrackingUpdateDTO);
    print(result);
} catch (e) {
    print('Exception when calling OrderApi->v1OrdersShipmentsUpdate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **slug** | **String**| The slug identifying the shop | 
 **orderId** | **String**| The id given by Karla identifying the order | 
 **shipmentId** | **String**| The id given by Karla identifying the tracking from the order | 
 **orderTrackingUpdateDTO** | [**OrderTrackingUpdateDTO**](OrderTrackingUpdateDTO.md)|  | 

### Return type

[**TrackingDTO**](TrackingDTO.md)

### Authorization

[HTTPBasic](../README.md#HTTPBasic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1OrdersUpdate**
> OrderDetailDTO v1OrdersUpdate(slug, orderId, orderUpdateDTO)

Update Order

Process a shop order update.

### Example
```dart
import 'package:gokarla/api.dart';
// TODO Configure HTTP basic authorization: HTTPBasic
//defaultApiClient.getAuthentication<HttpBasicAuth>('HTTPBasic').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('HTTPBasic').password = 'YOUR_PASSWORD';

final api_instance = OrderApi();
final slug = slug_example; // String | The slug identifying the shop
final orderId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | The id given by Karla identifying the order
final orderUpdateDTO = OrderUpdateDTO(); // OrderUpdateDTO | 

try {
    final result = api_instance.v1OrdersUpdate(slug, orderId, orderUpdateDTO);
    print(result);
} catch (e) {
    print('Exception when calling OrderApi->v1OrdersUpdate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **slug** | **String**| The slug identifying the shop | 
 **orderId** | **String**| The id given by Karla identifying the order | 
 **orderUpdateDTO** | [**OrderUpdateDTO**](OrderUpdateDTO.md)|  | 

### Return type

[**OrderDetailDTO**](OrderDetailDTO.md)

### Authorization

[HTTPBasic](../README.md#HTTPBasic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1OrdersUpsert**
> Object v1OrdersUpsert(slug, orderFulfillmentDTO)

Upsert Order

Process a shop order upsert.

### Example
```dart
import 'package:gokarla/api.dart';
// TODO Configure HTTP basic authorization: HTTPBasic
//defaultApiClient.getAuthentication<HttpBasicAuth>('HTTPBasic').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('HTTPBasic').password = 'YOUR_PASSWORD';

final api_instance = OrderApi();
final slug = slug_example; // String | The slug identifying the shop
final orderFulfillmentDTO = OrderFulfillmentDTO(); // OrderFulfillmentDTO | 

try {
    final result = api_instance.v1OrdersUpsert(slug, orderFulfillmentDTO);
    print(result);
} catch (e) {
    print('Exception when calling OrderApi->v1OrdersUpsert: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **slug** | **String**| The slug identifying the shop | 
 **orderFulfillmentDTO** | [**OrderFulfillmentDTO**](OrderFulfillmentDTO.md)|  | 

### Return type

[**Object**](Object.md)

### Authorization

[HTTPBasic](../README.md#HTTPBasic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

