//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of gokarla;

class TaxLineSchema {
  /// Returns a new [TaxLineSchema] instance.
  TaxLineSchema({
    this.currency,
    this.price,
    this.rate,
    this.title,
  });

  /// Currency of the tax line
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? currency;

  /// Price of the tax line
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? price;

  /// Rate of the tax line
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? rate;

  /// Title of the tax line
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? title;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TaxLineSchema &&
    other.currency == currency &&
    other.price == price &&
    other.rate == rate &&
    other.title == title;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (currency == null ? 0 : currency!.hashCode) +
    (price == null ? 0 : price!.hashCode) +
    (rate == null ? 0 : rate!.hashCode) +
    (title == null ? 0 : title!.hashCode);

  @override
  String toString() => 'TaxLineSchema[currency=$currency, price=$price, rate=$rate, title=$title]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.currency != null) {
      json[r'currency'] = this.currency;
    } else {
      json[r'currency'] = null;
    }
    if (this.price != null) {
      json[r'price'] = this.price;
    } else {
      json[r'price'] = null;
    }
    if (this.rate != null) {
      json[r'rate'] = this.rate;
    } else {
      json[r'rate'] = null;
    }
    if (this.title != null) {
      json[r'title'] = this.title;
    } else {
      json[r'title'] = null;
    }
    return json;
  }

  /// Returns a new [TaxLineSchema] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TaxLineSchema? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TaxLineSchema[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TaxLineSchema[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TaxLineSchema(
        currency: mapValueOfType<String>(json, r'currency'),
        price: num.parse('${json[r'price']}'),
        rate: num.parse('${json[r'rate']}'),
        title: mapValueOfType<String>(json, r'title'),
      );
    }
    return null;
  }

  static List<TaxLineSchema> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TaxLineSchema>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TaxLineSchema.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TaxLineSchema> mapFromJson(dynamic json) {
    final map = <String, TaxLineSchema>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TaxLineSchema.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TaxLineSchema-objects as value to a dart map
  static Map<String, List<TaxLineSchema>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TaxLineSchema>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TaxLineSchema.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

