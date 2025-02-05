//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of gokarla;

class ImageResponseDTO {
  /// Returns a new [ImageResponseDTO] instance.
  ImageResponseDTO({
    required this.url,
    required this.imageType,
    required this.shopSlug,
  });

  /// The public url of the uploaded image
  String url;

  /// The type of image uploaded
  ImageType imageType;

  /// The slug of the shop the image belongs to
  String shopSlug;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ImageResponseDTO &&
    other.url == url &&
    other.imageType == imageType &&
    other.shopSlug == shopSlug;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (url.hashCode) +
    (imageType.hashCode) +
    (shopSlug.hashCode);

  @override
  String toString() => 'ImageResponseDTO[url=$url, imageType=$imageType, shopSlug=$shopSlug]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'url'] = this.url;
      json[r'image_type'] = this.imageType;
      json[r'shop_slug'] = this.shopSlug;
    return json;
  }

  /// Returns a new [ImageResponseDTO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ImageResponseDTO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ImageResponseDTO[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ImageResponseDTO[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ImageResponseDTO(
        url: mapValueOfType<String>(json, r'url')!,
        imageType: ImageType.fromJson(json[r'image_type'])!,
        shopSlug: mapValueOfType<String>(json, r'shop_slug')!,
      );
    }
    return null;
  }

  static List<ImageResponseDTO> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ImageResponseDTO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ImageResponseDTO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ImageResponseDTO> mapFromJson(dynamic json) {
    final map = <String, ImageResponseDTO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ImageResponseDTO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ImageResponseDTO-objects as value to a dart map
  static Map<String, List<ImageResponseDTO>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ImageResponseDTO>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ImageResponseDTO.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'url',
    'image_type',
    'shop_slug',
  };
}

