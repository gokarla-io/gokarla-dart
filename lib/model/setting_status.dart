//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of gokarla;

/// Status enum.
class SettingStatus {
  /// Instantiate a new enum with the provided [value].
  const SettingStatus._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const disabled = SettingStatus._(r'disabled');
  static const live = SettingStatus._(r'live');
  static const testing = SettingStatus._(r'testing');

  /// List of all possible values in this [enum][SettingStatus].
  static const values = <SettingStatus>[
    disabled,
    live,
    testing,
  ];

  static SettingStatus? fromJson(dynamic value) => SettingStatusTypeTransformer().decode(value);

  static List<SettingStatus> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SettingStatus>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SettingStatus.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [SettingStatus] to String,
/// and [decode] dynamic data back to [SettingStatus].
class SettingStatusTypeTransformer {
  factory SettingStatusTypeTransformer() => _instance ??= const SettingStatusTypeTransformer._();

  const SettingStatusTypeTransformer._();

  String encode(SettingStatus data) => data.value;

  /// Decodes a [dynamic value][data] to a SettingStatus.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  SettingStatus? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'disabled': return SettingStatus.disabled;
        case r'live': return SettingStatus.live;
        case r'testing': return SettingStatus.testing;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [SettingStatusTypeTransformer] instance.
  static SettingStatusTypeTransformer? _instance;
}

