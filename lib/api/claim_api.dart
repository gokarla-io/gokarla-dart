//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of gokarla;


class ClaimApi {
  ClaimApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Create Claim
  ///
  /// Create a claim if it does not exist.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] slug (required):
  ///   The slug identifying the shop
  ///
  /// * [ClaimCreationDTO] claimCreationDTO (required):
  Future<Response> v1ClaimsCreateWithHttpInfo(String slug, ClaimCreationDTO claimCreationDTO,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/shops/{slug}/claims'
      .replaceAll('{slug}', slug);

    // ignore: prefer_final_locals
    Object? postBody = claimCreationDTO;

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

  /// Create Claim
  ///
  /// Create a claim if it does not exist.
  ///
  /// Parameters:
  ///
  /// * [String] slug (required):
  ///   The slug identifying the shop
  ///
  /// * [ClaimCreationDTO] claimCreationDTO (required):
  Future<ClaimResponseDTO?> v1ClaimsCreate(String slug, ClaimCreationDTO claimCreationDTO,) async {
    final response = await v1ClaimsCreateWithHttpInfo(slug, claimCreationDTO,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ClaimResponseDTO',) as ClaimResponseDTO;
    
    }
    return null;
  }

  /// Delete Claim
  ///
  /// Delete a claim that already exists.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] slug (required):
  ///   The slug identifying the shop
  ///
  /// * [String] uuid (required):
  ///   The claim's unique identifier
  Future<Response> v1ClaimsDeleteWithHttpInfo(String slug, String uuid,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/shops/{slug}/claims/{uuid}'
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

  /// Delete Claim
  ///
  /// Delete a claim that already exists.
  ///
  /// Parameters:
  ///
  /// * [String] slug (required):
  ///   The slug identifying the shop
  ///
  /// * [String] uuid (required):
  ///   The claim's unique identifier
  Future<Object?> v1ClaimsDelete(String slug, String uuid,) async {
    final response = await v1ClaimsDeleteWithHttpInfo(slug, uuid,);
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

  /// Search Claims
  ///
  /// Search all claims or based on some values to filter.
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
  /// * [String] orderId:
  ///
  /// * [String] shipmentId:
  ///
  /// * [ClaimResolutionPreference] resolutionPreference:
  ///
  /// * [ClaimStatus] status:
  Future<Response> v1ClaimsSearchWithHttpInfo(String slug, { int? page, int? perPage, String? orderId, String? shipmentId, ClaimResolutionPreference? resolutionPreference, ClaimStatus? status, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/shops/{slug}/claims'
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
    if (orderId != null) {
      queryParams.addAll(_queryParams('', 'order_id', orderId));
    }
    if (shipmentId != null) {
      queryParams.addAll(_queryParams('', 'shipment_id', shipmentId));
    }
    if (resolutionPreference != null) {
      queryParams.addAll(_queryParams('', 'resolution_preference', resolutionPreference));
    }
    if (status != null) {
      queryParams.addAll(_queryParams('', 'status', status));
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

  /// Search Claims
  ///
  /// Search all claims or based on some values to filter.
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
  /// * [String] orderId:
  ///
  /// * [String] shipmentId:
  ///
  /// * [ClaimResolutionPreference] resolutionPreference:
  ///
  /// * [ClaimStatus] status:
  Future<List<ClaimResponseDTO>?> v1ClaimsSearch(String slug, { int? page, int? perPage, String? orderId, String? shipmentId, ClaimResolutionPreference? resolutionPreference, ClaimStatus? status, }) async {
    final response = await v1ClaimsSearchWithHttpInfo(slug,  page: page, perPage: perPage, orderId: orderId, shipmentId: shipmentId, resolutionPreference: resolutionPreference, status: status, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<ClaimResponseDTO>') as List)
        .cast<ClaimResponseDTO>()
        .toList(growable: false);

    }
    return null;
  }

  /// Update Claim
  ///
  /// Modify an existing claim.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] slug (required):
  ///   The slug identifying the shop
  ///
  /// * [String] uuid (required):
  ///   The claim's unique identifier
  ///
  /// * [ClaimUpdateDTO] claimUpdateDTO (required):
  Future<Response> v1ClaimsUpdateWithHttpInfo(String slug, String uuid, ClaimUpdateDTO claimUpdateDTO,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/shops/{slug}/claims/{uuid}'
      .replaceAll('{slug}', slug)
      .replaceAll('{uuid}', uuid);

    // ignore: prefer_final_locals
    Object? postBody = claimUpdateDTO;

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

  /// Update Claim
  ///
  /// Modify an existing claim.
  ///
  /// Parameters:
  ///
  /// * [String] slug (required):
  ///   The slug identifying the shop
  ///
  /// * [String] uuid (required):
  ///   The claim's unique identifier
  ///
  /// * [ClaimUpdateDTO] claimUpdateDTO (required):
  Future<ClaimResponseDTO?> v1ClaimsUpdate(String slug, String uuid, ClaimUpdateDTO claimUpdateDTO,) async {
    final response = await v1ClaimsUpdateWithHttpInfo(slug, uuid, claimUpdateDTO,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ClaimResponseDTO',) as ClaimResponseDTO;
    
    }
    return null;
  }
}
