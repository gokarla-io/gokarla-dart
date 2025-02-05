//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of gokarla;

/// Type of errors that will be returned to the user.
class ErrorTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const ErrorTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const apiError = ErrorTypeEnum._(r'api_error');
  static const invalidRequestError = ErrorTypeEnum._(r'invalid_request_error');

  /// List of all possible values in this [enum][ErrorTypeEnum].
  static const values = <ErrorTypeEnum>[
    apiError,
    invalidRequestError,
  ];

  static ErrorTypeEnum? fromJson(dynamic value) => ErrorTypeEnumTypeTransformer().decode(value);

  static List<ErrorTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ErrorTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ErrorTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ErrorTypeEnum] to String,
/// and [decode] dynamic data back to [ErrorTypeEnum].
class ErrorTypeEnumTypeTransformer {
  factory ErrorTypeEnumTypeTransformer() => _instance ??= const ErrorTypeEnumTypeTransformer._();

  const ErrorTypeEnumTypeTransformer._();

  String encode(ErrorTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ErrorTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ErrorTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'api_error': return ErrorTypeEnum.apiError;
        case r'invalid_request_error': return ErrorTypeEnum.invalidRequestError;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ErrorTypeEnumTypeTransformer] instance.
  static ErrorTypeEnumTypeTransformer? _instance;
}

