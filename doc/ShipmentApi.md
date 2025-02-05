# gokarla.api.ShipmentApi

## Load the API package
```dart
import 'package:gokarla/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1ShipmentEventsCreate**](ShipmentApi.md#v1shipmenteventscreate) | **POST** /v1/shops/{slug}/shipments/{shipment_id}/events | Create New Shipment Event


# **v1ShipmentEventsCreate**
> Object v1ShipmentEventsCreate(slug, shipmentId, shipmentAddEventRequestDTO)

Create New Shipment Event

Create a new event for a shipment.

### Example
```dart
import 'package:gokarla/api.dart';
// TODO Configure HTTP basic authorization: HTTPBasic
//defaultApiClient.getAuthentication<HttpBasicAuth>('HTTPBasic').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('HTTPBasic').password = 'YOUR_PASSWORD';

final api_instance = ShipmentApi();
final slug = slug_example; // String | 
final shipmentId = shipmentId_example; // String | 
final shipmentAddEventRequestDTO = ShipmentAddEventRequestDTO(); // ShipmentAddEventRequestDTO | 

try {
    final result = api_instance.v1ShipmentEventsCreate(slug, shipmentId, shipmentAddEventRequestDTO);
    print(result);
} catch (e) {
    print('Exception when calling ShipmentApi->v1ShipmentEventsCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **slug** | **String**|  | 
 **shipmentId** | **String**|  | 
 **shipmentAddEventRequestDTO** | [**ShipmentAddEventRequestDTO**](ShipmentAddEventRequestDTO.md)|  | 

### Return type

[**Object**](Object.md)

### Authorization

[HTTPBasic](../README.md#HTTPBasic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

