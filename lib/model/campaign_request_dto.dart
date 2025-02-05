//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of gokarla;

class CampaignRequestDTO {
  /// Returns a new [CampaignRequestDTO] instance.
  CampaignRequestDTO({
    this.enabled = false,
    required this.name,
    this.startDate,
    this.endDate,
    required this.segment,
    required this.promotionType,
    required this.promotionProperties,
    this.discountId,
  });

  /// Campaign visibility toggle. Only one campaign can be enabled per segment at a time.
  bool enabled;

  /// Campaign name to be used internally
  String name;

  /// Time in which the campaign will start (defaults to now)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? startDate;

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

  /// Discount UUID
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? discountId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CampaignRequestDTO &&
    other.enabled == enabled &&
    other.name == name &&
    other.startDate == startDate &&
    other.endDate == endDate &&
    other.segment == segment &&
    other.promotionType == promotionType &&
    other.promotionProperties == promotionProperties &&
    other.discountId == discountId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (enabled.hashCode) +
    (name.hashCode) +
    (startDate == null ? 0 : startDate!.hashCode) +
    (endDate == null ? 0 : endDate!.hashCode) +
    (segment.hashCode) +
    (promotionType.hashCode) +
    (promotionProperties.hashCode) +
    (discountId == null ? 0 : discountId!.hashCode);

  @override
  String toString() => 'CampaignRequestDTO[enabled=$enabled, name=$name, startDate=$startDate, endDate=$endDate, segment=$segment, promotionType=$promotionType, promotionProperties=$promotionProperties, discountId=$discountId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'enabled'] = this.enabled;
      json[r'name'] = this.name;
    if (this.startDate != null) {
      json[r'start_date'] = this.startDate!.toUtc().toIso8601String();
    } else {
      json[r'start_date'] = null;
    }
    if (this.endDate != null) {
      json[r'end_date'] = this.endDate!.toUtc().toIso8601String();
    } else {
      json[r'end_date'] = null;
    }
      json[r'segment'] = this.segment;
      json[r'promotion_type'] = this.promotionType;
      json[r'promotion_properties'] = this.promotionProperties;
    if (this.discountId != null) {
      json[r'discount_id'] = this.discountId;
    } else {
      json[r'discount_id'] = null;
    }
    return json;
  }

  /// Returns a new [CampaignRequestDTO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CampaignRequestDTO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CampaignRequestDTO[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CampaignRequestDTO[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CampaignRequestDTO(
        enabled: mapValueOfType<bool>(json, r'enabled') ?? false,
        name: mapValueOfType<String>(json, r'name')!,
        startDate: mapDateTime(json, r'start_date', r''),
        endDate: mapDateTime(json, r'end_date', r''),
        segment: mapValueOfType<String>(json, r'segment')!,
        promotionType: PromotionType.fromJson(json[r'promotion_type'])!,
        promotionProperties: PromotionProperties.fromJson(json[r'promotion_properties'])!,
        discountId: mapValueOfType<String>(json, r'discount_id'),
      );
    }
    return null;
  }

  static List<CampaignRequestDTO> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CampaignRequestDTO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CampaignRequestDTO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CampaignRequestDTO> mapFromJson(dynamic json) {
    final map = <String, CampaignRequestDTO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CampaignRequestDTO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CampaignRequestDTO-objects as value to a dart map
  static Map<String, List<CampaignRequestDTO>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CampaignRequestDTO>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CampaignRequestDTO.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'name',
    'segment',
    'promotion_type',
    'promotion_properties',
  };
}

