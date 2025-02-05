//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of gokarla;

class QueryParam {
  const QueryParam(this.name, this.value);

  final String name;
  final String value;

  @override
  String toString() => '${Uri.encodeQueryComponent(name)}=${Uri.encodeQueryComponent(value)}';
}

// Ported from the Java version.
Iterable<QueryParam> _queryParams(String collectionFormat, String name, dynamic value,) {
  // Assertions to run in debug mode only.
  assert(name.isNotEmpty, 'Parameter cannot be an empty string.');

  final params = <QueryParam>[];

  if (value is List) {
    if (collectionFormat == 'multi') {
      return value.map((dynamic v) => QueryParam(name, parameterToString(v)),);
    }

    // Default collection format is 'csv'.
    if (collectionFormat.isEmpty) {
      collectionFormat = 'csv'; // ignore: parameter_assignments
    }

    final delimiter = _delimiters[collectionFormat] ?? ',';

    params.add(QueryParam(name, value.map<dynamic>(parameterToString).join(delimiter),));
  } else if (value != null) {
    params.add(QueryParam(name, parameterToString(value)));
  }

  return params;
}

/// Format the given parameter object into a [String].
String parameterToString(dynamic value) {
  if (value == null) {
    return '';
  }
  if (value is DateTime) {
    return value.toUtc().toIso8601String();
  }
  if (value is CampaignStatus) {
    return CampaignStatusTypeTransformer().encode(value).toString();
  }
  if (value is CarrierEnum) {
    return CarrierEnumTypeTransformer().encode(value).toString();
  }
  if (value is ClaimReason) {
    return ClaimReasonTypeTransformer().encode(value).toString();
  }
  if (value is ClaimResolutionPreference) {
    return ClaimResolutionPreferenceTypeTransformer().encode(value).toString();
  }
  if (value is ClaimStatus) {
    return ClaimStatusTypeTransformer().encode(value).toString();
  }
  if (value is DiscountCategory) {
    return DiscountCategoryTypeTransformer().encode(value).toString();
  }
  if (value is DiscountTargetSelectionEnum) {
    return DiscountTargetSelectionEnumTypeTransformer().encode(value).toString();
  }
  if (value is DiscountTargetTypeEnum) {
    return DiscountTargetTypeEnumTypeTransformer().encode(value).toString();
  }
  if (value is DiscountTypeEnum) {
    return DiscountTypeEnumTypeTransformer().encode(value).toString();
  }
  if (value is DiscountValueTypeEnum) {
    return DiscountValueTypeEnumTypeTransformer().encode(value).toString();
  }
  if (value is ErrorTypeEnum) {
    return ErrorTypeEnumTypeTransformer().encode(value).toString();
  }
  if (value is FeatureCommunity) {
    return FeatureCommunityTypeTransformer().encode(value).toString();
  }
  if (value is FlagEnum) {
    return FlagEnumTypeTransformer().encode(value).toString();
  }
  if (value is ImageType) {
    return ImageTypeTypeTransformer().encode(value).toString();
  }
  if (value is LanguageEnum) {
    return LanguageEnumTypeTransformer().encode(value).toString();
  }
  if (value is OrderReferenceType) {
    return OrderReferenceTypeTypeTransformer().encode(value).toString();
  }
  if (value is PhaseEnum) {
    return PhaseEnumTypeTransformer().encode(value).toString();
  }
  if (value is PickUpTypeEnum) {
    return PickUpTypeEnumTypeTransformer().encode(value).toString();
  }
  if (value is ProductRecommendationCategory) {
    return ProductRecommendationCategoryTypeTransformer().encode(value).toString();
  }
  if (value is ProductTypeEnum) {
    return ProductTypeEnumTypeTransformer().encode(value).toString();
  }
  if (value is PromotionType) {
    return PromotionTypeTypeTransformer().encode(value).toString();
  }
  if (value is SettingStatus) {
    return SettingStatusTypeTransformer().encode(value).toString();
  }
  if (value is ShipmentAction) {
    return ShipmentActionTypeTransformer().encode(value).toString();
  }
  if (value is ShipmentGroupKey) {
    return ShipmentGroupKeyTypeTransformer().encode(value).toString();
  }
  if (value is ShopProvider) {
    return ShopProviderTypeTransformer().encode(value).toString();
  }
  if (value is ShopRoleEnum) {
    return ShopRoleEnumTypeTransformer().encode(value).toString();
  }
  if (value is ShopifyWebhookType) {
    return ShopifyWebhookTypeTypeTransformer().encode(value).toString();
  }
  if (value is StateEnum) {
    return StateEnumTypeTransformer().encode(value).toString();
  }
  if (value is WebhookEvent) {
    return WebhookEventTypeTransformer().encode(value).toString();
  }
  if (value is WebhookStatus) {
    return WebhookStatusTypeTransformer().encode(value).toString();
  }
  return value.toString();
}

/// Returns the decoded body as UTF-8 if the given headers indicate an 'application/json'
/// content type. Otherwise, returns the decoded body as decoded by dart:http package.
Future<String> _decodeBodyBytes(Response response) async {
  final contentType = response.headers['content-type'];
  return contentType != null && contentType.toLowerCase().startsWith('application/json')
    ? response.bodyBytes.isEmpty ? '' : utf8.decode(response.bodyBytes)
    : response.body;
}

/// Returns a valid [T] value found at the specified Map [key], null otherwise.
T? mapValueOfType<T>(dynamic map, String key) {
  final dynamic value = map is Map ? map[key] : null;
  if (T == double && value is int) {
    return value.toDouble() as T;
  }
  return value is T ? value : null;
}

/// Returns a valid Map<K, V> found at the specified Map [key], null otherwise.
Map<K, V>? mapCastOfType<K, V>(dynamic map, String key) {
  final dynamic value = map is Map ? map[key] : null;
  return value is Map ? value.cast<K, V>() : null;
}

/// Returns a valid [DateTime] found at the specified Map [key], null otherwise.
DateTime? mapDateTime(dynamic map, String key, [String? pattern]) {
  final dynamic value = map is Map ? map[key] : null;
  if (value != null) {
    int? millis;
    if (value is int) {
      millis = value;
    } else if (value is String) {
      if (_isEpochMarker(pattern)) {
        millis = int.tryParse(value);
      } else {
        return DateTime.tryParse(value);
      }
    }
    if (millis != null) {
      return DateTime.fromMillisecondsSinceEpoch(millis, isUtc: true);
    }
  }
  return null;
}
