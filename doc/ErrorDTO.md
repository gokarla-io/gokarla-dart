# gokarla.model.ErrorDTO

## Load the model package
```dart
import 'package:gokarla/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**errors** | [**List<ValidationErrorDTO>**](ValidationErrorDTO.md) |  | [optional] [default to const []]
**key** | **String** | Descriptive error key | [optional] 
**message** | **String** | Generic error message | [optional] 
**type** | [**ErrorTypeEnum**](ErrorTypeEnum.md) | Type of error | [optional] [default to ErrorTypeEnum.apiError]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


