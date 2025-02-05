//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of gokarla;

class BaseTriggerSettings {
  /// Returns a new [BaseTriggerSettings] instance.
  BaseTriggerSettings({
    this.version = const BaseTriggerSettingsVersionEnum._(BaseTriggerSettingsVersionEnum.number1),
    required this.data,
  });

  /// Version of the schema
  BaseTriggerSettingsVersionEnum version;

  /// Trigger Settings Data
  TriggerSettingsV1 data;

  @override
  bool operator ==(Object other) => identical(this, other) || other is BaseTriggerSettings &&
    other.version == version &&
    other.data == data;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (version.hashCode) +
    (data.hashCode);

  @override
  String toString() => 'BaseTriggerSettings[version=$version, data=$data]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'version'] = this.version;
      json[r'data'] = this.data;
    return json;
  }

  /// Returns a new [BaseTriggerSettings] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static BaseTriggerSettings? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "BaseTriggerSettings[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "BaseTriggerSettings[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return BaseTriggerSettings(
        version: BaseTriggerSettingsVersionEnum.fromJson(json[r'version']) ?? BaseTriggerSettingsVersionEnum.number1,
        data: TriggerSettingsV1.fromJson(json[r'data'])!,
      );
    }
    return null;
  }

  static List<BaseTriggerSettings> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <BaseTriggerSettings>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = BaseTriggerSettings.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, BaseTriggerSettings> mapFromJson(dynamic json) {
    final map = <String, BaseTriggerSettings>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = BaseTriggerSettings.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of BaseTriggerSettings-objects as value to a dart map
  static Map<String, List<BaseTriggerSettings>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<BaseTriggerSettings>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = BaseTriggerSettings.listFromJson(entry.value, growable: growable,);
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
class BaseTriggerSettingsVersionEnum {
  /// Instantiate a new enum with the provided [value].
  const BaseTriggerSettingsVersionEnum._(this.value);

  /// The underlying value of this enum member.
  final int value;

  @override
  String toString() => value.toString();

  int toJson() => value;

  static const number1 = BaseTriggerSettingsVersionEnum._(1);

  /// List of all possible values in this [enum][BaseTriggerSettingsVersionEnum].
  static const values = <BaseTriggerSettingsVersionEnum>[
    number1,
  ];

  static BaseTriggerSettingsVersionEnum? fromJson(dynamic value) => BaseTriggerSettingsVersionEnumTypeTransformer().decode(value);

  static List<BaseTriggerSettingsVersionEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <BaseTriggerSettingsVersionEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = BaseTriggerSettingsVersionEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [BaseTriggerSettingsVersionEnum] to int,
/// and [decode] dynamic data back to [BaseTriggerSettingsVersionEnum].
class BaseTriggerSettingsVersionEnumTypeTransformer {
  factory BaseTriggerSettingsVersionEnumTypeTransformer() => _instance ??= const BaseTriggerSettingsVersionEnumTypeTransformer._();

  const BaseTriggerSettingsVersionEnumTypeTransformer._();

  int encode(BaseTriggerSettingsVersionEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a BaseTriggerSettingsVersionEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  BaseTriggerSettingsVersionEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case 1: return BaseTriggerSettingsVersionEnum.number1;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [BaseTriggerSettingsVersionEnumTypeTransformer] instance.
  static BaseTriggerSettingsVersionEnumTypeTransformer? _instance;
}


