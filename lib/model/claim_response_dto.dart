//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of gokarla;

class ClaimResponseDTO {
  /// Returns a new [ClaimResponseDTO] instance.
  ClaimResponseDTO({
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
    required this.uuid,
    this.orderId,
    this.shipmentId,
    this.orderNumber,
    this.resolutionPreference,
    required this.reason,
    this.status = ClaimStatus.pending,
    this.description,
    this.customerSignatureImageUrl,
    this.damagedProductItems = const [],
    this.selectedItems = const [],
    this.imageUrls = const [],
    this.address,
    this.netInvoiceAmount,
    this.trackingNumber,
    this.carrierReference,
    this.scanDate,
    this.weightKg,
    this.dropoffPermission,
    required this.shopSlug,
  });

  /// When the resource was created
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? createdAt;

  /// When the resource was last updated
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? updatedAt;

  /// When the resource was cancelled/completed
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? deletedAt;

  /// Claim UUID
  String uuid;

  /// Order UUID
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? orderId;

  /// Shipment UUID
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? shipmentId;

  /// Order number related to the shop
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? orderNumber;

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

  /// Progress of the claim
  ClaimStatus status;

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

  /// List of image urls
  List<String> imageUrls;

  /// Delivery address for the original order
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  AddressSchema? address;

  /// Price of the entire order without discounts, shipping costs and taxes applied
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? netInvoiceAmount;

  /// Carrier Tracking Number
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? trackingNumber;

  /// Carrier reference
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  CarrierEnum? carrierReference;

  /// Date the package was picked by the carrier
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? scanDate;

  /// The weight of the package in kilograms
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? weightKg;

  /// The customer's response about whether they authorized the carrier to leave the package at a designated spot without requiring direct delivery
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? dropoffPermission;

  /// Shop identifier as a url slug
  String shopSlug;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ClaimResponseDTO &&
    other.createdAt == createdAt &&
    other.updatedAt == updatedAt &&
    other.deletedAt == deletedAt &&
    other.uuid == uuid &&
    other.orderId == orderId &&
    other.shipmentId == shipmentId &&
    other.orderNumber == orderNumber &&
    other.resolutionPreference == resolutionPreference &&
    other.reason == reason &&
    other.status == status &&
    other.description == description &&
    other.customerSignatureImageUrl == customerSignatureImageUrl &&
    _deepEquality.equals(other.damagedProductItems, damagedProductItems) &&
    _deepEquality.equals(other.selectedItems, selectedItems) &&
    _deepEquality.equals(other.imageUrls, imageUrls) &&
    other.address == address &&
    other.netInvoiceAmount == netInvoiceAmount &&
    other.trackingNumber == trackingNumber &&
    other.carrierReference == carrierReference &&
    other.scanDate == scanDate &&
    other.weightKg == weightKg &&
    other.dropoffPermission == dropoffPermission &&
    other.shopSlug == shopSlug;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (updatedAt == null ? 0 : updatedAt!.hashCode) +
    (deletedAt == null ? 0 : deletedAt!.hashCode) +
    (uuid.hashCode) +
    (orderId == null ? 0 : orderId!.hashCode) +
    (shipmentId == null ? 0 : shipmentId!.hashCode) +
    (orderNumber == null ? 0 : orderNumber!.hashCode) +
    (resolutionPreference == null ? 0 : resolutionPreference!.hashCode) +
    (reason.hashCode) +
    (status.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (customerSignatureImageUrl == null ? 0 : customerSignatureImageUrl!.hashCode) +
    (damagedProductItems.hashCode) +
    (selectedItems.hashCode) +
    (imageUrls.hashCode) +
    (address == null ? 0 : address!.hashCode) +
    (netInvoiceAmount == null ? 0 : netInvoiceAmount!.hashCode) +
    (trackingNumber == null ? 0 : trackingNumber!.hashCode) +
    (carrierReference == null ? 0 : carrierReference!.hashCode) +
    (scanDate == null ? 0 : scanDate!.hashCode) +
    (weightKg == null ? 0 : weightKg!.hashCode) +
    (dropoffPermission == null ? 0 : dropoffPermission!.hashCode) +
    (shopSlug.hashCode);

  @override
  String toString() => 'ClaimResponseDTO[createdAt=$createdAt, updatedAt=$updatedAt, deletedAt=$deletedAt, uuid=$uuid, orderId=$orderId, shipmentId=$shipmentId, orderNumber=$orderNumber, resolutionPreference=$resolutionPreference, reason=$reason, status=$status, description=$description, customerSignatureImageUrl=$customerSignatureImageUrl, damagedProductItems=$damagedProductItems, selectedItems=$selectedItems, imageUrls=$imageUrls, address=$address, netInvoiceAmount=$netInvoiceAmount, trackingNumber=$trackingNumber, carrierReference=$carrierReference, scanDate=$scanDate, weightKg=$weightKg, dropoffPermission=$dropoffPermission, shopSlug=$shopSlug]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.createdAt != null) {
      json[r'created_at'] = this.createdAt!.toUtc().toIso8601String();
    } else {
      json[r'created_at'] = null;
    }
    if (this.updatedAt != null) {
      json[r'updated_at'] = this.updatedAt!.toUtc().toIso8601String();
    } else {
      json[r'updated_at'] = null;
    }
    if (this.deletedAt != null) {
      json[r'deleted_at'] = this.deletedAt!.toUtc().toIso8601String();
    } else {
      json[r'deleted_at'] = null;
    }
      json[r'uuid'] = this.uuid;
    if (this.orderId != null) {
      json[r'order_id'] = this.orderId;
    } else {
      json[r'order_id'] = null;
    }
    if (this.shipmentId != null) {
      json[r'shipment_id'] = this.shipmentId;
    } else {
      json[r'shipment_id'] = null;
    }
    if (this.orderNumber != null) {
      json[r'order_number'] = this.orderNumber;
    } else {
      json[r'order_number'] = null;
    }
    if (this.resolutionPreference != null) {
      json[r'resolution_preference'] = this.resolutionPreference;
    } else {
      json[r'resolution_preference'] = null;
    }
      json[r'reason'] = this.reason;
      json[r'status'] = this.status;
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
    if (this.address != null) {
      json[r'address'] = this.address;
    } else {
      json[r'address'] = null;
    }
    if (this.netInvoiceAmount != null) {
      json[r'net_invoice_amount'] = this.netInvoiceAmount;
    } else {
      json[r'net_invoice_amount'] = null;
    }
    if (this.trackingNumber != null) {
      json[r'tracking_number'] = this.trackingNumber;
    } else {
      json[r'tracking_number'] = null;
    }
    if (this.carrierReference != null) {
      json[r'carrier_reference'] = this.carrierReference;
    } else {
      json[r'carrier_reference'] = null;
    }
    if (this.scanDate != null) {
      json[r'scan_date'] = this.scanDate!.toUtc().toIso8601String();
    } else {
      json[r'scan_date'] = null;
    }
    if (this.weightKg != null) {
      json[r'weight_kg'] = this.weightKg;
    } else {
      json[r'weight_kg'] = null;
    }
    if (this.dropoffPermission != null) {
      json[r'dropoff_permission'] = this.dropoffPermission;
    } else {
      json[r'dropoff_permission'] = null;
    }
      json[r'shop_slug'] = this.shopSlug;
    return json;
  }

  /// Returns a new [ClaimResponseDTO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ClaimResponseDTO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ClaimResponseDTO[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ClaimResponseDTO[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ClaimResponseDTO(
        createdAt: mapDateTime(json, r'created_at', r''),
        updatedAt: mapDateTime(json, r'updated_at', r''),
        deletedAt: mapDateTime(json, r'deleted_at', r''),
        uuid: mapValueOfType<String>(json, r'uuid')!,
        orderId: mapValueOfType<String>(json, r'order_id'),
        shipmentId: mapValueOfType<String>(json, r'shipment_id'),
        orderNumber: mapValueOfType<String>(json, r'order_number'),
        resolutionPreference: ClaimResolutionPreference.fromJson(json[r'resolution_preference']),
        reason: ClaimReason.fromJson(json[r'reason'])!,
        status: ClaimStatus.fromJson(json[r'status']) ?? ClaimStatus.pending,
        description: mapValueOfType<String>(json, r'description'),
        customerSignatureImageUrl: mapValueOfType<String>(json, r'customer_signature_image_url'),
        damagedProductItems: DamagedProductItemSchema.listFromJson(json[r'damaged_product_items']),
        selectedItems: SelectedItemSchema.listFromJson(json[r'selected_items']),
        imageUrls: json[r'image_urls'] is Iterable
            ? (json[r'image_urls'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        address: AddressSchema.fromJson(json[r'address']),
        netInvoiceAmount: num.parse('${json[r'net_invoice_amount']}'),
        trackingNumber: mapValueOfType<String>(json, r'tracking_number'),
        carrierReference: CarrierEnum.fromJson(json[r'carrier_reference']),
        scanDate: mapDateTime(json, r'scan_date', r''),
        weightKg: num.parse('${json[r'weight_kg']}'),
        dropoffPermission: mapValueOfType<bool>(json, r'dropoff_permission'),
        shopSlug: mapValueOfType<String>(json, r'shop_slug')!,
      );
    }
    return null;
  }

  static List<ClaimResponseDTO> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ClaimResponseDTO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ClaimResponseDTO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ClaimResponseDTO> mapFromJson(dynamic json) {
    final map = <String, ClaimResponseDTO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ClaimResponseDTO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ClaimResponseDTO-objects as value to a dart map
  static Map<String, List<ClaimResponseDTO>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ClaimResponseDTO>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ClaimResponseDTO.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'uuid',
    'reason',
    'shop_slug',
  };
}

