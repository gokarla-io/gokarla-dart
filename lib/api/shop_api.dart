//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of gokarla;


class ShopApi {
  ShopApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Create Shop
  ///
  /// Create a shop if it does not exist.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [MerchantCreationDTO] merchantCreationDTO (required):
  Future<Response> v1ShopsCreateWithHttpInfo(MerchantCreationDTO merchantCreationDTO,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/shops';

    // ignore: prefer_final_locals
    Object? postBody = merchantCreationDTO;

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

  /// Create Shop
  ///
  /// Create a shop if it does not exist.
  ///
  /// Parameters:
  ///
  /// * [MerchantCreationDTO] merchantCreationDTO (required):
  Future<Object?> v1ShopsCreate(MerchantCreationDTO merchantCreationDTO,) async {
    final response = await v1ShopsCreateWithHttpInfo(merchantCreationDTO,);
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

  /// Delete Shop
  ///
  /// Delete a shop that already exists.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] slug (required):
  ///   The slug identifying the shop
  Future<Response> v1ShopsDeleteWithHttpInfo(String slug,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/shops/{slug}'
      .replaceAll('{slug}', slug);

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

  /// Delete Shop
  ///
  /// Delete a shop that already exists.
  ///
  /// Parameters:
  ///
  /// * [String] slug (required):
  ///   The slug identifying the shop
  Future<Object?> v1ShopsDelete(String slug,) async {
    final response = await v1ShopsDeleteWithHttpInfo(slug,);
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

  /// Get Shop Detail
  ///
  /// Get details about a specific shop.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] slug (required):
  ///   The slug identifying the shop
  Future<Response> v1ShopsGetWithHttpInfo(String slug,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/shops/{slug}'
      .replaceAll('{slug}', slug);

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

  /// Get Shop Detail
  ///
  /// Get details about a specific shop.
  ///
  /// Parameters:
  ///
  /// * [String] slug (required):
  ///   The slug identifying the shop
  Future<MerchantDetailDTO?> v1ShopsGet(String slug,) async {
    final response = await v1ShopsGetWithHttpInfo(slug,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MerchantDetailDTO',) as MerchantDetailDTO;
    
    }
    return null;
  }

  /// Upload Shop Image
  ///
  /// Upload an image for a shop.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] slug (required):
  ///   The slug identifying the shop
  ///
  /// * [ImageType] imageType (required):
  ///   The type of image to upload
  ///
  /// * [MultipartFile] image (required):
  ///   The logo image to upload
  Future<Response> v1ShopsImagesUploadWithHttpInfo(String slug, ImageType imageType, MultipartFile image,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/shops/{slug}/images/{image_type}'
      .replaceAll('{slug}', slug)
      .replaceAll('{image_type}', imageType.toString());

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

  /// Upload Shop Image
  ///
  /// Upload an image for a shop.
  ///
  /// Parameters:
  ///
  /// * [String] slug (required):
  ///   The slug identifying the shop
  ///
  /// * [ImageType] imageType (required):
  ///   The type of image to upload
  ///
  /// * [MultipartFile] image (required):
  ///   The logo image to upload
  Future<ImageResponseDTO?> v1ShopsImagesUpload(String slug, ImageType imageType, MultipartFile image,) async {
    final response = await v1ShopsImagesUploadWithHttpInfo(slug, imageType, image,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ImageResponseDTO',) as ImageResponseDTO;
    
    }
    return null;
  }

  /// Set Klaviyo Key
  ///
  /// Set a klaviyo api key for the shop.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] slug (required):
  ///   The slug identifying the shop
  ///
  /// * [APIKeyDTO] aPIKeyDTO (required):
  Future<Response> v1ShopsKeysKlaviyoSetWithHttpInfo(String slug, APIKeyDTO aPIKeyDTO,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/shops/{slug}/keys/klaviyo'
      .replaceAll('{slug}', slug);

    // ignore: prefer_final_locals
    Object? postBody = aPIKeyDTO;

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

  /// Set Klaviyo Key
  ///
  /// Set a klaviyo api key for the shop.
  ///
  /// Parameters:
  ///
  /// * [String] slug (required):
  ///   The slug identifying the shop
  ///
  /// * [APIKeyDTO] aPIKeyDTO (required):
  Future<Object?> v1ShopsKeysKlaviyoSet(String slug, APIKeyDTO aPIKeyDTO,) async {
    final response = await v1ShopsKeysKlaviyoSetWithHttpInfo(slug, aPIKeyDTO,);
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

  /// Set Shopify Access Token
  ///
  /// Set a shopify access token for the shop.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] slug (required):
  ///   The slug identifying the shop
  ///
  /// * [APIKeyDTO] aPIKeyDTO (required):
  Future<Response> v1ShopsKeysShopifySetWithHttpInfo(String slug, APIKeyDTO aPIKeyDTO,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/shops/{slug}/keys/shopify'
      .replaceAll('{slug}', slug);

    // ignore: prefer_final_locals
    Object? postBody = aPIKeyDTO;

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

  /// Set Shopify Access Token
  ///
  /// Set a shopify access token for the shop.
  ///
  /// Parameters:
  ///
  /// * [String] slug (required):
  ///   The slug identifying the shop
  ///
  /// * [APIKeyDTO] aPIKeyDTO (required):
  Future<Object?> v1ShopsKeysShopifySet(String slug, APIKeyDTO aPIKeyDTO,) async {
    final response = await v1ShopsKeysShopifySetWithHttpInfo(slug, aPIKeyDTO,);
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

  /// Set Shopware Api Credentials
  ///
  /// Set shopware api credentials for the shop.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] slug (required):
  ///   The slug identifying the shop
  ///
  /// * [ClientIDAndSecretDTO] clientIDAndSecretDTO (required):
  Future<Response> v1ShopsKeysShopwareSetWithHttpInfo(String slug, ClientIDAndSecretDTO clientIDAndSecretDTO,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/shops/{slug}/keys/shopware'
      .replaceAll('{slug}', slug);

    // ignore: prefer_final_locals
    Object? postBody = clientIDAndSecretDTO;

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

  /// Set Shopware Api Credentials
  ///
  /// Set shopware api credentials for the shop.
  ///
  /// Parameters:
  ///
  /// * [String] slug (required):
  ///   The slug identifying the shop
  ///
  /// * [ClientIDAndSecretDTO] clientIDAndSecretDTO (required):
  Future<Object?> v1ShopsKeysShopwareSet(String slug, ClientIDAndSecretDTO clientIDAndSecretDTO,) async {
    final response = await v1ShopsKeysShopwareSetWithHttpInfo(slug, clientIDAndSecretDTO,);
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

  /// Search Shops
  ///
  /// Search shops based on some values to filter.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] page:
  ///
  /// * [int] perPage:
  ///
  /// * [String] uuid:
  ///
  /// * [String] name:
  ///
  /// * [String] slug:
  ///
  /// * [ShopProvider] shopProvider:
  ///
  /// * [LanguageEnum] language:
  ///
  /// * [String] organization:
  Future<Response> v1ShopsSearchWithHttpInfo({ int? page, int? perPage, String? uuid, String? name, String? slug, ShopProvider? shopProvider, LanguageEnum? language, String? organization, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/shops';

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
    if (slug != null) {
      queryParams.addAll(_queryParams('', 'slug', slug));
    }
    if (shopProvider != null) {
      queryParams.addAll(_queryParams('', 'shop_provider', shopProvider));
    }
    if (language != null) {
      queryParams.addAll(_queryParams('', 'language', language));
    }
    if (organization != null) {
      queryParams.addAll(_queryParams('', 'organization', organization));
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

  /// Search Shops
  ///
  /// Search shops based on some values to filter.
  ///
  /// Parameters:
  ///
  /// * [int] page:
  ///
  /// * [int] perPage:
  ///
  /// * [String] uuid:
  ///
  /// * [String] name:
  ///
  /// * [String] slug:
  ///
  /// * [ShopProvider] shopProvider:
  ///
  /// * [LanguageEnum] language:
  ///
  /// * [String] organization:
  Future<List<MerchantDetailDTO>?> v1ShopsSearch({ int? page, int? perPage, String? uuid, String? name, String? slug, ShopProvider? shopProvider, LanguageEnum? language, String? organization, }) async {
    final response = await v1ShopsSearchWithHttpInfo( page: page, perPage: perPage, uuid: uuid, name: name, slug: slug, shopProvider: shopProvider, language: language, organization: organization, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<MerchantDetailDTO>') as List)
        .cast<MerchantDetailDTO>()
        .toList(growable: false);

    }
    return null;
  }

  /// Update Shop
  ///
  /// Update a shop partially or completely.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] slug (required):
  ///   The slug identifying the shop
  ///
  /// * [MerchantUpdateDTO] merchantUpdateDTO (required):
  Future<Response> v1ShopsUpdateWithHttpInfo(String slug, MerchantUpdateDTO merchantUpdateDTO,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/shops/{slug}'
      .replaceAll('{slug}', slug);

    // ignore: prefer_final_locals
    Object? postBody = merchantUpdateDTO;

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

  /// Update Shop
  ///
  /// Update a shop partially or completely.
  ///
  /// Parameters:
  ///
  /// * [String] slug (required):
  ///   The slug identifying the shop
  ///
  /// * [MerchantUpdateDTO] merchantUpdateDTO (required):
  Future<Object?> v1ShopsUpdate(String slug, MerchantUpdateDTO merchantUpdateDTO,) async {
    final response = await v1ShopsUpdateWithHttpInfo(slug, merchantUpdateDTO,);
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
