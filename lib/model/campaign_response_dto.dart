//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of gokarla;

class CampaignResponseDTO {
  /// Returns a new [CampaignResponseDTO] instance.
  CampaignResponseDTO({
    this.enabled = false,
    required this.name,
    required this.startDate,
    this.endDate,
    required this.segment,
    required this.promotionType,
    required this.promotionProperties,
    required this.uuid,
    required this.shopSlug,
    required this.status,
    this.discount,
  });

  /// Campaign visibility toggle. Only one campaign can be enabled per segment at a time.
  bool enabled;

  /// Campaign name to be used internally
  String name;

  /// Time in which the campaign will start (defaults to now)
  DateTime startDate;

  /// Time in which the campaign will end
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? endDate;

  /// Segment to which the campaign is targeted
  String segment;

  /// Type of promotion
  PromotionType promotionType;

  PromotionProperties promotionProperties;

  /// Campaign UUID
  String uuid;

  /// Shop Slug
  String shopSlug;

  /// The status of the campaign
  CampaignStatus status;

  /// The discount attached to the campaign
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DiscountDTO? discount;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CampaignResponseDTO &&
    other.enabled == enabled &&
    other.name == name &&
    other.startDate == startDate &&
    other.endDate == endDate &&
    other.segment == segment &&
    other.promotionType == promotionType &&
    other.promotionProperties == promotionProperties &&
    other.uuid == uuid &&
    other.shopSlug == shopSlug &&
    other.status == status &&
    other.discount == discount;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (enabled.hashCode) +
    (name.hashCode) +
    (startDate.hashCode) +
    (endDate == null ? 0 : endDate!.hashCode) +
    (segment.hashCode) +
    (promotionType.hashCode) +
    (promotionProperties.hashCode) +
    (uuid.hashCode) +
    (shopSlug.hashCode) +
    (status.hashCode) +
    (discount == null ? 0 : discount!.hashCode);

  @override
  String toString() => 'CampaignResponseDTO[enabled=$enabled, name=$name, startDate=$startDate, endDate=$endDate, segment=$segment, promotionType=$promotionType, promotionProperties=$promotionProperties, uuid=$uuid, shopSlug=$shopSlug, status=$status, discount=$discount]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'enabled'] = this.enabled;
      json[r'name'] = this.name;
      json[r'start_date'] = this.startDate.toUtc().toIso8601String();
    if (this.endDate != null) {
      json[r'end_date'] = this.endDate!.toUtc().toIso8601String();
    } else {
      json[r'end_date'] = null;
    }
      json[r'segment'] = this.segment;
      json[r'promotion_type'] = this.promotionType;
      json[r'promotion_properties'] = this.promotionProperties;
      json[r'uuid'] = this.uuid;
      json[r'shop_slug'] = this.shopSlug;
      json[r'status'] = this.status;
    if (this.discount != null) {
      json[r'discount'] = this.discount;
    } else {
      json[r'discount'] = null;
    }
    return json;
  }

  /// Returns a new [CampaignResponseDTO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CampaignResponseDTO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CampaignResponseDTO[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CampaignResponseDTO[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CampaignResponseDTO(
        enabled: mapValueOfType<bool>(json, r'enabled') ?? false,
        name: mapValueOfType<String>(json, r'name')!,
        startDate: mapDateTime(json, r'start_date', r'')!,
        endDate: mapDateTime(json, r'end_date', r''),
        segment: mapValueOfType<String>(json, r'segment')!,
        promotionType: PromotionType.fromJson(json[r'promotion_type'])!,
        promotionProperties: PromotionProperties.fromJson(json[r'promotion_properties'])!,
        uuid: mapValueOfType<String>(json, r'uuid')!,
        shopSlug: mapValueOfType<String>(json, r'shop_slug')!,
        status: CampaignStatus.fromJson(json[r'status'])!,
        discount: DiscountDTO.fromJson(json[r'discount']),
      );
    }
    return null;
  }

  static List<CampaignResponseDTO> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CampaignResponseDTO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CampaignResponseDTO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CampaignResponseDTO> mapFromJson(dynamic json) {
    final map = <String, CampaignResponseDTO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CampaignResponseDTO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CampaignResponseDTO-objects as value to a dart map
  static Map<String, List<CampaignResponseDTO>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CampaignResponseDTO>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CampaignResponseDTO.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'name',
    'start_date',
    'segment',
    'promotion_type',
    'promotion_properties',
    'uuid',
    'shop_slug',
    'status',
  };
}

