//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of gokarla;


class OrderApi {
  OrderApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Fulfill Orders
  ///
  /// Process a shop order fulfillment in bulk (via shop slug).
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] slug (required):
  ///   The slug identifying the shop
  ///
  /// * [List<OrderFulfillmentDTO>] orderFulfillmentDTO (required):
  Future<Response> v1OrdersFulfillmentBulkWithHttpInfo(String slug, List<OrderFulfillmentDTO> orderFulfillmentDTO,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/shops/{slug}/orders/bulk'
      .replaceAll('{slug}', slug);

    // ignore: prefer_final_locals
    Object? postBody = orderFulfillmentDTO;

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

  /// Fulfill Orders
  ///
  /// Process a shop order fulfillment in bulk (via shop slug).
  ///
  /// Parameters:
  ///
  /// * [String] slug (required):
  ///   The slug identifying the shop
  ///
  /// * [List<OrderFulfillmentDTO>] orderFulfillmentDTO (required):
  Future<Object?> v1OrdersFulfillmentBulk(String slug, List<OrderFulfillmentDTO> orderFulfillmentDTO,) async {
    final response = await v1OrdersFulfillmentBulkWithHttpInfo(slug, orderFulfillmentDTO,);
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

  /// Place Order
  ///
  /// Process a shop order placement.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] slug (required):
  ///   The slug identifying the shop
  ///
  /// * [OrderPlacementDTO] orderPlacementDTO (required):
  Future<Response> v1OrdersPlacementWithHttpInfo(String slug, OrderPlacementDTO orderPlacementDTO,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/shops/{slug}/orders'
      .replaceAll('{slug}', slug);

    // ignore: prefer_final_locals
    Object? postBody = orderPlacementDTO;

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

  /// Place Order
  ///
  /// Process a shop order placement.
  ///
  /// Parameters:
  ///
  /// * [String] slug (required):
  ///   The slug identifying the shop
  ///
  /// * [OrderPlacementDTO] orderPlacementDTO (required):
  Future<Object?> v1OrdersPlacement(String slug, OrderPlacementDTO orderPlacementDTO,) async {
    final response = await v1OrdersPlacementWithHttpInfo(slug, orderPlacementDTO,);
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

  /// Search Orders
  ///
  /// Search for shop orders (and its trackings if any) based on filters.
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
  /// * [String] emailId:
  ///
  /// * [String] externalId:
  ///
  /// * [String] orderName:
  ///
  /// * [String] orderNumber:
  ///
  /// * [String] uuid:
  ///
  /// * [String] zipCode:
  Future<Response> v1OrdersSearchWithHttpInfo(String slug, { int? page, int? perPage, String? emailId, String? externalId, String? orderName, String? orderNumber, String? uuid, String? zipCode, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/shops/{slug}/orders'
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
    if (emailId != null) {
      queryParams.addAll(_queryParams('', 'email_id', emailId));
    }
    if (externalId != null) {
      queryParams.addAll(_queryParams('', 'external_id', externalId));
    }
    if (orderName != null) {
      queryParams.addAll(_queryParams('', 'order_name', orderName));
    }
    if (orderNumber != null) {
      queryParams.addAll(_queryParams('', 'order_number', orderNumber));
    }
    if (uuid != null) {
      queryParams.addAll(_queryParams('', 'uuid', uuid));
    }
    if (zipCode != null) {
      queryParams.addAll(_queryParams('', 'zip_code', zipCode));
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

  /// Search Orders
  ///
  /// Search for shop orders (and its trackings if any) based on filters.
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
  /// * [String] emailId:
  ///
  /// * [String] externalId:
  ///
  /// * [String] orderName:
  ///
  /// * [String] orderNumber:
  ///
  /// * [String] uuid:
  ///
  /// * [String] zipCode:
  Future<List<OrderDetailDTO>?> v1OrdersSearch(String slug, { int? page, int? perPage, String? emailId, String? externalId, String? orderName, String? orderNumber, String? uuid, String? zipCode, }) async {
    final response = await v1OrdersSearchWithHttpInfo(slug,  page: page, perPage: perPage, emailId: emailId, externalId: externalId, orderName: orderName, orderNumber: orderNumber, uuid: uuid, zipCode: zipCode, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<OrderDetailDTO>') as List)
        .cast<OrderDetailDTO>()
        .toList(growable: false);

    }
    return null;
  }

  /// Update Order Shipment
  ///
  /// Process a shop order shipment update.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] slug (required):
  ///   The slug identifying the shop
  ///
  /// * [String] orderId (required):
  ///   The id given by Karla identifying the order
  ///
  /// * [String] shipmentId (required):
  ///   The id given by Karla identifying the tracking from the order
  ///
  /// * [OrderTrackingUpdateDTO] orderTrackingUpdateDTO (required):
  Future<Response> v1OrdersShipmentsUpdateWithHttpInfo(String slug, String orderId, String shipmentId, OrderTrackingUpdateDTO orderTrackingUpdateDTO,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/shops/{slug}/orders/{order_id}/shipments/{shipment_id}'
      .replaceAll('{slug}', slug)
      .replaceAll('{order_id}', orderId)
      .replaceAll('{shipment_id}', shipmentId);

    // ignore: prefer_final_locals
    Object? postBody = orderTrackingUpdateDTO;

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

  /// Update Order Shipment
  ///
  /// Process a shop order shipment update.
  ///
  /// Parameters:
  ///
  /// * [String] slug (required):
  ///   The slug identifying the shop
  ///
  /// * [String] orderId (required):
  ///   The id given by Karla identifying the order
  ///
  /// * [String] shipmentId (required):
  ///   The id given by Karla identifying the tracking from the order
  ///
  /// * [OrderTrackingUpdateDTO] orderTrackingUpdateDTO (required):
  Future<TrackingDTO?> v1OrdersShipmentsUpdate(String slug, String orderId, String shipmentId, OrderTrackingUpdateDTO orderTrackingUpdateDTO,) async {
    final response = await v1OrdersShipmentsUpdateWithHttpInfo(slug, orderId, shipmentId, orderTrackingUpdateDTO,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'TrackingDTO',) as TrackingDTO;
    
    }
    return null;
  }

  /// Update Order
  ///
  /// Process a shop order update.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] slug (required):
  ///   The slug identifying the shop
  ///
  /// * [String] orderId (required):
  ///   The id given by Karla identifying the order
  ///
  /// * [OrderUpdateDTO] orderUpdateDTO (required):
  Future<Response> v1OrdersUpdateWithHttpInfo(String slug, String orderId, OrderUpdateDTO orderUpdateDTO,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/shops/{slug}/orders/{order_id}'
      .replaceAll('{slug}', slug)
      .replaceAll('{order_id}', orderId);

    // ignore: prefer_final_locals
    Object? postBody = orderUpdateDTO;

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

  /// Update Order
  ///
  /// Process a shop order update.
  ///
  /// Parameters:
  ///
  /// * [String] slug (required):
  ///   The slug identifying the shop
  ///
  /// * [String] orderId (required):
  ///   The id given by Karla identifying the order
  ///
  /// * [OrderUpdateDTO] orderUpdateDTO (required):
  Future<OrderDetailDTO?> v1OrdersUpdate(String slug, String orderId, OrderUpdateDTO orderUpdateDTO,) async {
    final response = await v1OrdersUpdateWithHttpInfo(slug, orderId, orderUpdateDTO,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'OrderDetailDTO',) as OrderDetailDTO;
    
    }
    return null;
  }

  /// Upsert Order
  ///
  /// Process a shop order upsert.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] slug (required):
  ///   The slug identifying the shop
  ///
  /// * [OrderFulfillmentDTO] orderFulfillmentDTO (required):
  Future<Response> v1OrdersUpsertWithHttpInfo(String slug, OrderFulfillmentDTO orderFulfillmentDTO,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/shops/{slug}/orders'
      .replaceAll('{slug}', slug);

    // ignore: prefer_final_locals
    Object? postBody = orderFulfillmentDTO;

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

  /// Upsert Order
  ///
  /// Process a shop order upsert.
  ///
  /// Parameters:
  ///
  /// * [String] slug (required):
  ///   The slug identifying the shop
  ///
  /// * [OrderFulfillmentDTO] orderFulfillmentDTO (required):
  Future<Object?> v1OrdersUpsert(String slug, OrderFulfillmentDTO orderFulfillmentDTO,) async {
    final response = await v1OrdersUpsertWithHttpInfo(slug, orderFulfillmentDTO,);
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
