//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of gokarla;

/// Pickup Type.
class PickUpTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const PickUpTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const shop = PickUpTypeEnum._(r'shop');
  static const neighbor = PickUpTypeEnum._(r'neighbor');
  static const locker = PickUpTypeEnum._(r'locker');
  static const letterbox = PickUpTypeEnum._(r'letterbox');

  /// List of all possible values in this [enum][PickUpTypeEnum].
  static const values = <PickUpTypeEnum>[
    shop,
    neighbor,
    locker,
    letterbox,
  ];

  static PickUpTypeEnum? fromJson(dynamic value) => PickUpTypeEnumTypeTransformer().decode(value);

  static List<PickUpTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PickUpTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PickUpTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [PickUpTypeEnum] to String,
/// and [decode] dynamic data back to [PickUpTypeEnum].
class PickUpTypeEnumTypeTransformer {
  factory PickUpTypeEnumTypeTransformer() => _instance ??= const PickUpTypeEnumTypeTransformer._();

  const PickUpTypeEnumTypeTransformer._();

  String encode(PickUpTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a PickUpTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  PickUpTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'shop': return PickUpTypeEnum.shop;
        case r'neighbor': return PickUpTypeEnum.neighbor;
        case r'locker': return PickUpTypeEnum.locker;
        case r'letterbox': return PickUpTypeEnum.letterbox;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [PickUpTypeEnumTypeTransformer] instance.
  static PickUpTypeEnumTypeTransformer? _instance;
}

