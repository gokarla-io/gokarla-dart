//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of gokarla;

class BaseTrackpagesSettings {
  /// Returns a new [BaseTrackpagesSettings] instance.
  BaseTrackpagesSettings({
    this.version = const BaseTrackpagesSettingsVersionEnum._(BaseTrackpagesSettingsVersionEnum.number1),
    this.data = {},
  });

  /// Version of the schema
  BaseTrackpagesSettingsVersionEnum version;

  /// Trackpages Settings Data
  Object data;

  @override
  bool operator ==(Object other) => identical(this, other) || other is BaseTrackpagesSettings &&
    other.version == version &&
    other.data == data;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (version.hashCode) +
    (data.hashCode);

  @override
  String toString() => 'BaseTrackpagesSettings[version=$version, data=$data]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'version'] = this.version;
      json[r'data'] = this.data;
    return json;
  }

  /// Returns a new [BaseTrackpagesSettings] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static BaseTrackpagesSettings? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "BaseTrackpagesSettings[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "BaseTrackpagesSettings[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return BaseTrackpagesSettings(
        version: BaseTrackpagesSettingsVersionEnum.fromJson(json[r'version']) ?? BaseTrackpagesSettingsVersionEnum.number1,
        data: mapValueOfType<Object>(json, r'data') ?? {},
      );
    }
    return null;
  }

  static List<BaseTrackpagesSettings> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <BaseTrackpagesSettings>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = BaseTrackpagesSettings.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, BaseTrackpagesSettings> mapFromJson(dynamic json) {
    final map = <String, BaseTrackpagesSettings>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = BaseTrackpagesSettings.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of BaseTrackpagesSettings-objects as value to a dart map
  static Map<String, List<BaseTrackpagesSettings>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<BaseTrackpagesSettings>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = BaseTrackpagesSettings.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

/// Version of the schema
class BaseTrackpagesSettingsVersionEnum {
  /// Instantiate a new enum with the provided [value].
  const BaseTrackpagesSettingsVersionEnum._(this.value);

  /// The underlying value of this enum member.
  final int value;

  @override
  String toString() => value.toString();

  int toJson() => value;

  static const number1 = BaseTrackpagesSettingsVersionEnum._(1);

  /// List of all possible values in this [enum][BaseTrackpagesSettingsVersionEnum].
  static const values = <BaseTrackpagesSettingsVersionEnum>[
    number1,
  ];

  static BaseTrackpagesSettingsVersionEnum? fromJson(dynamic value) => BaseTrackpagesSettingsVersionEnumTypeTransformer().decode(value);

  static List<BaseTrackpagesSettingsVersionEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <BaseTrackpagesSettingsVersionEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = BaseTrackpagesSettingsVersionEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [BaseTrackpagesSettingsVersionEnum] to int,
/// and [decode] dynamic data back to [BaseTrackpagesSettingsVersionEnum].
class BaseTrackpagesSettingsVersionEnumTypeTransformer {
  factory BaseTrackpagesSettingsVersionEnumTypeTransformer() => _instance ??= const BaseTrackpagesSettingsVersionEnumTypeTransformer._();

  const BaseTrackpagesSettingsVersionEnumTypeTransformer._();

  int encode(BaseTrackpagesSettingsVersionEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a BaseTrackpagesSettingsVersionEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  BaseTrackpagesSettingsVersionEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case 1: return BaseTrackpagesSettingsVersionEnum.number1;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [BaseTrackpagesSettingsVersionEnumTypeTransformer] instance.
  static BaseTrackpagesSettingsVersionEnumTypeTransformer? _instance;
}


