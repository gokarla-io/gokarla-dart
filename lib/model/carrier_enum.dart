//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of gokarla;

/// All Carriers Supported.
class CarrierEnum {
  /// Instantiate a new enum with the provided [value].
  const CarrierEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const amz = CarrierEnum._(r'amz');
  static const brt = CarrierEnum._(r'brt');
  static const depost = CarrierEnum._(r'depost');
  static const dhl = CarrierEnum._(r'dhl');
  static const dhlexp = CarrierEnum._(r'dhlexp');
  static const dhlOld = CarrierEnum._(r'dhl_old');
  static const dhl2man = CarrierEnum._(r'dhl2man');
  static const dpd = CarrierEnum._(r'dpd');
  static const dpdn = CarrierEnum._(r'dpdn');
  static const dpduk = CarrierEnum._(r'dpduk');
  static const gls = CarrierEnum._(r'gls');
  static const glsEs = CarrierEnum._(r'gls_es');
  static const goexp = CarrierEnum._(r'goexp');
  static const hrs = CarrierEnum._(r'hrs');
  static const postat = CarrierEnum._(r'postat');
  static const rhe = CarrierEnum._(r'rhe');
  static const royalmail = CarrierEnum._(r'royalmail');
  static const swisspost = CarrierEnum._(r'swisspost');
  static const ups = CarrierEnum._(r'ups');
  static const bpost = CarrierEnum._(r'bpost');
  static const dao = CarrierEnum._(r'dao');
  static const anpost = CarrierEnum._(r'anpost');
  static const bring = CarrierEnum._(r'bring');
  static const posti = CarrierEnum._(r'posti');
  static const postnlInter = CarrierEnum._(r'postnl_inter');
  static const usps = CarrierEnum._(r'usps');
  static const fedex = CarrierEnum._(r'fedex');
  static const postnord = CarrierEnum._(r'postnord');
  static const parcelone = CarrierEnum._(r'parcelone');
  static const dachser = CarrierEnum._(r'dachser');
  static const asendiaDe = CarrierEnum._(r'asendia_de');

  /// List of all possible values in this [enum][CarrierEnum].
  static const values = <CarrierEnum>[
    amz,
    brt,
    depost,
    dhl,
    dhlexp,
    dhlOld,
    dhl2man,
    dpd,
    dpdn,
    dpduk,
    gls,
    glsEs,
    goexp,
    hrs,
    postat,
    rhe,
    royalmail,
    swisspost,
    ups,
    bpost,
    dao,
    anpost,
    bring,
    posti,
    postnlInter,
    usps,
    fedex,
    postnord,
    parcelone,
    dachser,
    asendiaDe,
  ];

  static CarrierEnum? fromJson(dynamic value) => CarrierEnumTypeTransformer().decode(value);

  static List<CarrierEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CarrierEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CarrierEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [CarrierEnum] to String,
/// and [decode] dynamic data back to [CarrierEnum].
class CarrierEnumTypeTransformer {
  factory CarrierEnumTypeTransformer() => _instance ??= const CarrierEnumTypeTransformer._();

  const CarrierEnumTypeTransformer._();

  String encode(CarrierEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a CarrierEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  CarrierEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'amz': return CarrierEnum.amz;
        case r'brt': return CarrierEnum.brt;
        case r'depost': return CarrierEnum.depost;
        case r'dhl': return CarrierEnum.dhl;
        case r'dhlexp': return CarrierEnum.dhlexp;
        case r'dhl_old': return CarrierEnum.dhlOld;
        case r'dhl2man': return CarrierEnum.dhl2man;
        case r'dpd': return CarrierEnum.dpd;
        case r'dpdn': return CarrierEnum.dpdn;
        case r'dpduk': return CarrierEnum.dpduk;
        case r'gls': return CarrierEnum.gls;
        case r'gls_es': return CarrierEnum.glsEs;
        case r'goexp': return CarrierEnum.goexp;
        case r'hrs': return CarrierEnum.hrs;
        case r'postat': return CarrierEnum.postat;
        case r'rhe': return CarrierEnum.rhe;
        case r'royalmail': return CarrierEnum.royalmail;
        case r'swisspost': return CarrierEnum.swisspost;
        case r'ups': return CarrierEnum.ups;
        case r'bpost': return CarrierEnum.bpost;
        case r'dao': return CarrierEnum.dao;
        case r'anpost': return CarrierEnum.anpost;
        case r'bring': return CarrierEnum.bring;
        case r'posti': return CarrierEnum.posti;
        case r'postnl_inter': return CarrierEnum.postnlInter;
        case r'usps': return CarrierEnum.usps;
        case r'fedex': return CarrierEnum.fedex;
        case r'postnord': return CarrierEnum.postnord;
        case r'parcelone': return CarrierEnum.parcelone;
        case r'dachser': return CarrierEnum.dachser;
        case r'asendia_de': return CarrierEnum.asendiaDe;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [CarrierEnumTypeTransformer] instance.
  static CarrierEnumTypeTransformer? _instance;
}

