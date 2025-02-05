//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of gokarla;

/// Enum for identifying the feature flag community.
class FeatureCommunity {
  /// Instantiate a new enum with the provided [value].
  const FeatureCommunity._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const alpha = FeatureCommunity._(r'alpha');
  static const beta = FeatureCommunity._(r'beta');
  static const live = FeatureCommunity._(r'live');

  /// List of all possible values in this [enum][FeatureCommunity].
  static const values = <FeatureCommunity>[
    alpha,
    beta,
    live,
  ];

  static FeatureCommunity? fromJson(dynamic value) => FeatureCommunityTypeTransformer().decode(value);

  static List<FeatureCommunity> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <FeatureCommunity>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = FeatureCommunity.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [FeatureCommunity] to String,
/// and [decode] dynamic data back to [FeatureCommunity].
class FeatureCommunityTypeTransformer {
  factory FeatureCommunityTypeTransformer() => _instance ??= const FeatureCommunityTypeTransformer._();

  const FeatureCommunityTypeTransformer._();

  String encode(FeatureCommunity data) => data.value;

  /// Decodes a [dynamic value][data] to a FeatureCommunity.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  FeatureCommunity? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'alpha': return FeatureCommunity.alpha;
        case r'beta': return FeatureCommunity.beta;
        case r'live': return FeatureCommunity.live;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [FeatureCommunityTypeTransformer] instance.
  static FeatureCommunityTypeTransformer? _instance;
}

