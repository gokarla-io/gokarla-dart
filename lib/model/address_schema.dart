//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of gokarla;

class AddressSchema {
  /// Returns a new [AddressSchema] instance.
  AddressSchema({
    this.addressLine1,
    this.addressLine2,
    this.city,
    this.country,
    this.countryCode,
    this.name,
    this.phone,
    this.province,
    this.provinceCode,
    this.street,
    this.zipCode,
  });

  /// The resident's mailing address
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? addressLine1;

  /// An additional field for the customer's mailing address
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? addressLine2;

  /// The resident's city
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? city;

  /// The resident's country
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? country;

  /// The two letter digit resident's country code
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? countryCode;

  /// The first and last names of the resident
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// The resident's phone number
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? phone;

  /// The resident's province or state name
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? province;

  /// The resident's province or state name
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? provinceCode;

  /// A combination of the first and second lines of the address
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? street;

  /// The address zip or postal code
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? zipCode;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AddressSchema &&
    other.addressLine1 == addressLine1 &&
    other.addressLine2 == addressLine2 &&
    other.city == city &&
    other.country == country &&
    other.countryCode == countryCode &&
    other.name == name &&
    other.phone == phone &&
    other.province == province &&
    other.provinceCode == provinceCode &&
    other.street == street &&
    other.zipCode == zipCode;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (addressLine1 == null ? 0 : addressLine1!.hashCode) +
    (addressLine2 == null ? 0 : addressLine2!.hashCode) +
    (city == null ? 0 : city!.hashCode) +
    (country == null ? 0 : country!.hashCode) +
    (countryCode == null ? 0 : countryCode!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (phone == null ? 0 : phone!.hashCode) +
    (province == null ? 0 : province!.hashCode) +
    (provinceCode == null ? 0 : provinceCode!.hashCode) +
    (street == null ? 0 : street!.hashCode) +
    (zipCode == null ? 0 : zipCode!.hashCode);

  @override
  String toString() => 'AddressSchema[addressLine1=$addressLine1, addressLine2=$addressLine2, city=$city, country=$country, countryCode=$countryCode, name=$name, phone=$phone, province=$province, provinceCode=$provinceCode, street=$street, zipCode=$zipCode]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.addressLine1 != null) {
      json[r'address_line_1'] = this.addressLine1;
    } else {
      json[r'address_line_1'] = null;
    }
    if (this.addressLine2 != null) {
      json[r'address_line_2'] = this.addressLine2;
    } else {
      json[r'address_line_2'] = null;
    }
    if (this.city != null) {
      json[r'city'] = this.city;
    } else {
      json[r'city'] = null;
    }
    if (this.country != null) {
      json[r'country'] = this.country;
    } else {
      json[r'country'] = null;
    }
    if (this.countryCode != null) {
      json[r'country_code'] = this.countryCode;
    } else {
      json[r'country_code'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.phone != null) {
      json[r'phone'] = this.phone;
    } else {
      json[r'phone'] = null;
    }
    if (this.province != null) {
      json[r'province'] = this.province;
    } else {
      json[r'province'] = null;
    }
    if (this.provinceCode != null) {
      json[r'province_code'] = this.provinceCode;
    } else {
      json[r'province_code'] = null;
    }
    if (this.street != null) {
      json[r'street'] = this.street;
    } else {
      json[r'street'] = null;
    }
    if (this.zipCode != null) {
      json[r'zip_code'] = this.zipCode;
    } else {
      json[r'zip_code'] = null;
    }
    return json;
  }

  /// Returns a new [AddressSchema] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AddressSchema? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AddressSchema[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AddressSchema[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AddressSchema(
        addressLine1: mapValueOfType<String>(json, r'address_line_1'),
        addressLine2: mapValueOfType<String>(json, r'address_line_2'),
        city: mapValueOfType<String>(json, r'city'),
        country: mapValueOfType<String>(json, r'country'),
        countryCode: mapValueOfType<String>(json, r'country_code'),
        name: mapValueOfType<String>(json, r'name'),
        phone: mapValueOfType<String>(json, r'phone'),
        province: mapValueOfType<String>(json, r'province'),
        provinceCode: mapValueOfType<String>(json, r'province_code'),
        street: mapValueOfType<String>(json, r'street'),
        zipCode: mapValueOfType<String>(json, r'zip_code'),
      );
    }
    return null;
  }

  static List<AddressSchema> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AddressSchema>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AddressSchema.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AddressSchema> mapFromJson(dynamic json) {
    final map = <String, AddressSchema>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AddressSchema.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AddressSchema-objects as value to a dart map
  static Map<String, List<AddressSchema>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AddressSchema>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AddressSchema.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

