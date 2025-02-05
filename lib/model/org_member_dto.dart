//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of gokarla;

class OrgMemberDTO {
  /// Returns a new [OrgMemberDTO] instance.
  OrgMemberDTO({
    required this.emailId,
    required this.featureCommunity,
    this.featureToggles,
    required this.org,
    this.shops = const [],
  });

  /// The email of the user
  String emailId;

  /// The feature community the member belongs to
  FeatureCommunity featureCommunity;

  /// The specific features the member has access to
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Object? featureToggles;

  /// The organization the member belongs to
  String org;

  /// Shops the member has access to
  List<String> shops;

  @override
  bool operator ==(Object other) => identical(this, other) || other is OrgMemberDTO &&
    other.emailId == emailId &&
    other.featureCommunity == featureCommunity &&
    other.featureToggles == featureToggles &&
    other.org == org &&
    _deepEquality.equals(other.shops, shops);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (emailId.hashCode) +
    (featureCommunity.hashCode) +
    (featureToggles == null ? 0 : featureToggles!.hashCode) +
    (org.hashCode) +
    (shops.hashCode);

  @override
  String toString() => 'OrgMemberDTO[emailId=$emailId, featureCommunity=$featureCommunity, featureToggles=$featureToggles, org=$org, shops=$shops]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'email_id'] = this.emailId;
      json[r'feature_community'] = this.featureCommunity;
    if (this.featureToggles != null) {
      json[r'feature_toggles'] = this.featureToggles;
    } else {
      json[r'feature_toggles'] = null;
    }
      json[r'org'] = this.org;
      json[r'shops'] = this.shops;
    return json;
  }

  /// Returns a new [OrgMemberDTO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static OrgMemberDTO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "OrgMemberDTO[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "OrgMemberDTO[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return OrgMemberDTO(
        emailId: mapValueOfType<String>(json, r'email_id')!,
        featureCommunity: FeatureCommunity.fromJson(json[r'feature_community'])!,
        featureToggles: mapValueOfType<Object>(json, r'feature_toggles'),
        org: mapValueOfType<String>(json, r'org')!,
        shops: json[r'shops'] is Iterable
            ? (json[r'shops'] as Iterable).cast<String>().toList(growable: false)
            : const [],
      );
    }
    return null;
  }

  static List<OrgMemberDTO> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <OrgMemberDTO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = OrgMemberDTO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, OrgMemberDTO> mapFromJson(dynamic json) {
    final map = <String, OrgMemberDTO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = OrgMemberDTO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of OrgMemberDTO-objects as value to a dart map
  static Map<String, List<OrgMemberDTO>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<OrgMemberDTO>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = OrgMemberDTO.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'email_id',
    'feature_community',
    'org',
    'shops',
  };
}

