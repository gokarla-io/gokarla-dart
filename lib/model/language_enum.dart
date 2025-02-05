//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of gokarla;

/// Supported languages.
class LanguageEnum {
  /// Instantiate a new enum with the provided [value].
  const LanguageEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const dk = LanguageEnum._(r'dk');
  static const nl = LanguageEnum._(r'nl');
  static const en = LanguageEnum._(r'en');
  static const fr = LanguageEnum._(r'fr');
  static const de = LanguageEnum._(r'de');
  static const it = LanguageEnum._(r'it');
  static const es = LanguageEnum._(r'es');

  /// List of all possible values in this [enum][LanguageEnum].
  static const values = <LanguageEnum>[
    dk,
    nl,
    en,
    fr,
    de,
    it,
    es,
  ];

  static LanguageEnum? fromJson(dynamic value) => LanguageEnumTypeTransformer().decode(value);

  static List<LanguageEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <LanguageEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = LanguageEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [LanguageEnum] to String,
/// and [decode] dynamic data back to [LanguageEnum].
class LanguageEnumTypeTransformer {
  factory LanguageEnumTypeTransformer() => _instance ??= const LanguageEnumTypeTransformer._();

  const LanguageEnumTypeTransformer._();

  String encode(LanguageEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a LanguageEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  LanguageEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'dk': return LanguageEnum.dk;
        case r'nl': return LanguageEnum.nl;
        case r'en': return LanguageEnum.en;
        case r'fr': return LanguageEnum.fr;
        case r'de': return LanguageEnum.de;
        case r'it': return LanguageEnum.it;
        case r'es': return LanguageEnum.es;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [LanguageEnumTypeTransformer] instance.
  static LanguageEnumTypeTransformer? _instance;
}

