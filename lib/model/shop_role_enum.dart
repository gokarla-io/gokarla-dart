//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of gokarla;

/// The token permission scopes.
class ShopRoleEnum {
  /// Instantiate a new enum with the provided [value].
  const ShopRoleEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const admin = ShopRoleEnum._(r'admin');
  static const editor = ShopRoleEnum._(r'editor');
  static const viewer = ShopRoleEnum._(r'viewer');

  /// List of all possible values in this [enum][ShopRoleEnum].
  static const values = <ShopRoleEnum>[
    admin,
    editor,
    viewer,
  ];

  static ShopRoleEnum? fromJson(dynamic value) => ShopRoleEnumTypeTransformer().decode(value);

  static List<ShopRoleEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ShopRoleEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ShopRoleEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ShopRoleEnum] to String,
/// and [decode] dynamic data back to [ShopRoleEnum].
class ShopRoleEnumTypeTransformer {
  factory ShopRoleEnumTypeTransformer() => _instance ??= const ShopRoleEnumTypeTransformer._();

  const ShopRoleEnumTypeTransformer._();

  String encode(ShopRoleEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ShopRoleEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ShopRoleEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'admin': return ShopRoleEnum.admin;
        case r'editor': return ShopRoleEnum.editor;
        case r'viewer': return ShopRoleEnum.viewer;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ShopRoleEnumTypeTransformer] instance.
  static ShopRoleEnumTypeTransformer? _instance;
}

