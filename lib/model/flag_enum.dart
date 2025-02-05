//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of gokarla;

/// Karla internal shipment flag.  Raises the possibility of failure or delay when not normal. Options: normal, delay, error.
class FlagEnum {
  /// Instantiate a new enum with the provided [value].
  const FlagEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const normal = FlagEnum._(r'normal');
  static const delay = FlagEnum._(r'delay');
  static const error = FlagEnum._(r'error');

  /// List of all possible values in this [enum][FlagEnum].
  static const values = <FlagEnum>[
    normal,
    delay,
    error,
  ];

  static FlagEnum? fromJson(dynamic value) => FlagEnumTypeTransformer().decode(value);

  static List<FlagEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <FlagEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = FlagEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [FlagEnum] to String,
/// and [decode] dynamic data back to [FlagEnum].
class FlagEnumTypeTransformer {
  factory FlagEnumTypeTransformer() => _instance ??= const FlagEnumTypeTransformer._();

  const FlagEnumTypeTransformer._();

  String encode(FlagEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a FlagEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  FlagEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'normal': return FlagEnum.normal;
        case r'delay': return FlagEnum.delay;
        case r'error': return FlagEnum.error;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [FlagEnumTypeTransformer] instance.
  static FlagEnumTypeTransformer? _instance;
}

