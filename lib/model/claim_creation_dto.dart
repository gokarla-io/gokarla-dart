//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of gokarla;

class ClaimCreationDTO {
  /// Returns a new [ClaimCreationDTO] instance.
  ClaimCreationDTO({
    this.shipmentId,
    this.resolutionPreference,
    required this.reason,
    this.status,
    this.description,
    this.customerSignatureImageUrl,
    this.damagedProductItems = const [],
    this.selectedItems = const [],
    this.imageUrls = const [],
    this.dropoffPermission,
  });

  /// Unique identifier for the system in Karla. If not provided, a tracking number has to be given.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? shipmentId;

  /// Claim resolution preference
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ClaimResolutionPreference? resolutionPreference;

  /// Reason to submit the claim
  ClaimReason reason;

  /// Claim status
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ClaimStatus? status;

  /// Complimentary description to explain why the claim was submitted
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? description;

  /// The private image url with the client signature
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? customerSignatureImageUrl;

  /// List of damaged product items (DEPRECATED)
  List<DamagedProductItemSchema> damagedProductItems;

  /// List of selected product items
  List<SelectedItemSchema> selectedItems;

  /// List of image URLs that give evidence of the damaged product or claim in general
  List<String> imageUrls;

  /// The customer's response about whether they authorized the carrier to leave the package at a designated spot without requiring direct delivery
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? dropoffPermission;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ClaimCreationDTO &&
    other.shipmentId == shipmentId &&
    other.resolutionPreference == resolutionPreference &&
    other.reason == reason &&
    other.status == status &&
    other.description == description &&
    other.customerSignatureImageUrl == customerSignatureImageUrl &&
    _deepEquality.equals(other.damagedProductItems, damagedProductItems) &&
    _deepEquality.equals(other.selectedItems, selectedItems) &&
    _deepEquality.equals(other.imageUrls, imageUrls) &&
    other.dropoffPermission == dropoffPermission;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (shipmentId == null ? 0 : shipmentId!.hashCode) +
    (resolutionPreference == null ? 0 : resolutionPreference!.hashCode) +
    (reason.hashCode) +
    (status == null ? 0 : status!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (customerSignatureImageUrl == null ? 0 : customerSignatureImageUrl!.hashCode) +
    (damagedProductItems.hashCode) +
    (selectedItems.hashCode) +
    (imageUrls.hashCode) +
    (dropoffPermission == null ? 0 : dropoffPermission!.hashCode);

  @override
  String toString() => 'ClaimCreationDTO[shipmentId=$shipmentId, resolutionPreference=$resolutionPreference, reason=$reason, status=$status, description=$description, customerSignatureImageUrl=$customerSignatureImageUrl, damagedProductItems=$damagedProductItems, selectedItems=$selectedItems, imageUrls=$imageUrls, dropoffPermission=$dropoffPermission]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.shipmentId != null) {
      json[r'shipment_id'] = this.shipmentId;
    } else {
      json[r'shipment_id'] = null;
    }
    if (this.resolutionPreference != null) {
      json[r'resolution_preference'] = this.resolutionPreference;
    } else {
      json[r'resolution_preference'] = null;
    }
      json[r'reason'] = this.reason;
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
    if (this.customerSignatureImageUrl != null) {
      json[r'customer_signature_image_url'] = this.customerSignatureImageUrl;
    } else {
      json[r'customer_signature_image_url'] = null;
    }
      json[r'damaged_product_items'] = this.damagedProductItems;
      json[r'selected_items'] = this.selectedItems;
      json[r'image_urls'] = this.imageUrls;
    if (this.dropoffPermission != null) {
      json[r'dropoff_permission'] = this.dropoffPermission;
    } else {
      json[r'dropoff_permission'] = null;
    }
    return json;
  }

  /// Returns a new [ClaimCreationDTO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ClaimCreationDTO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ClaimCreationDTO[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ClaimCreationDTO[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ClaimCreationDTO(
        shipmentId: mapValueOfType<String>(json, r'shipment_id'),
        resolutionPreference: ClaimResolutionPreference.fromJson(json[r'resolution_preference']),
        reason: ClaimReason.fromJson(json[r'reason'])!,
        status: ClaimStatus.fromJson(json[r'status']),
        description: mapValueOfType<String>(json, r'description'),
        customerSignatureImageUrl: mapValueOfType<String>(json, r'customer_signature_image_url'),
        damagedProductItems: DamagedProductItemSchema.listFromJson(json[r'damaged_product_items']),
        selectedItems: SelectedItemSchema.listFromJson(json[r'selected_items']),
        imageUrls: json[r'image_urls'] is Iterable
            ? (json[r'image_urls'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        dropoffPermission: mapValueOfType<bool>(json, r'dropoff_permission'),
      );
    }
    return null;
  }

  static List<ClaimCreationDTO> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ClaimCreationDTO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ClaimCreationDTO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ClaimCreationDTO> mapFromJson(dynamic json) {
    final map = <String, ClaimCreationDTO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ClaimCreationDTO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ClaimCreationDTO-objects as value to a dart map
  static Map<String, List<ClaimCreationDTO>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ClaimCreationDTO>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ClaimCreationDTO.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'reason',
  };
}

