# gokarla.model.BaseProductSchema

## Load the model package
```dart
import 'package:gokarla/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**title** | **String** | Product title | [optional] 
**quantity** | **int** | Quantity of products | [optional] 
**price** | **num** | Price of the product | [optional] 
**size** | **String** | Size of the product | [optional] 
**images** | [**List<ProductImageSchema>**](ProductImageSchema.md) | List of product images | [optional] [default to const []]
**sku** | **String** | SKU of the product | [optional] 
**weight** | **num** | Weight of the product in grams | [optional] 
**taxLines** | [**List<TaxLineSchema>**](TaxLineSchema.md) | List of tax lines | [optional] [default to const []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


