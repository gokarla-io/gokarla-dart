//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of gokarla;

/// State of the Campaign based on the start and end date.
class CampaignStatus {
  /// Instantiate a new enum with the provided [value].
  const CampaignStatus._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const active = CampaignStatus._(r'active');
  static const inactive = CampaignStatus._(r'inactive');
  static const scheduled = CampaignStatus._(r'scheduled');
  static const paused = CampaignStatus._(r'paused');

  /// List of all possible values in this [enum][CampaignStatus].
  static const values = <CampaignStatus>[
    active,
    inactive,
    scheduled,
    paused,
  ];

  static CampaignStatus? fromJson(dynamic value) => CampaignStatusTypeTransformer().decode(value);

  static List<CampaignStatus> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CampaignStatus>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CampaignStatus.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [CampaignStatus] to String,
/// and [decode] dynamic data back to [CampaignStatus].
class CampaignStatusTypeTransformer {
  factory CampaignStatusTypeTransformer() => _instance ??= const CampaignStatusTypeTransformer._();

  const CampaignStatusTypeTransformer._();

  String encode(CampaignStatus data) => data.value;

  /// Decodes a [dynamic value][data] to a CampaignStatus.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  CampaignStatus? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'active': return CampaignStatus.active;
        case r'inactive': return CampaignStatus.inactive;
        case r'scheduled': return CampaignStatus.scheduled;
        case r'paused': return CampaignStatus.paused;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [CampaignStatusTypeTransformer] instance.
  static CampaignStatusTypeTransformer? _instance;
}

