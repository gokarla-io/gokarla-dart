//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of gokarla;


class WebhookApi {
  WebhookApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Create Webhook
  ///
  /// Create a webhook if it does not exist.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] slug (required):
  ///   The slug identifying the shop
  ///
  /// * [WebhookCreationDTO] webhookCreationDTO (required):
  Future<Response> v1WebhooksCreateWithHttpInfo(String slug, WebhookCreationDTO webhookCreationDTO,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/shops/{slug}/webhooks'
      .replaceAll('{slug}', slug);

    // ignore: prefer_final_locals
    Object? postBody = webhookCreationDTO;

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

  /// Create Webhook
  ///
  /// Create a webhook if it does not exist.
  ///
  /// Parameters:
  ///
  /// * [String] slug (required):
  ///   The slug identifying the shop
  ///
  /// * [WebhookCreationDTO] webhookCreationDTO (required):
  Future<Object?> v1WebhooksCreate(String slug, WebhookCreationDTO webhookCreationDTO,) async {
    final response = await v1WebhooksCreateWithHttpInfo(slug, webhookCreationDTO,);
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

  /// Delete Webhook
  ///
  /// Delete a webhook that already exists.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] slug (required):
  ///   The slug identifying the shop
  ///
  /// * [String] uuid (required):
  ///   The webhook's unique identifier
  Future<Response> v1WebhooksDeleteWithHttpInfo(String slug, String uuid,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/shops/{slug}/webhooks/{uuid}'
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

  /// Delete Webhook
  ///
  /// Delete a webhook that already exists.
  ///
  /// Parameters:
  ///
  /// * [String] slug (required):
  ///   The slug identifying the shop
  ///
  /// * [String] uuid (required):
  ///   The webhook's unique identifier
  Future<Object?> v1WebhooksDelete(String slug, String uuid,) async {
    final response = await v1WebhooksDeleteWithHttpInfo(slug, uuid,);
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

  /// Search Webhooks
  ///
  /// Search all webhooks or based on some values to filter.
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
  /// * [WebhookStatus] status:
  ///
  /// * [String] url:
  Future<Response> v1WebhooksSearchWithHttpInfo(String slug, { int? page, int? perPage, String? uuid, WebhookStatus? status, String? url, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/shops/{slug}/webhooks'
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
    if (status != null) {
      queryParams.addAll(_queryParams('', 'status', status));
    }
    if (url != null) {
      queryParams.addAll(_queryParams('', 'url', url));
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

  /// Search Webhooks
  ///
  /// Search all webhooks or based on some values to filter.
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
  /// * [WebhookStatus] status:
  ///
  /// * [String] url:
  Future<List<WebhookDTO>?> v1WebhooksSearch(String slug, { int? page, int? perPage, String? uuid, WebhookStatus? status, String? url, }) async {
    final response = await v1WebhooksSearchWithHttpInfo(slug,  page: page, perPage: perPage, uuid: uuid, status: status, url: url, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<WebhookDTO>') as List)
        .cast<WebhookDTO>()
        .toList(growable: false);

    }
    return null;
  }

  /// Update Webhook
  ///
  /// Update a webhook partially or completely.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] slug (required):
  ///   The slug identifying the shop
  ///
  /// * [String] uuid (required):
  ///   The webhook's unique identifier
  ///
  /// * [WebhookUpdateDTO] webhookUpdateDTO (required):
  Future<Response> v1WebhooksUpdateWithHttpInfo(String slug, String uuid, WebhookUpdateDTO webhookUpdateDTO,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/shops/{slug}/webhooks/{uuid}'
      .replaceAll('{slug}', slug)
      .replaceAll('{uuid}', uuid);

    // ignore: prefer_final_locals
    Object? postBody = webhookUpdateDTO;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'PATCH',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Update Webhook
  ///
  /// Update a webhook partially or completely.
  ///
  /// Parameters:
  ///
  /// * [String] slug (required):
  ///   The slug identifying the shop
  ///
  /// * [String] uuid (required):
  ///   The webhook's unique identifier
  ///
  /// * [WebhookUpdateDTO] webhookUpdateDTO (required):
  Future<Object?> v1WebhooksUpdate(String slug, String uuid, WebhookUpdateDTO webhookUpdateDTO,) async {
    final response = await v1WebhooksUpdateWithHttpInfo(slug, uuid, webhookUpdateDTO,);
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
}
