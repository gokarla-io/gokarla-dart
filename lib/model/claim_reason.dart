//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of gokarla;

/// Type reason for a claim.
class ClaimReason {
  /// Instantiate a new enum with the provided [value].
  const ClaimReason._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const partialDamage = ClaimReason._(r'partial_damage');
  static const damage = ClaimReason._(r'damage');
  static const investigation = ClaimReason._(r'investigation');
  static const support = ClaimReason._(r'support');
  static const return_ = ClaimReason._(r'return');

  /// List of all possible values in this [enum][ClaimReason].
  static const values = <ClaimReason>[
    partialDamage,
    damage,
    investigation,
    support,
    return_,
  ];

  static ClaimReason? fromJson(dynamic value) => ClaimReasonTypeTransformer().decode(value);

  static List<ClaimReason> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ClaimReason>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ClaimReason.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ClaimReason] to String,
/// and [decode] dynamic data back to [ClaimReason].
class ClaimReasonTypeTransformer {
  factory ClaimReasonTypeTransformer() => _instance ??= const ClaimReasonTypeTransformer._();

  const ClaimReasonTypeTransformer._();

  String encode(ClaimReason data) => data.value;

  /// Decodes a [dynamic value][data] to a ClaimReason.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ClaimReason? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'partial_damage': return ClaimReason.partialDamage;
        case r'damage': return ClaimReason.damage;
        case r'investigation': return ClaimReason.investigation;
        case r'support': return ClaimReason.support;
        case r'return': return ClaimReason.return_;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ClaimReasonTypeTransformer] instance.
  static ClaimReasonTypeTransformer? _instance;
}

