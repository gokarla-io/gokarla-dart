//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of gokarla;

class DiscountDTO {
  /// Returns a new [DiscountDTO] instance.
  DiscountDTO({
    this.code,
    this.targetSelection,
    this.targetType,
    this.title,
    this.valueType,
    this.value,
    required this.type,
    required this.uuid,
  });

  /// Discount promotion code
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? code;

  /// The selection method for line items or shipping lines to be discounted.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DiscountTargetSelectionEnum? targetSelection;

  /// The type of item that the discount applies to.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DiscountTargetTypeEnum? targetType;

  /// The customer facing name of the discount
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? title;

  /// Type of discount value
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DiscountValueTypeEnum? valueType;

  /// Discount value based on its type
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? value;

  /// Type of discount
  DiscountTypeEnum type;

  /// Discount UUID
  String uuid;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DiscountDTO &&
    other.code == code &&
    other.targetSelection == targetSelection &&
    other.targetType == targetType &&
    other.title == title &&
    other.valueType == valueType &&
    other.value == value &&
    other.type == type &&
    other.uuid == uuid;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (code == null ? 0 : code!.hashCode) +
    (targetSelection == null ? 0 : targetSelection!.hashCode) +
    (targetType == null ? 0 : targetType!.hashCode) +
    (title == null ? 0 : title!.hashCode) +
    (valueType == null ? 0 : valueType!.hashCode) +
    (value == null ? 0 : value!.hashCode) +
    (type.hashCode) +
    (uuid.hashCode);

  @override
  String toString() => 'DiscountDTO[code=$code, targetSelection=$targetSelection, targetType=$targetType, title=$title, valueType=$valueType, value=$value, type=$type, uuid=$uuid]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.code != null) {
      json[r'code'] = this.code;
    } else {
      json[r'code'] = null;
    }
    if (this.targetSelection != null) {
      json[r'target_selection'] = this.targetSelection;
    } else {
      json[r'target_selection'] = null;
    }
    if (this.targetType != null) {
      json[r'target_type'] = this.targetType;
    } else {
      json[r'target_type'] = null;
    }
    if (this.title != null) {
      json[r'title'] = this.title;
    } else {
      json[r'title'] = null;
    }
    if (this.valueType != null) {
      json[r'value_type'] = this.valueType;
    } else {
      json[r'value_type'] = null;
    }
    if (this.value != null) {
      json[r'value'] = this.value;
    } else {
      json[r'value'] = null;
    }
      json[r'type'] = this.type;
      json[r'uuid'] = this.uuid;
    return json;
  }

  /// Returns a new [DiscountDTO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DiscountDTO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DiscountDTO[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DiscountDTO[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DiscountDTO(
        code: mapValueOfType<String>(json, r'code'),
        targetSelection: DiscountTargetSelectionEnum.fromJson(json[r'target_selection']),
        targetType: DiscountTargetTypeEnum.fromJson(json[r'target_type']),
        title: mapValueOfType<String>(json, r'title'),
        valueType: DiscountValueTypeEnum.fromJson(json[r'value_type']),
        value: num.parse('${json[r'value']}'),
        type: DiscountTypeEnum.fromJson(json[r'type'])!,
        uuid: mapValueOfType<String>(json, r'uuid')!,
      );
    }
    return null;
  }

  static List<DiscountDTO> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DiscountDTO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DiscountDTO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DiscountDTO> mapFromJson(dynamic json) {
    final map = <String, DiscountDTO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DiscountDTO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DiscountDTO-objects as value to a dart map
  static Map<String, List<DiscountDTO>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DiscountDTO>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DiscountDTO.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'type',
    'uuid',
  };
}

