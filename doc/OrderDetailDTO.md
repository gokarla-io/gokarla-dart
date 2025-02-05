# gokarla.model.OrderDetailDTO

## Load the model package
```dart
import 'package:gokarla/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**orderNumber** | **String** | Opinionated numeric identification of the order | 
**orderName** | **String** | Opinionated name of the order | [optional] 
**orderPlacedAt** | [**DateTime**](DateTime.md) | Date the order was placed. Will take current time if not provided | [optional] 
**totalOrderPrice** | **num** | Total price of the order | [optional] 
**shippingPrice** | **num** | Total shipping price of the order | [optional] 
**subTotalPrice** | **num** | Subtotal price of items before shipping and discounts | [optional] 
**discountPrice** | **num** | Total price of all the accumulated discounts | [optional] [default to 0]
**products** | [**List<ProductDTO>**](ProductDTO.md) | Line items for the order | [optional] [default to const []]
**discounts** | [**List<OrderDiscountDTO>**](OrderDiscountDTO.md) | Discounts applied to the order | [optional] [default to const []]
**emailId** | **String** | Email address of the customer | [optional] 
**address** | [**AddressDTO**](AddressDTO.md) | Shipment delivery address | 
**currency** | **String** | ISO 4217 currency code (default to 'EUR') | [optional] [default to 'EUR']
**segments** | **List<String>** | The segments to which the user of the order belongs | [optional] [default to const []]
**weight** | **num** | Total weight of the order in grams | [optional] 
**merchantSlug** | **String** | Merchant slug identifier | 
**externalId** | **String** | External ID of the order | 
**uuid** | **String** | Order identifier | 
**trackings** | [**List<TrackingDTO>**](TrackingDTO.md) | The tracking information for the shipment/s involved in the order | [optional] [default to const []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


