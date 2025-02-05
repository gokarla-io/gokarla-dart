//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of gokarla;


class AnnouncementApi {
  AnnouncementApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Create Announcement
  ///
  /// Create an announcement if it does not exist.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] slug (required):
  ///   The slug identifying the shop
  ///
  /// * [AnnouncementCreationDTO] announcementCreationDTO (required):
  Future<Response> v1AnnouncementsCreateWithHttpInfo(String slug, AnnouncementCreationDTO announcementCreationDTO,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/shops/{slug}/announcements'
      .replaceAll('{slug}', slug);

    // ignore: prefer_final_locals
    Object? postBody = announcementCreationDTO;

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

  /// Create Announcement
  ///
  /// Create an announcement if it does not exist.
  ///
  /// Parameters:
  ///
  /// * [String] slug (required):
  ///   The slug identifying the shop
  ///
  /// * [AnnouncementCreationDTO] announcementCreationDTO (required):
  Future<Object?> v1AnnouncementsCreate(String slug, AnnouncementCreationDTO announcementCreationDTO,) async {
    final response = await v1AnnouncementsCreateWithHttpInfo(slug, announcementCreationDTO,);
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

  /// Delete Announcement
  ///
  /// Delete an announcement that already exists.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] slug (required):
  ///   The slug identifying the shop
  ///
  /// * [String] uuid (required):
  ///   The announcement's unique identifier
  Future<Response> v1AnnouncementsDeleteWithHttpInfo(String slug, String uuid,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/shops/{slug}/announcements/{uuid}'
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

  /// Delete Announcement
  ///
  /// Delete an announcement that already exists.
  ///
  /// Parameters:
  ///
  /// * [String] slug (required):
  ///   The slug identifying the shop
  ///
  /// * [String] uuid (required):
  ///   The announcement's unique identifier
  Future<Object?> v1AnnouncementsDelete(String slug, String uuid,) async {
    final response = await v1AnnouncementsDeleteWithHttpInfo(slug, uuid,);
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

  /// Search Announcements
  ///
  /// Search all announcements or based on some values to filter.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] slug (required):
  ///   The slug identifying the shop
  ///
  /// * [String] uuid (required):
  ///
  /// * [String] text (required):
  ///
  /// * [int] page:
  ///
  /// * [int] perPage:
  ///
  /// * [LanguageEnum] language:
  Future<Response> v1AnnouncementsSearchWithHttpInfo(String slug, String uuid, String text, { int? page, int? perPage, LanguageEnum? language, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/shops/{slug}/announcements'
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
      queryParams.addAll(_queryParams('', 'uuid', uuid));
      queryParams.addAll(_queryParams('', 'text', text));
    if (language != null) {
      queryParams.addAll(_queryParams('', 'language', language));
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

  /// Search Announcements
  ///
  /// Search all announcements or based on some values to filter.
  ///
  /// Parameters:
  ///
  /// * [String] slug (required):
  ///   The slug identifying the shop
  ///
  /// * [String] uuid (required):
  ///
  /// * [String] text (required):
  ///
  /// * [int] page:
  ///
  /// * [int] perPage:
  ///
  /// * [LanguageEnum] language:
  Future<List<AnnouncementDetailDTO>?> v1AnnouncementsSearch(String slug, String uuid, String text, { int? page, int? perPage, LanguageEnum? language, }) async {
    final response = await v1AnnouncementsSearchWithHttpInfo(slug, uuid, text,  page: page, perPage: perPage, language: language, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<AnnouncementDetailDTO>') as List)
        .cast<AnnouncementDetailDTO>()
        .toList(growable: false);

    }
    return null;
  }

  /// Update Announcement
  ///
  /// Update an announcement partially or completely.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] slug (required):
  ///   The slug identifying the shop
  ///
  /// * [String] uuid (required):
  ///   The announcement's unique identifier
  ///
  /// * [AnnouncementUpdateDTO] announcementUpdateDTO (required):
  Future<Response> v1AnnouncementsUpdateWithHttpInfo(String slug, String uuid, AnnouncementUpdateDTO announcementUpdateDTO,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/shops/{slug}/announcements/{uuid}'
      .replaceAll('{slug}', slug)
      .replaceAll('{uuid}', uuid);

    // ignore: prefer_final_locals
    Object? postBody = announcementUpdateDTO;

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

  /// Update Announcement
  ///
  /// Update an announcement partially or completely.
  ///
  /// Parameters:
  ///
  /// * [String] slug (required):
  ///   The slug identifying the shop
  ///
  /// * [String] uuid (required):
  ///   The announcement's unique identifier
  ///
  /// * [AnnouncementUpdateDTO] announcementUpdateDTO (required):
  Future<Object?> v1AnnouncementsUpdate(String slug, String uuid, AnnouncementUpdateDTO announcementUpdateDTO,) async {
    final response = await v1AnnouncementsUpdateWithHttpInfo(slug, uuid, announcementUpdateDTO,);
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
