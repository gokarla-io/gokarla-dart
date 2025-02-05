//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of gokarla;


class OrganizationApi {
  OrganizationApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Search Org Members
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
  Future<Response> v1OrgMembersSearchWithHttpInfo(String slug, { int? page, int? perPage, String? emailId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/orgs/{slug}/members'
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

  /// Search Org Members
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
  Future<List<OrgMemberDTO>?> v1OrgMembersSearch(String slug, { int? page, int? perPage, String? emailId, }) async {
    final response = await v1OrgMembersSearchWithHttpInfo(slug,  page: page, perPage: perPage, emailId: emailId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<OrgMemberDTO>') as List)
        .cast<OrgMemberDTO>()
        .toList(growable: false);

    }
    return null;
  }
}
