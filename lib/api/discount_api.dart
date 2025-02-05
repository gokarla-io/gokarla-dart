//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of gokarla;


class DiscountApi {
  DiscountApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Create Discount
  ///
  /// Create a discount if it does not exist.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] slug (required):
  ///   The slug identifying the shop
  ///
  /// * [DiscountCreationDTO] discountCreationDTO (required):
  Future<Response> v1DiscountsCreateWithHttpInfo(String slug, DiscountCreationDTO discountCreationDTO,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/shops/{slug}/discounts'
      .replaceAll('{slug}', slug);

    // ignore: prefer_final_locals
    Object? postBody = discountCreationDTO;

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

  /// Create Discount
  ///
  /// Create a discount if it does not exist.
  ///
  /// Parameters:
  ///
  /// * [String] slug (required):
  ///   The slug identifying the shop
  ///
  /// * [DiscountCreationDTO] discountCreationDTO (required):
  Future<Object?> v1DiscountsCreate(String slug, DiscountCreationDTO discountCreationDTO,) async {
    final response = await v1DiscountsCreateWithHttpInfo(slug, discountCreationDTO,);
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

  /// Delete Discount
  ///
  /// Delete a discount that already exists.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] slug (required):
  ///   The slug identifying the shop
  ///
  /// * [String] uuid (required):
  ///   The discount's unique identifier
  Future<Response> v1DiscountsDeleteWithHttpInfo(String slug, String uuid,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/shops/{slug}/discounts/{uuid}'
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

  /// Delete Discount
  ///
  /// Delete a discount that already exists.
  ///
  /// Parameters:
  ///
  /// * [String] slug (required):
  ///   The slug identifying the shop
  ///
  /// * [String] uuid (required):
  ///   The discount's unique identifier
  Future<Object?> v1DiscountsDelete(String slug, String uuid,) async {
    final response = await v1DiscountsDeleteWithHttpInfo(slug, uuid,);
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

  /// Search Discounts
  ///
  /// Search all discounts or based on some values to filter.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] slug (required):
  ///   The slug identifying the shop
  ///
  /// * [String] code:
  ///
  /// * [DiscountTargetSelectionEnum] targetSelection:
  ///
  /// * [DiscountTargetTypeEnum] targetType:
  ///
  /// * [String] title:
  ///
  /// * [DiscountValueTypeEnum] valueType:
  ///
  /// * [num] value:
  ///
  /// * [int] page:
  ///
  /// * [int] perPage:
  ///
  /// * [String] uuid:
  ///
  /// * [DiscountTypeEnum] type:
  Future<Response> v1DiscountsSearchWithHttpInfo(String slug, { String? code, DiscountTargetSelectionEnum? targetSelection, DiscountTargetTypeEnum? targetType, String? title, DiscountValueTypeEnum? valueType, num? value, int? page, int? perPage, String? uuid, DiscountTypeEnum? type, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/shops/{slug}/discounts'
      .replaceAll('{slug}', slug);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (code != null) {
      queryParams.addAll(_queryParams('', 'code', code));
    }
    if (targetSelection != null) {
      queryParams.addAll(_queryParams('', 'target_selection', targetSelection));
    }
    if (targetType != null) {
      queryParams.addAll(_queryParams('', 'target_type', targetType));
    }
    if (title != null) {
      queryParams.addAll(_queryParams('', 'title', title));
    }
    if (valueType != null) {
      queryParams.addAll(_queryParams('', 'value_type', valueType));
    }
    if (value != null) {
      queryParams.addAll(_queryParams('', 'value', value));
    }
    if (page != null) {
      queryParams.addAll(_queryParams('', 'page', page));
    }
    if (perPage != null) {
      queryParams.addAll(_queryParams('', 'per_page', perPage));
    }
    if (uuid != null) {
      queryParams.addAll(_queryParams('', 'uuid', uuid));
    }
    if (type != null) {
      queryParams.addAll(_queryParams('', 'type', type));
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

  /// Search Discounts
  ///
  /// Search all discounts or based on some values to filter.
  ///
  /// Parameters:
  ///
  /// * [String] slug (required):
  ///   The slug identifying the shop
  ///
  /// * [String] code:
  ///
  /// * [DiscountTargetSelectionEnum] targetSelection:
  ///
  /// * [DiscountTargetTypeEnum] targetType:
  ///
  /// * [String] title:
  ///
  /// * [DiscountValueTypeEnum] valueType:
  ///
  /// * [num] value:
  ///
  /// * [int] page:
  ///
  /// * [int] perPage:
  ///
  /// * [String] uuid:
  ///
  /// * [DiscountTypeEnum] type:
  Future<List<DiscountResponseDTO>?> v1DiscountsSearch(String slug, { String? code, DiscountTargetSelectionEnum? targetSelection, DiscountTargetTypeEnum? targetType, String? title, DiscountValueTypeEnum? valueType, num? value, int? page, int? perPage, String? uuid, DiscountTypeEnum? type, }) async {
    final response = await v1DiscountsSearchWithHttpInfo(slug,  code: code, targetSelection: targetSelection, targetType: targetType, title: title, valueType: valueType, value: value, page: page, perPage: perPage, uuid: uuid, type: type, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<DiscountResponseDTO>') as List)
        .cast<DiscountResponseDTO>()
        .toList(growable: false);

    }
    return null;
  }

  /// Update Discount
  ///
  /// Update a discount partially or completely.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] slug (required):
  ///   The slug identifying the shop
  ///
  /// * [String] uuid (required):
  ///   The discount's unique identifier
  ///
  /// * [DiscountUpdateDTO] discountUpdateDTO (required):
  Future<Response> v1DiscountsUpdateWithHttpInfo(String slug, String uuid, DiscountUpdateDTO discountUpdateDTO,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/shops/{slug}/discounts/{uuid}'
      .replaceAll('{slug}', slug)
      .replaceAll('{uuid}', uuid);

    // ignore: prefer_final_locals
    Object? postBody = discountUpdateDTO;

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

  /// Update Discount
  ///
  /// Update a discount partially or completely.
  ///
  /// Parameters:
  ///
  /// * [String] slug (required):
  ///   The slug identifying the shop
  ///
  /// * [String] uuid (required):
  ///   The discount's unique identifier
  ///
  /// * [DiscountUpdateDTO] discountUpdateDTO (required):
  Future<Object?> v1DiscountsUpdate(String slug, String uuid, DiscountUpdateDTO discountUpdateDTO,) async {
    final response = await v1DiscountsUpdateWithHttpInfo(slug, uuid, discountUpdateDTO,);
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
