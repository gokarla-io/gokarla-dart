//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of gokarla;

/// Type of image that is allowed by the system.
class ImageType {
  /// Instantiate a new enum with the provided [value].
  const ImageType._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const background = ImageType._(r'background');
  static const claim = ImageType._(r'claim');
  static const logo = ImageType._(r'logo');
  static const signature = ImageType._(r'signature');
  static const product = ImageType._(r'product');
  static const voucher = ImageType._(r'voucher');

  /// List of all possible values in this [enum][ImageType].
  static const values = <ImageType>[
    background,
    claim,
    logo,
    signature,
    product,
    voucher,
  ];

  static ImageType? fromJson(dynamic value) => ImageTypeTypeTransformer().decode(value);

  static List<ImageType> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ImageType>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ImageType.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ImageType] to String,
/// and [decode] dynamic data back to [ImageType].
class ImageTypeTypeTransformer {
  factory ImageTypeTypeTransformer() => _instance ??= const ImageTypeTypeTransformer._();

  const ImageTypeTypeTransformer._();

  String encode(ImageType data) => data.value;

  /// Decodes a [dynamic value][data] to a ImageType.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ImageType? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'background': return ImageType.background;
        case r'claim': return ImageType.claim;
        case r'logo': return ImageType.logo;
        case r'signature': return ImageType.signature;
        case r'product': return ImageType.product;
        case r'voucher': return ImageType.voucher;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ImageTypeTypeTransformer] instance.
  static ImageTypeTypeTransformer? _instance;
}

