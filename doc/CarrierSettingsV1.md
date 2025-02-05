# gokarla.model.CarrierSettingsV1

## Load the model package
```dart
import 'package:gokarla/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ppStatus** | [**SettingStatus**](SettingStatus.md) | Current status of the pp integration | [optional] [default to SettingStatus.live]
**ppDisabledCarriers** | **List<String>** | List of carrier references to disable for pp | [optional] [default to const []]
**hcStatus** | [**SettingStatus**](SettingStatus.md) | Current status of the hc integration | [optional] [default to SettingStatus.live]
**hcEnabledCarriers** | **List<String>** | List of carrier references to enable for hc | [optional] [default to const []]
**overridePpTrackingConfigForSegments** | **List<String>** | List of segments to submit to pp regardless of tracking config | [optional] [default to const []]
**overrideHcTrackingConfigForSegments** | **List<String>** | List of segments to submit to hc regardless of tracking config | [optional] [default to const []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


