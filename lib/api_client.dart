//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of gokarla;

class ApiClient {
  ApiClient({this.basePath = 'http://localhost', this.authentication,});

  final String basePath;
  final Authentication? authentication;

  var _client = Client();
  final _defaultHeaderMap = <String, String>{};

  /// Returns the current HTTP [Client] instance to use in this class.
  ///
  /// The return value is guaranteed to never be null.
  Client get client => _client;

  /// Requests to use a new HTTP [Client] in this class.
  set client(Client newClient) {
    _client = newClient;
  }

  Map<String, String> get defaultHeaderMap => _defaultHeaderMap;

  void addDefaultHeader(String key, String value) {
     _defaultHeaderMap[key] = value;
  }

  // We don't use a Map<String, String> for queryParams.
  // If collectionFormat is 'multi', a key might appear multiple times.
  Future<Response> invokeAPI(
    String path,
    String method,
    List<QueryParam> queryParams,
    Object? body,
    Map<String, String> headerParams,
    Map<String, String> formParams,
    String? contentType,
  ) async {
    await authentication?.applyToParams(queryParams, headerParams);

    headerParams.addAll(_defaultHeaderMap);
    if (contentType != null) {
      headerParams['Content-Type'] = contentType;
    }

    final urlEncodedQueryParams = queryParams.map((param) => '$param');
    final queryString = urlEncodedQueryParams.isNotEmpty ? '?${urlEncodedQueryParams.join('&')}' : '';
    final uri = Uri.parse('$basePath$path$queryString');

    try {
      // Special case for uploading a single file which isn't a 'multipart/form-data'.
      if (
        body is MultipartFile && (contentType == null ||
        !contentType.toLowerCase().startsWith('multipart/form-data'))
      ) {
        final request = StreamedRequest(method, uri);
        request.headers.addAll(headerParams);
        request.contentLength = body.length;
        body.finalize().listen(
          request.sink.add,
          onDone: request.sink.close,
          // ignore: avoid_types_on_closure_parameters
          onError: (Object error, StackTrace trace) => request.sink.close(),
          cancelOnError: true,
        );
        final response = await _client.send(request);
        return Response.fromStream(response);
      }

      if (body is MultipartRequest) {
        final request = MultipartRequest(method, uri);
        request.fields.addAll(body.fields);
        request.files.addAll(body.files);
        request.headers.addAll(body.headers);
        request.headers.addAll(headerParams);
        final response = await _client.send(request);
        return Response.fromStream(response);
      }

      final msgBody = contentType == 'application/x-www-form-urlencoded'
        ? formParams
        : await serializeAsync(body);
      final nullableHeaderParams = headerParams.isEmpty ? null : headerParams;

      switch(method) {
        case 'POST': return await _client.post(uri, headers: nullableHeaderParams, body: msgBody,);
        case 'PUT': return await _client.put(uri, headers: nullableHeaderParams, body: msgBody,);
        case 'DELETE': return await _client.delete(uri, headers: nullableHeaderParams, body: msgBody,);
        case 'PATCH': return await _client.patch(uri, headers: nullableHeaderParams, body: msgBody,);
        case 'HEAD': return await _client.head(uri, headers: nullableHeaderParams,);
        case 'GET': return await _client.get(uri, headers: nullableHeaderParams,);
      }
    } on SocketException catch (error, trace) {
      throw ApiException.withInner(
        HttpStatus.badRequest,
        'Socket operation failed: $method $path',
        error,
        trace,
      );
    } on TlsException catch (error, trace) {
      throw ApiException.withInner(
        HttpStatus.badRequest,
        'TLS/SSL communication failed: $method $path',
        error,
        trace,
      );
    } on IOException catch (error, trace) {
      throw ApiException.withInner(
        HttpStatus.badRequest,
        'I/O operation failed: $method $path',
        error,
        trace,
      );
    } on ClientException catch (error, trace) {
      throw ApiException.withInner(
        HttpStatus.badRequest,
        'HTTP connection failed: $method $path',
        error,
        trace,
      );
    } on Exception catch (error, trace) {
      throw ApiException.withInner(
        HttpStatus.badRequest,
        'Exception occurred: $method $path',
        error,
        trace,
      );
    }

    throw ApiException(
      HttpStatus.badRequest,
      'Invalid HTTP operation: $method $path',
    );
  }

  Future<dynamic> deserializeAsync(String value, String targetType, {bool growable = false,}) async =>
    // ignore: deprecated_member_use_from_same_package
    deserialize(value, targetType, growable: growable);

  @Deprecated('Scheduled for removal in OpenAPI Generator 6.x. Use deserializeAsync() instead.')
  dynamic deserialize(String value, String targetType, {bool growable = false,}) {
    // Remove all spaces. Necessary for regular expressions as well.
    targetType = targetType.replaceAll(' ', ''); // ignore: parameter_assignments

    // If the expected target type is String, nothing to do...
    return targetType == 'String'
      ? value
      : fromJson(json.decode(value), targetType, growable: growable);
  }

  // ignore: deprecated_member_use_from_same_package
  Future<String> serializeAsync(Object? value) async => serialize(value);

  @Deprecated('Scheduled for removal in OpenAPI Generator 6.x. Use serializeAsync() instead.')
  String serialize(Object? value) => value == null ? '' : json.encode(value);

  /// Returns a native instance of an OpenAPI class matching the [specified type][targetType].
  static dynamic fromJson(dynamic value, String targetType, {bool growable = false,}) {
    try {
      switch (targetType) {
        case 'String':
          return value is String ? value : value.toString();
        case 'int':
          return value is int ? value : int.parse('$value');
        case 'double':
          return value is double ? value : double.parse('$value');
        case 'bool':
          if (value is bool) {
            return value;
          }
          final valueString = '$value'.toLowerCase();
          return valueString == 'true' || valueString == '1';
        case 'DateTime':
          return value is DateTime ? value : DateTime.tryParse(value);
        case 'APIKeyDTO':
          return APIKeyDTO.fromJson(value);
        case 'Address':
          return Address.fromJson(value);
        case 'AddressDTO':
          return AddressDTO.fromJson(value);
        case 'AddressSchema':
          return AddressSchema.fromJson(value);
        case 'AddressWithZipCodeDTO':
          return AddressWithZipCodeDTO.fromJson(value);
        case 'AllEvent':
          return AllEvent.fromJson(value);
        case 'AnnouncementCreationDTO':
          return AnnouncementCreationDTO.fromJson(value);
        case 'AnnouncementDetailDTO':
          return AnnouncementDetailDTO.fromJson(value);
        case 'AnnouncementUpdateDTO':
          return AnnouncementUpdateDTO.fromJson(value);
        case 'BaseCarrierSettings':
          return BaseCarrierSettings.fromJson(value);
        case 'BaseProductSchema':
          return BaseProductSchema.fromJson(value);
        case 'BaseTrackpagesSettings':
          return BaseTrackpagesSettings.fromJson(value);
        case 'BaseTriggerSettings':
          return BaseTriggerSettings.fromJson(value);
        case 'BasicPromotionPropertiesDTO':
          return BasicPromotionPropertiesDTO.fromJson(value);
        case 'BasicPromotionPropertiesI18n':
          return BasicPromotionPropertiesI18n.fromJson(value);
        case 'BasicPromotionPropertiesText':
          return BasicPromotionPropertiesText.fromJson(value);
        case 'CampaignRequestDTO':
          return CampaignRequestDTO.fromJson(value);
        case 'CampaignResponseDTO':
          return CampaignResponseDTO.fromJson(value);
        case 'CampaignStatus':
          return CampaignStatusTypeTransformer().decode(value);
        case 'CarrierDTO':
          return CarrierDTO.fromJson(value);
        case 'CarrierEnum':
          return CarrierEnumTypeTransformer().decode(value);
        case 'CarrierHealthUpdateWebhookPayload':
          return CarrierHealthUpdateWebhookPayload.fromJson(value);
        case 'CarrierSettingsV1':
          return CarrierSettingsV1.fromJson(value);
        case 'ClaimCreationDTO':
          return ClaimCreationDTO.fromJson(value);
        case 'ClaimReason':
          return ClaimReasonTypeTransformer().decode(value);
        case 'ClaimResolutionPreference':
          return ClaimResolutionPreferenceTypeTransformer().decode(value);
        case 'ClaimResponseDTO':
          return ClaimResponseDTO.fromJson(value);
        case 'ClaimStatus':
          return ClaimStatusTypeTransformer().decode(value);
        case 'ClaimUpdateDTO':
          return ClaimUpdateDTO.fromJson(value);
        case 'ClientIDAndSecretDTO':
          return ClientIDAndSecretDTO.fromJson(value);
        case 'CollectionPoint':
          return CollectionPoint.fromJson(value);
        case 'DamagedProductItemSchema':
          return DamagedProductItemSchema.fromJson(value);
        case 'Data':
          return Data.fromJson(value);
        case 'DiscountCategory':
          return DiscountCategoryTypeTransformer().decode(value);
        case 'DiscountCreationDTO':
          return DiscountCreationDTO.fromJson(value);
        case 'DiscountDTO':
          return DiscountDTO.fromJson(value);
        case 'DiscountResponseDTO':
          return DiscountResponseDTO.fromJson(value);
        case 'DiscountTargetSelectionEnum':
          return DiscountTargetSelectionEnumTypeTransformer().decode(value);
        case 'DiscountTargetTypeEnum':
          return DiscountTargetTypeEnumTypeTransformer().decode(value);
        case 'DiscountTypeEnum':
          return DiscountTypeEnumTypeTransformer().decode(value);
        case 'DiscountUpdateDTO':
          return DiscountUpdateDTO.fromJson(value);
        case 'DiscountValueTypeEnum':
          return DiscountValueTypeEnumTypeTransformer().decode(value);
        case 'ErrorDTO':
          return ErrorDTO.fromJson(value);
        case 'ErrorTypeEnum':
          return ErrorTypeEnumTypeTransformer().decode(value);
        case 'EventAdditionalInfo':
          return EventAdditionalInfo.fromJson(value);
        case 'ExpectedDelivery':
          return ExpectedDelivery.fromJson(value);
        case 'FeatureCommunity':
          return FeatureCommunityTypeTransformer().decode(value);
        case 'FlagEnum':
          return FlagEnumTypeTransformer().decode(value);
        case 'HTTPValidationError':
          return HTTPValidationError.fromJson(value);
        case 'Id':
          return Id.fromJson(value);
        case 'ImageResponseDTO':
          return ImageResponseDTO.fromJson(value);
        case 'ImageType':
          return ImageTypeTypeTransformer().decode(value);
        case 'KarlaApiKeyCreationDTO':
          return KarlaApiKeyCreationDTO.fromJson(value);
        case 'KlaviyoSettingsV1':
          return KlaviyoSettingsV1.fromJson(value);
        case 'LanguageEnum':
          return LanguageEnumTypeTransformer().decode(value);
        case 'Loc':
          return Loc.fromJson(value);
        case 'MerchantCreationDTO':
          return MerchantCreationDTO.fromJson(value);
        case 'MerchantDTO':
          return MerchantDTO.fromJson(value);
        case 'MerchantDetailDTO':
          return MerchantDetailDTO.fromJson(value);
        case 'MerchantId':
          return MerchantId.fromJson(value);
        case 'MerchantUpdateDTO':
          return MerchantUpdateDTO.fromJson(value);
        case 'OrderDetailDTO':
          return OrderDetailDTO.fromJson(value);
        case 'OrderDiscountDTO':
          return OrderDiscountDTO.fromJson(value);
        case 'OrderFulfillmentDTO':
          return OrderFulfillmentDTO.fromJson(value);
        case 'OrderId':
          return OrderId.fromJson(value);
        case 'OrderPlacementDTO':
          return OrderPlacementDTO.fromJson(value);
        case 'OrderReferenceType':
          return OrderReferenceTypeTypeTransformer().decode(value);
        case 'OrderTrackingDTO':
          return OrderTrackingDTO.fromJson(value);
        case 'OrderTrackingUpdateDTO':
          return OrderTrackingUpdateDTO.fromJson(value);
        case 'OrderUpdateDTO':
          return OrderUpdateDTO.fromJson(value);
        case 'OrgMemberDTO':
          return OrgMemberDTO.fromJson(value);
        case 'PhaseEnum':
          return PhaseEnumTypeTransformer().decode(value);
        case 'PickUpTypeEnum':
          return PickUpTypeEnumTypeTransformer().decode(value);
        case 'ProductDTO':
          return ProductDTO.fromJson(value);
        case 'ProductImageSchema':
          return ProductImageSchema.fromJson(value);
        case 'ProductPromotionPropertiesDTO':
          return ProductPromotionPropertiesDTO.fromJson(value);
        case 'ProductPromotionPropertiesI18n':
          return ProductPromotionPropertiesI18n.fromJson(value);
        case 'ProductPromotionPropertiesText':
          return ProductPromotionPropertiesText.fromJson(value);
        case 'ProductRecommendationCategory':
          return ProductRecommendationCategoryTypeTransformer().decode(value);
        case 'ProductRecommendationDTO':
          return ProductRecommendationDTO.fromJson(value);
        case 'ProductRecommendationI18n':
          return ProductRecommendationI18n.fromJson(value);
        case 'ProductRecommendationText':
          return ProductRecommendationText.fromJson(value);
        case 'ProductSaleDiscountDTO':
          return ProductSaleDiscountDTO.fromJson(value);
        case 'ProductSchema':
          return ProductSchema.fromJson(value);
        case 'ProductTypeEnum':
          return ProductTypeEnumTypeTransformer().decode(value);
        case 'PromotionProperties':
          return PromotionProperties.fromJson(value);
        case 'PromotionType':
          return PromotionTypeTypeTransformer().decode(value);
        case 'SelectedItemSchema':
          return SelectedItemSchema.fromJson(value);
        case 'SettingStatus':
          return SettingStatusTypeTransformer().decode(value);
        case 'ShipmentAction':
          return ShipmentActionTypeTransformer().decode(value);
        case 'ShipmentActionRequestDTO':
          return ShipmentActionRequestDTO.fromJson(value);
        case 'ShipmentAddEventRequestDTO':
          return ShipmentAddEventRequestDTO.fromJson(value);
        case 'ShipmentGroupKey':
          return ShipmentGroupKeyTypeTransformer().decode(value);
        case 'ShopProvider':
          return ShopProviderTypeTransformer().decode(value);
        case 'ShopRole':
          return ShopRole.fromJson(value);
        case 'ShopRoleEnum':
          return ShopRoleEnumTypeTransformer().decode(value);
        case 'ShopSettingsDTO':
          return ShopSettingsDTO.fromJson(value);
        case 'ShopifySettingsV1':
          return ShopifySettingsV1.fromJson(value);
        case 'ShopifyWebhookCreationDTO':
          return ShopifyWebhookCreationDTO.fromJson(value);
        case 'ShopifyWebhookDTO':
          return ShopifyWebhookDTO.fromJson(value);
        case 'ShopifyWebhookType':
          return ShopifyWebhookTypeTypeTransformer().decode(value);
        case 'StateEnum':
          return StateEnumTypeTransformer().decode(value);
        case 'TaxLineSchema':
          return TaxLineSchema.fromJson(value);
        case 'TrackingDTO':
          return TrackingDTO.fromJson(value);
        case 'TrackingEstimatedArrivalDTO':
          return TrackingEstimatedArrivalDTO.fromJson(value);
        case 'TrackingEventDTO':
          return TrackingEventDTO.fromJson(value);
        case 'TrackingEventKeyTranslationsDTO':
          return TrackingEventKeyTranslationsDTO.fromJson(value);
        case 'TrackingPickUpDTO':
          return TrackingPickUpDTO.fromJson(value);
        case 'TriggerSettingsV1':
          return TriggerSettingsV1.fromJson(value);
        case 'ValidationError':
          return ValidationError.fromJson(value);
        case 'ValidationErrorDTO':
          return ValidationErrorDTO.fromJson(value);
        case 'ValidationErrorLocInner':
          return ValidationErrorLocInner.fromJson(value);
        case 'WebhookCreationDTO':
          return WebhookCreationDTO.fromJson(value);
        case 'WebhookDTO':
          return WebhookDTO.fromJson(value);
        case 'WebhookEvent':
          return WebhookEventTypeTransformer().decode(value);
        case 'WebhookStatus':
          return WebhookStatusTypeTransformer().decode(value);
        case 'WebhookUpdateDTO':
          return WebhookUpdateDTO.fromJson(value);
        default:
          dynamic match;
          if (value is List && (match = _regList.firstMatch(targetType)?.group(1)) != null) {
            return value
              .map<dynamic>((dynamic v) => fromJson(v, match, growable: growable,))
              .toList(growable: growable);
          }
          if (value is Set && (match = _regSet.firstMatch(targetType)?.group(1)) != null) {
            return value
              .map<dynamic>((dynamic v) => fromJson(v, match, growable: growable,))
              .toSet();
          }
          if (value is Map && (match = _regMap.firstMatch(targetType)?.group(1)) != null) {
            return Map<String, dynamic>.fromIterables(
              value.keys.cast<String>(),
              value.values.map<dynamic>((dynamic v) => fromJson(v, match, growable: growable,)),
            );
          }
      }
    } on Exception catch (error, trace) {
      throw ApiException.withInner(HttpStatus.internalServerError, 'Exception during deserialization.', error, trace,);
    }
    throw ApiException(HttpStatus.internalServerError, 'Could not find a suitable class for deserialization',);
  }
}

/// Primarily intended for use in an isolate.
class DeserializationMessage {
  const DeserializationMessage({
    required this.json,
    required this.targetType,
    this.growable = false,
  });

  /// The JSON value to deserialize.
  final String json;

  /// Target type to deserialize to.
  final String targetType;

  /// Whether to make deserialized lists or maps growable.
  final bool growable;
}

/// Primarily intended for use in an isolate.
Future<dynamic> decodeAsync(DeserializationMessage message) async {
  // Remove all spaces. Necessary for regular expressions as well.
  final targetType = message.targetType.replaceAll(' ', '');

  // If the expected target type is String, nothing to do...
  return targetType == 'String'
    ? message.json
    : json.decode(message.json);
}

/// Primarily intended for use in an isolate.
Future<dynamic> deserializeAsync(DeserializationMessage message) async {
  // Remove all spaces. Necessary for regular expressions as well.
  final targetType = message.targetType.replaceAll(' ', '');

  // If the expected target type is String, nothing to do...
  return targetType == 'String'
    ? message.json
    : ApiClient.fromJson(
        json.decode(message.json),
        targetType,
        growable: message.growable,
      );
}

/// Primarily intended for use in an isolate.
Future<String> serializeAsync(Object? value) async => value == null ? '' : json.encode(value);
