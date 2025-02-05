//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of gokarla;


class ShopSettingApi {
  ShopSettingApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Get Shop Configuration
  ///
  /// Get settings for a specific shop.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] slug (required):
  ///   The slug identifying the shop
  Future<Response> v1ShopsSettingsGetWithHttpInfo(String slug,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/shops/{slug}/settings'
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

  /// Get Shop Configuration
  ///
  /// Get settings for a specific shop.
  ///
  /// Parameters:
  ///
  /// * [String] slug (required):
  ///   The slug identifying the shop
  Future<ShopSettingsDTO?> v1ShopsSettingsGet(String slug,) async {
    final response = await v1ShopsSettingsGetWithHttpInfo(slug,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ShopSettingsDTO',) as ShopSettingsDTO;
    
    }
    return null;
  }

  /// Set Shop Settings
  ///
  /// Set settings for a specific shop (creating them if they do not exist).
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] slug (required):
  ///   The slug identifying the shop
  ///
  /// * [ShopSettingsDTO] shopSettingsDTO (required):
  Future<Response> v1ShopsSettingsSetWithHttpInfo(String slug, ShopSettingsDTO shopSettingsDTO,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/shops/{slug}/settings'
      .replaceAll('{slug}', slug);

    // ignore: prefer_final_locals
    Object? postBody = shopSettingsDTO;

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

  /// Set Shop Settings
  ///
  /// Set settings for a specific shop (creating them if they do not exist).
  ///
  /// Parameters:
  ///
  /// * [String] slug (required):
  ///   The slug identifying the shop
  ///
  /// * [ShopSettingsDTO] shopSettingsDTO (required):
  Future<ShopSettingsDTO?> v1ShopsSettingsSet(String slug, ShopSettingsDTO shopSettingsDTO,) async {
    final response = await v1ShopsSettingsSetWithHttpInfo(slug, shopSettingsDTO,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ShopSettingsDTO',) as ShopSettingsDTO;
    
    }
    return null;
  }

  /// Update Shop Trackpages Settings
  ///
  /// Update trackpages settings for a specific shop.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] slug (required):
  ///   The slug identifying the shop
  ///
  /// * [BaseTrackpagesSettings] baseTrackpagesSettings (required):
  Future<Response> v1ShopsSettingsUpdateTrackpagesWithHttpInfo(String slug, BaseTrackpagesSettings baseTrackpagesSettings,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/shops/{slug}/settings/trackpages'
      .replaceAll('{slug}', slug);

    // ignore: prefer_final_locals
    Object? postBody = baseTrackpagesSettings;

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

  /// Update Shop Trackpages Settings
  ///
  /// Update trackpages settings for a specific shop.
  ///
  /// Parameters:
  ///
  /// * [String] slug (required):
  ///   The slug identifying the shop
  ///
  /// * [BaseTrackpagesSettings] baseTrackpagesSettings (required):
  Future<ShopSettingsDTO?> v1ShopsSettingsUpdateTrackpages(String slug, BaseTrackpagesSettings baseTrackpagesSettings,) async {
    final response = await v1ShopsSettingsUpdateTrackpagesWithHttpInfo(slug, baseTrackpagesSettings,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ShopSettingsDTO',) as ShopSettingsDTO;
    
    }
    return null;
  }
}
