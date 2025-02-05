//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of gokarla;


class ShipmentApi {
  ShipmentApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Create New Shipment Event
  ///
  /// Create a new event for a shipment.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] slug (required):
  ///
  /// * [String] shipmentId (required):
  ///
  /// * [ShipmentAddEventRequestDTO] shipmentAddEventRequestDTO (required):
  Future<Response> v1ShipmentEventsCreateWithHttpInfo(String slug, String shipmentId, ShipmentAddEventRequestDTO shipmentAddEventRequestDTO,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/shops/{slug}/shipments/{shipment_id}/events'
      .replaceAll('{slug}', slug)
      .replaceAll('{shipment_id}', shipmentId);

    // ignore: prefer_final_locals
    Object? postBody = shipmentAddEventRequestDTO;

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

  /// Create New Shipment Event
  ///
  /// Create a new event for a shipment.
  ///
  /// Parameters:
  ///
  /// * [String] slug (required):
  ///
  /// * [String] shipmentId (required):
  ///
  /// * [ShipmentAddEventRequestDTO] shipmentAddEventRequestDTO (required):
  Future<Object?> v1ShipmentEventsCreate(String slug, String shipmentId, ShipmentAddEventRequestDTO shipmentAddEventRequestDTO,) async {
    final response = await v1ShipmentEventsCreateWithHttpInfo(slug, shipmentId, shipmentAddEventRequestDTO,);
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
