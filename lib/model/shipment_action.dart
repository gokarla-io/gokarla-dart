//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of gokarla;

/// The actions to be taken on a shipment.
class ShipmentAction {
  /// Instantiate a new enum with the provided [value].
  const ShipmentAction._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const submitToAggregators = ShipmentAction._(r'submit_to_aggregators');
  static const reprocessEvents = ShipmentAction._(r'reprocess_events');
  static const fetchHcShipmentUpdates = ShipmentAction._(r'fetch_hc_shipment_updates');

  /// List of all possible values in this [enum][ShipmentAction].
  static const values = <ShipmentAction>[
    submitToAggregators,
    reprocessEvents,
    fetchHcShipmentUpdates,
  ];

  static ShipmentAction? fromJson(dynamic value) => ShipmentActionTypeTransformer().decode(value);

  static List<ShipmentAction> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ShipmentAction>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ShipmentAction.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ShipmentAction] to String,
/// and [decode] dynamic data back to [ShipmentAction].
class ShipmentActionTypeTransformer {
  factory ShipmentActionTypeTransformer() => _instance ??= const ShipmentActionTypeTransformer._();

  const ShipmentActionTypeTransformer._();

  String encode(ShipmentAction data) => data.value;

  /// Decodes a [dynamic value][data] to a ShipmentAction.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ShipmentAction? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'submit_to_aggregators': return ShipmentAction.submitToAggregators;
        case r'reprocess_events': return ShipmentAction.reprocessEvents;
        case r'fetch_hc_shipment_updates': return ShipmentAction.fetchHcShipmentUpdates;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ShipmentActionTypeTransformer] instance.
  static ShipmentActionTypeTransformer? _instance;
}

