//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of gokarla;


class ShopShopifyApi {
  ShopShopifyApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Create Shopify Webhook
  ///
  /// Create a webhook if it does not exist.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] slug (required):
  ///   The slug identifying the merchant
  ///
  /// * [ShopifyWebhookCreationDTO] shopifyWebhookCreationDTO (required):
  Future<Response> v1ShopifyWebhooksCreateWithHttpInfo(String slug, ShopifyWebhookCreationDTO shopifyWebhookCreationDTO,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/shops/{slug}/shopify/webhooks'
      .replaceAll('{slug}', slug);

    // ignore: prefer_final_locals
    Object? postBody = shopifyWebhookCreationDTO;

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

  /// Create Shopify Webhook
  ///
  /// Create a webhook if it does not exist.
  ///
  /// Parameters:
  ///
  /// * [String] slug (required):
  ///   The slug identifying the merchant
  ///
  /// * [ShopifyWebhookCreationDTO] shopifyWebhookCreationDTO (required):
  Future<ShopifyWebhookDTO?> v1ShopifyWebhooksCreate(String slug, ShopifyWebhookCreationDTO shopifyWebhookCreationDTO,) async {
    final response = await v1ShopifyWebhooksCreateWithHttpInfo(slug, shopifyWebhookCreationDTO,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ShopifyWebhookDTO',) as ShopifyWebhookDTO;
    
    }
    return null;
  }

  /// Delete Shopify Webhook
  ///
  /// Delete a webhook that already exists.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] slug (required):
  ///   The slug identifying the merchant
  ///
  /// * [String] uuid (required):
  ///   The webhook's unique identifier
  Future<Response> v1ShopifyWebhooksDeleteWithHttpInfo(String slug, String uuid,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/shops/{slug}/shopify/webhooks/{uuid}'
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

  /// Delete Shopify Webhook
  ///
  /// Delete a webhook that already exists.
  ///
  /// Parameters:
  ///
  /// * [String] slug (required):
  ///   The slug identifying the merchant
  ///
  /// * [String] uuid (required):
  ///   The webhook's unique identifier
  Future<Object?> v1ShopifyWebhooksDelete(String slug, String uuid,) async {
    final response = await v1ShopifyWebhooksDeleteWithHttpInfo(slug, uuid,);
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

  /// Get Shopify Webhook
  ///
  /// Get a shopify webhooks based on its uuid.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] slug (required):
  ///   The slug identifying the merchant
  ///
  /// * [String] uuid (required):
  ///   The Webhook's UUID
  Future<Response> v1ShopifyWebhooksGetWithHttpInfo(String slug, String uuid,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/shops/{slug}/shopify/webhooks/{uuid}'
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
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get Shopify Webhook
  ///
  /// Get a shopify webhooks based on its uuid.
  ///
  /// Parameters:
  ///
  /// * [String] slug (required):
  ///   The slug identifying the merchant
  ///
  /// * [String] uuid (required):
  ///   The Webhook's UUID
  Future<ShopifyWebhookDTO?> v1ShopifyWebhooksGet(String slug, String uuid,) async {
    final response = await v1ShopifyWebhooksGetWithHttpInfo(slug, uuid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ShopifyWebhookDTO',) as ShopifyWebhookDTO;
    
    }
    return null;
  }

  /// Search Shopify Webhooks
  ///
  /// Get a shopify webhooks based on its uuid.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] slug (required):
  ///   The slug identifying the merchant
  ///
  /// * [int] page:
  ///
  /// * [int] perPage:
  Future<Response> v1ShopifyWebhooksListWithHttpInfo(String slug, { int? page, int? perPage, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/shops/{slug}/shopify/webhooks'
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

  /// Search Shopify Webhooks
  ///
  /// Get a shopify webhooks based on its uuid.
  ///
  /// Parameters:
  ///
  /// * [String] slug (required):
  ///   The slug identifying the merchant
  ///
  /// * [int] page:
  ///
  /// * [int] perPage:
  Future<List<WebhookDTO>?> v1ShopifyWebhooksList(String slug, { int? page, int? perPage, }) async {
    final response = await v1ShopifyWebhooksListWithHttpInfo(slug,  page: page, perPage: perPage, );
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
}
