//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

library gokarla;

import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:collection/collection.dart';
import 'package:http/http.dart';
import 'package:intl/intl.dart';
import 'package:meta/meta.dart';

part 'api_client.dart';
part 'api_helper.dart';
part 'api_exception.dart';
part 'auth/authentication.dart';
part 'auth/api_key_auth.dart';
part 'auth/oauth.dart';
part 'auth/http_basic_auth.dart';
part 'auth/http_bearer_auth.dart';

part 'api/announcement_api.dart';
part 'api/campaign_api.dart';
part 'api/claim_api.dart';
part 'api/discount_api.dart';
part 'api/order_api.dart';
part 'api/organization_api.dart';
part 'api/shipment_api.dart';
part 'api/shop_api.dart';
part 'api/shop_setting_api.dart';
part 'api/shop_shopify_api.dart';
part 'api/webhook_api.dart';

part 'model/api_key_dto.dart';
part 'model/address.dart';
part 'model/address_dto.dart';
part 'model/address_schema.dart';
part 'model/address_with_zip_code_dto.dart';
part 'model/all_event.dart';
part 'model/announcement_creation_dto.dart';
part 'model/announcement_detail_dto.dart';
part 'model/announcement_update_dto.dart';
part 'model/base_carrier_settings.dart';
part 'model/base_product_schema.dart';
part 'model/base_trackpages_settings.dart';
part 'model/base_trigger_settings.dart';
part 'model/basic_promotion_properties_dto.dart';
part 'model/basic_promotion_properties_i18n.dart';
part 'model/basic_promotion_properties_text.dart';
part 'model/campaign_request_dto.dart';
part 'model/campaign_response_dto.dart';
part 'model/campaign_status.dart';
part 'model/carrier_dto.dart';
part 'model/carrier_enum.dart';
part 'model/carrier_health_update_webhook_payload.dart';
part 'model/carrier_settings_v1.dart';
part 'model/claim_creation_dto.dart';
part 'model/claim_reason.dart';
part 'model/claim_resolution_preference.dart';
part 'model/claim_response_dto.dart';
part 'model/claim_status.dart';
part 'model/claim_update_dto.dart';
part 'model/client_id_and_secret_dto.dart';
part 'model/collection_point.dart';
part 'model/damaged_product_item_schema.dart';
part 'model/data.dart';
part 'model/discount_category.dart';
part 'model/discount_creation_dto.dart';
part 'model/discount_dto.dart';
part 'model/discount_response_dto.dart';
part 'model/discount_target_selection_enum.dart';
part 'model/discount_target_type_enum.dart';
part 'model/discount_type_enum.dart';
part 'model/discount_update_dto.dart';
part 'model/discount_value_type_enum.dart';
part 'model/error_dto.dart';
part 'model/error_type_enum.dart';
part 'model/event_additional_info.dart';
part 'model/expected_delivery.dart';
part 'model/feature_community.dart';
part 'model/flag_enum.dart';
part 'model/http_validation_error.dart';
part 'model/id.dart';
part 'model/image_response_dto.dart';
part 'model/image_type.dart';
part 'model/karla_api_key_creation_dto.dart';
part 'model/klaviyo_settings_v1.dart';
part 'model/language_enum.dart';
part 'model/loc.dart';
part 'model/merchant_creation_dto.dart';
part 'model/merchant_dto.dart';
part 'model/merchant_detail_dto.dart';
part 'model/merchant_id.dart';
part 'model/merchant_update_dto.dart';
part 'model/order_detail_dto.dart';
part 'model/order_discount_dto.dart';
part 'model/order_fulfillment_dto.dart';
part 'model/order_id.dart';
part 'model/order_placement_dto.dart';
part 'model/order_reference_type.dart';
part 'model/order_tracking_dto.dart';
part 'model/order_tracking_update_dto.dart';
part 'model/order_update_dto.dart';
part 'model/org_member_dto.dart';
part 'model/phase_enum.dart';
part 'model/pick_up_type_enum.dart';
part 'model/product_dto.dart';
part 'model/product_image_schema.dart';
part 'model/product_promotion_properties_dto.dart';
part 'model/product_promotion_properties_i18n.dart';
part 'model/product_promotion_properties_text.dart';
part 'model/product_recommendation_category.dart';
part 'model/product_recommendation_dto.dart';
part 'model/product_recommendation_i18n.dart';
part 'model/product_recommendation_text.dart';
part 'model/product_sale_discount_dto.dart';
part 'model/product_schema.dart';
part 'model/product_type_enum.dart';
part 'model/promotion_properties.dart';
part 'model/promotion_type.dart';
part 'model/selected_item_schema.dart';
part 'model/setting_status.dart';
part 'model/shipment_action.dart';
part 'model/shipment_action_request_dto.dart';
part 'model/shipment_add_event_request_dto.dart';
part 'model/shipment_group_key.dart';
part 'model/shop_provider.dart';
part 'model/shop_role.dart';
part 'model/shop_role_enum.dart';
part 'model/shop_settings_dto.dart';
part 'model/shopify_settings_v1.dart';
part 'model/shopify_webhook_creation_dto.dart';
part 'model/shopify_webhook_dto.dart';
part 'model/shopify_webhook_type.dart';
part 'model/state_enum.dart';
part 'model/tax_line_schema.dart';
part 'model/tracking_dto.dart';
part 'model/tracking_estimated_arrival_dto.dart';
part 'model/tracking_event_dto.dart';
part 'model/tracking_event_key_translations_dto.dart';
part 'model/tracking_pick_up_dto.dart';
part 'model/trigger_settings_v1.dart';
part 'model/validation_error.dart';
part 'model/validation_error_dto.dart';
part 'model/validation_error_loc_inner.dart';
part 'model/webhook_creation_dto.dart';
part 'model/webhook_dto.dart';
part 'model/webhook_event.dart';
part 'model/webhook_status.dart';
part 'model/webhook_update_dto.dart';


/// An [ApiClient] instance that uses the default values obtained from
/// the OpenAPI specification file.
var defaultApiClient = ApiClient();

const _delimiters = {'csv': ',', 'ssv': ' ', 'tsv': '\t', 'pipes': '|'};
const _dateEpochMarker = 'epoch';
const _deepEquality = DeepCollectionEquality();
final _dateFormatter = DateFormat('yyyy-MM-dd');
final _regList = RegExp(r'^List<(.*)>$');
final _regSet = RegExp(r'^Set<(.*)>$');
final _regMap = RegExp(r'^Map<String,(.*)>$');

bool _isEpochMarker(String? pattern) => pattern == _dateEpochMarker || pattern == '/$_dateEpochMarker/';
