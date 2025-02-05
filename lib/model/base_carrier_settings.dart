//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of gokarla;

class BaseCarrierSettings {
  /// Returns a new [BaseCarrierSettings] instance.
  BaseCarrierSettings({
    this.version = const BaseCarrierSettingsVersionEnum._(BaseCarrierSettingsVersionEnum.number1),
    required this.data,
  });

  /// Version of the schema
  BaseCarrierSettingsVersionEnum version;

  /// Carrier Settings Data
  CarrierSettingsV1 data;

  @override
  bool operator ==(Object other) => identical(this, other) || other is BaseCarrierSettings &&
    other.version == version &&
    other.data == data;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (version.hashCode) +
    (data.hashCode);

  @override
  String toString() => 'BaseCarrierSettings[version=$version, data=$data]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'version'] = this.version;
      json[r'data'] = this.data;
    return json;
  }

  /// Returns a new [BaseCarrierSettings] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static BaseCarrierSettings? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "BaseCarrierSettings[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "BaseCarrierSettings[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return BaseCarrierSettings(
        version: BaseCarrierSettingsVersionEnum.fromJson(json[r'version']) ?? BaseCarrierSettingsVersionEnum.number1,
        data: CarrierSettingsV1.fromJson(json[r'data'])!,
      );
    }
    return null;
  }

  static List<BaseCarrierSettings> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <BaseCarrierSettings>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = BaseCarrierSettings.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, BaseCarrierSettings> mapFromJson(dynamic json) {
    final map = <String, BaseCarrierSettings>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = BaseCarrierSettings.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of BaseCarrierSettings-objects as value to a dart map
  static Map<String, List<BaseCarrierSettings>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<BaseCarrierSettings>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = BaseCarrierSettings.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'data',
  };
}

/// Version of the schema
class BaseCarrierSettingsVersionEnum {
  /// Instantiate a new enum with the provided [value].
  const BaseCarrierSettingsVersionEnum._(this.value);

  /// The underlying value of this enum member.
  final int value;

  @override
  String toString() => value.toString();

  int toJson() => value;

  static const number1 = BaseCarrierSettingsVersionEnum._(1);

  /// List of all possible values in this [enum][BaseCarrierSettingsVersionEnum].
  static const values = <BaseCarrierSettingsVersionEnum>[
    number1,
  ];

  static BaseCarrierSettingsVersionEnum? fromJson(dynamic value) => BaseCarrierSettingsVersionEnumTypeTransformer().decode(value);

  static List<BaseCarrierSettingsVersionEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <BaseCarrierSettingsVersionEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = BaseCarrierSettingsVersionEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [BaseCarrierSettingsVersionEnum] to int,
/// and [decode] dynamic data back to [BaseCarrierSettingsVersionEnum].
class BaseCarrierSettingsVersionEnumTypeTransformer {
  factory BaseCarrierSettingsVersionEnumTypeTransformer() => _instance ??= const BaseCarrierSettingsVersionEnumTypeTransformer._();

  const BaseCarrierSettingsVersionEnumTypeTransformer._();

  int encode(BaseCarrierSettingsVersionEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a BaseCarrierSettingsVersionEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  BaseCarrierSettingsVersionEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case 1: return BaseCarrierSettingsVersionEnum.number1;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [BaseCarrierSettingsVersionEnumTypeTransformer] instance.
  static BaseCarrierSettingsVersionEnumTypeTransformer? _instance;
}


