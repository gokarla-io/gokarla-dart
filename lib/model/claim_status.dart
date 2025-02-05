//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of gokarla;

/// Type status for a claim.
class ClaimStatus {
  /// Instantiate a new enum with the provided [value].
  const ClaimStatus._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const pending = ClaimStatus._(r'pending');
  static const accepted = ClaimStatus._(r'accepted');
  static const rejected = ClaimStatus._(r'rejected');
  static const closed = ClaimStatus._(r'closed');

  /// List of all possible values in this [enum][ClaimStatus].
  static const values = <ClaimStatus>[
    pending,
    accepted,
    rejected,
    closed,
  ];

  static ClaimStatus? fromJson(dynamic value) => ClaimStatusTypeTransformer().decode(value);

  static List<ClaimStatus> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ClaimStatus>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ClaimStatus.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ClaimStatus] to String,
/// and [decode] dynamic data back to [ClaimStatus].
class ClaimStatusTypeTransformer {
  factory ClaimStatusTypeTransformer() => _instance ??= const ClaimStatusTypeTransformer._();

  const ClaimStatusTypeTransformer._();

  String encode(ClaimStatus data) => data.value;

  /// Decodes a [dynamic value][data] to a ClaimStatus.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ClaimStatus? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'pending': return ClaimStatus.pending;
        case r'accepted': return ClaimStatus.accepted;
        case r'rejected': return ClaimStatus.rejected;
        case r'closed': return ClaimStatus.closed;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ClaimStatusTypeTransformer] instance.
  static ClaimStatusTypeTransformer? _instance;
}

