//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of gokarla;


class CampaignApi {
  CampaignApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Create Campaign
  ///
  /// Create a campaign if it does not exist.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] slug (required):
  ///   The slug identifying the shop
  ///
  /// * [CampaignRequestDTO] campaignRequestDTO (required):
  Future<Response> v1CampaignsCreateWithHttpInfo(String slug, CampaignRequestDTO campaignRequestDTO,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/shops/{slug}/campaigns'
      .replaceAll('{slug}', slug);

    // ignore: prefer_final_locals
    Object? postBody = campaignRequestDTO;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Create Campaign
  ///
  /// Create a campaign if it does not exist.
  ///
  /// Parameters:
  ///
  /// * [String] slug (required):
  ///   The slug identifying the shop
  ///
  /// * [CampaignRequestDTO] campaignRequestDTO (required):
  Future<CampaignResponseDTO?> v1CampaignsCreate(String slug, CampaignRequestDTO campaignRequestDTO,) async {
    final response = await v1CampaignsCreateWithHttpInfo(slug, campaignRequestDTO,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CampaignResponseDTO',) as CampaignResponseDTO;
    
    }
    return null;
  }

  /// Delete Campaign
  ///
  /// Delete a campaign that already exists.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] slug (required):
  ///   The slug identifying the shop
  ///
  /// * [String] uuid (required):
  ///   The campaign's unique identifier
  Future<Response> v1CampaignsDeleteWithHttpInfo(String slug, String uuid,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/shops/{slug}/campaigns/{uuid}'
      .replaceAll('{slug}', slug)
      .replaceAll('{uuid}', uuid);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Delete Campaign
  ///
  /// Delete a campaign that already exists.
  ///
  /// Parameters:
  ///
  /// * [String] slug (required):
  ///   The slug identifying the shop
  ///
  /// * [String] uuid (required):
  ///   The campaign's unique identifier
  Future<Object?> v1CampaignsDelete(String slug, String uuid,) async {
    final response = await v1CampaignsDeleteWithHttpInfo(slug, uuid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Object',) as Object;
    
    }
    return null;
  }

  /// Upload Basic Campaign Image
  ///
  /// Upload an image for a campaign product.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] slug (required):
  ///   The slug identifying the shop
  ///
  /// * [String] campaignUuid (required):
  ///   The campaign's unique identifier
  ///
  /// * [MultipartFile] image (required):
  ///   The product image to upload
  Future<Response> v1CampaignsImageUploadWithHttpInfo(String slug, String campaignUuid, MultipartFile image,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/shops/{slug}/campaigns/{campaign_uuid}/image'
      .replaceAll('{slug}', slug)
      .replaceAll('{campaign_uuid}', campaignUuid);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['multipart/form-data'];

    bool hasFields = false;
    final mp = MultipartRequest('POST', Uri.parse(path));
    if (image != null) {
      hasFields = true;
      mp.fields[r'image'] = image.field;
      mp.files.add(image);
    }
    if (hasFields) {
      postBody = mp;
    }

    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Upload Basic Campaign Image
  ///
  /// Upload an image for a campaign product.
  ///
  /// Parameters:
  ///
  /// * [String] slug (required):
  ///   The slug identifying the shop
  ///
  /// * [String] campaignUuid (required):
  ///   The campaign's unique identifier
  ///
  /// * [MultipartFile] image (required):
  ///   The product image to upload
  Future<CampaignResponseDTO?> v1CampaignsImageUpload(String slug, String campaignUuid, MultipartFile image,) async {
    final response = await v1CampaignsImageUploadWithHttpInfo(slug, campaignUuid, image,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CampaignResponseDTO',) as CampaignResponseDTO;
    
    }
    return null;
  }

  /// Upload Campaign Product Image
  ///
  /// Upload an image for a campaign product.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] slug (required):
  ///   The slug identifying the shop
  ///
  /// * [String] campaignUuid (required):
  ///   The campaign's unique identifier
  ///
  /// * [int] productPosition (required):
  ///   The product's position in the list
  ///
  /// * [MultipartFile] image (required):
  ///   The product image to upload
  Future<Response> v1CampaignsProductsImageUploadWithHttpInfo(String slug, String campaignUuid, int productPosition, MultipartFile image,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/shops/{slug}/campaigns/{campaign_uuid}/products/{product_position}/image'
      .replaceAll('{slug}', slug)
      .replaceAll('{campaign_uuid}', campaignUuid)
      .replaceAll('{product_position}', productPosition.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['multipart/form-data'];

    bool hasFields = false;
    final mp = MultipartRequest('POST', Uri.parse(path));
    if (image != null) {
      hasFields = true;
      mp.fields[r'image'] = image.field;
      mp.files.add(image);
    }
    if (hasFields) {
      postBody = mp;
    }

    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Upload Campaign Product Image
  ///
  /// Upload an image for a campaign product.
  ///
  /// Parameters:
  ///
  /// * [String] slug (required):
  ///   The slug identifying the shop
  ///
  /// * [String] campaignUuid (required):
  ///   The campaign's unique identifier
  ///
  /// * [int] productPosition (required):
  ///   The product's position in the list
  ///
  /// * [MultipartFile] image (required):
  ///   The product image to upload
  Future<CampaignResponseDTO?> v1CampaignsProductsImageUpload(String slug, String campaignUuid, int productPosition, MultipartFile image,) async {
    final response = await v1CampaignsProductsImageUploadWithHttpInfo(slug, campaignUuid, productPosition, image,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CampaignResponseDTO',) as CampaignResponseDTO;
    
    }
    return null;
  }

  /// Search Campaigns
  ///
  /// Search all campaigns or based on some values to filter.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] slug (required):
  ///   The slug identifying the shop
  ///
  /// * [int] page:
  ///
  /// * [int] perPage:
  ///
  /// * [String] uuid:
  ///
  /// * [String] name:
  ///
  /// * [DateTime] startDate:
  ///
  /// * [DateTime] endDate:
  ///
  /// * [String] segment:
  ///
  /// * [PromotionType] promotionType:
  ///
  /// * [bool] enabled:
  Future<Response> v1CampaignsSearchWithHttpInfo(String slug, { int? page, int? perPage, String? uuid, String? name, DateTime? startDate, DateTime? endDate, String? segment, PromotionType? promotionType, bool? enabled, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/shops/{slug}/campaigns'
      .replaceAll('{slug}', slug);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (page != null) {
      queryParams.addAll(_queryParams('', 'page', page));
    }
    if (perPage != null) {
      queryParams.addAll(_queryParams('', 'per_page', perPage));
    }
    if (uuid != null) {
      queryParams.addAll(_queryParams('', 'uuid', uuid));
    }
    if (name != null) {
      queryParams.addAll(_queryParams('', 'name', name));
    }
    if (startDate != null) {
      queryParams.addAll(_queryParams('', 'start_date', startDate));
    }
    if (endDate != null) {
      queryParams.addAll(_queryParams('', 'end_date', endDate));
    }
    if (segment != null) {
      queryParams.addAll(_queryParams('', 'segment', segment));
    }
    if (promotionType != null) {
      queryParams.addAll(_queryParams('', 'promotion_type', promotionType));
    }
    if (enabled != null) {
      queryParams.addAll(_queryParams('', 'enabled', enabled));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Search Campaigns
  ///
  /// Search all campaigns or based on some values to filter.
  ///
  /// Parameters:
  ///
  /// * [String] slug (required):
  ///   The slug identifying the shop
  ///
  /// * [int] page:
  ///
  /// * [int] perPage:
  ///
  /// * [String] uuid:
  ///
  /// * [String] name:
  ///
  /// * [DateTime] startDate:
  ///
  /// * [DateTime] endDate:
  ///
  /// * [String] segment:
  ///
  /// * [PromotionType] promotionType:
  ///
  /// * [bool] enabled:
  Future<List<CampaignResponseDTO>?> v1CampaignsSearch(String slug, { int? page, int? perPage, String? uuid, String? name, DateTime? startDate, DateTime? endDate, String? segment, PromotionType? promotionType, bool? enabled, }) async {
    final response = await v1CampaignsSearchWithHttpInfo(slug,  page: page, perPage: perPage, uuid: uuid, name: name, startDate: startDate, endDate: endDate, segment: segment, promotionType: promotionType, enabled: enabled, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<CampaignResponseDTO>') as List)
        .cast<CampaignResponseDTO>()
        .toList(growable: false);

    }
    return null;
  }

  /// Update Campaign
  ///
  /// Update a campaign completely.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] slug (required):
  ///   The slug identifying the shop
  ///
  /// * [String] uuid (required):
  ///   The campaign's unique identifier
  ///
  /// * [CampaignRequestDTO] campaignRequestDTO (required):
  Future<Response> v1CampaignsUpdateWithHttpInfo(String slug, String uuid, CampaignRequestDTO campaignRequestDTO,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/shops/{slug}/campaigns/{uuid}'
      .replaceAll('{slug}', slug)
      .replaceAll('{uuid}', uuid);

    // ignore: prefer_final_locals
    Object? postBody = campaignRequestDTO;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Update Campaign
  ///
  /// Update a campaign completely.
  ///
  /// Parameters:
  ///
  /// * [String] slug (required):
  ///   The slug identifying the shop
  ///
  /// * [String] uuid (required):
  ///   The campaign's unique identifier
  ///
  /// * [CampaignRequestDTO] campaignRequestDTO (required):
  Future<CampaignResponseDTO?> v1CampaignsUpdate(String slug, String uuid, CampaignRequestDTO campaignRequestDTO,) async {
    final response = await v1CampaignsUpdateWithHttpInfo(slug, uuid, campaignRequestDTO,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CampaignResponseDTO',) as CampaignResponseDTO;
    
    }
    return null;
  }
}
