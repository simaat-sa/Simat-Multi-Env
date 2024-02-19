// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tennat_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TenantModel _$TenantModelFromJson(Map<String, dynamic> json) {
  return _TenantModel.fromJson(json);
}

/// @nodoc
mixin _$TenantModel {
  @JsonKey(name: 'tts_id', defaultValue: "")
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'prop_id', defaultValue: "")
  String get propId => throw _privateConstructorUsedError;
  @JsonKey(name: 'tts_code')
  String? get code => throw _privateConstructorUsedError;
  @JsonKey(name: 'are_desc_fo', defaultValue: "")
  String get unitName => throw _privateConstructorUsedError;
  @JsonKey(name: 'cal_type')
  DateTypes get dateType => throw _privateConstructorUsedError;
  @JsonKey(name: 'tts_end_date_hj', defaultValue: "")
  String get expireDataTimeHj => throw _privateConstructorUsedError;
  @JsonKey(name: 'tts_end_date_dgr', defaultValue: "")
  String get expireDataTimeStamp => throw _privateConstructorUsedError;
  @JsonKey(name: 'amt_due', defaultValue: "0")
  String get price => throw _privateConstructorUsedError;
  @JsonKey(name: 'tts_amt', defaultValue: "0")
  String get priceWithoutTax => throw _privateConstructorUsedError;
  @JsonKey(name: 'tts_validity')
  TenantVisibility get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'contract_type')
  ContractTypes get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'prop_lat', defaultValue: "")
  String get propLat => throw _privateConstructorUsedError;
  @JsonKey(name: 'prop_lng', defaultValue: "")
  String get propLng => throw _privateConstructorUsedError;
  @JsonKey(name: 'prop_img')
  String? get propImg => throw _privateConstructorUsedError;
  @JsonKey(name: 'prop_city', defaultValue: "")
  String get propCity => throw _privateConstructorUsedError;
  @JsonKey(name: 'prop_region', defaultValue: "")
  String get propRegion => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TenantModelCopyWith<TenantModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TenantModelCopyWith<$Res> {
  factory $TenantModelCopyWith(
          TenantModel value, $Res Function(TenantModel) then) =
      _$TenantModelCopyWithImpl<$Res, TenantModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'tts_id', defaultValue: "") String id,
      @JsonKey(name: 'prop_id', defaultValue: "") String propId,
      @JsonKey(name: 'tts_code') String? code,
      @JsonKey(name: 'are_desc_fo', defaultValue: "") String unitName,
      @JsonKey(name: 'cal_type') DateTypes dateType,
      @JsonKey(name: 'tts_end_date_hj', defaultValue: "")
      String expireDataTimeHj,
      @JsonKey(name: 'tts_end_date_dgr', defaultValue: "")
      String expireDataTimeStamp,
      @JsonKey(name: 'amt_due', defaultValue: "0") String price,
      @JsonKey(name: 'tts_amt', defaultValue: "0") String priceWithoutTax,
      @JsonKey(name: 'tts_validity') TenantVisibility status,
      @JsonKey(name: 'contract_type') ContractTypes type,
      @JsonKey(name: 'prop_lat', defaultValue: "") String propLat,
      @JsonKey(name: 'prop_lng', defaultValue: "") String propLng,
      @JsonKey(name: 'prop_img') String? propImg,
      @JsonKey(name: 'prop_city', defaultValue: "") String propCity,
      @JsonKey(name: 'prop_region', defaultValue: "") String propRegion});
}

/// @nodoc
class _$TenantModelCopyWithImpl<$Res, $Val extends TenantModel>
    implements $TenantModelCopyWith<$Res> {
  _$TenantModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? propId = null,
    Object? code = freezed,
    Object? unitName = null,
    Object? dateType = null,
    Object? expireDataTimeHj = null,
    Object? expireDataTimeStamp = null,
    Object? price = null,
    Object? priceWithoutTax = null,
    Object? status = null,
    Object? type = null,
    Object? propLat = null,
    Object? propLng = null,
    Object? propImg = freezed,
    Object? propCity = null,
    Object? propRegion = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      propId: null == propId
          ? _value.propId
          : propId // ignore: cast_nullable_to_non_nullable
              as String,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      unitName: null == unitName
          ? _value.unitName
          : unitName // ignore: cast_nullable_to_non_nullable
              as String,
      dateType: null == dateType
          ? _value.dateType
          : dateType // ignore: cast_nullable_to_non_nullable
              as DateTypes,
      expireDataTimeHj: null == expireDataTimeHj
          ? _value.expireDataTimeHj
          : expireDataTimeHj // ignore: cast_nullable_to_non_nullable
              as String,
      expireDataTimeStamp: null == expireDataTimeStamp
          ? _value.expireDataTimeStamp
          : expireDataTimeStamp // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      priceWithoutTax: null == priceWithoutTax
          ? _value.priceWithoutTax
          : priceWithoutTax // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as TenantVisibility,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ContractTypes,
      propLat: null == propLat
          ? _value.propLat
          : propLat // ignore: cast_nullable_to_non_nullable
              as String,
      propLng: null == propLng
          ? _value.propLng
          : propLng // ignore: cast_nullable_to_non_nullable
              as String,
      propImg: freezed == propImg
          ? _value.propImg
          : propImg // ignore: cast_nullable_to_non_nullable
              as String?,
      propCity: null == propCity
          ? _value.propCity
          : propCity // ignore: cast_nullable_to_non_nullable
              as String,
      propRegion: null == propRegion
          ? _value.propRegion
          : propRegion // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TenantModelImplCopyWith<$Res>
    implements $TenantModelCopyWith<$Res> {
  factory _$$TenantModelImplCopyWith(
          _$TenantModelImpl value, $Res Function(_$TenantModelImpl) then) =
      __$$TenantModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'tts_id', defaultValue: "") String id,
      @JsonKey(name: 'prop_id', defaultValue: "") String propId,
      @JsonKey(name: 'tts_code') String? code,
      @JsonKey(name: 'are_desc_fo', defaultValue: "") String unitName,
      @JsonKey(name: 'cal_type') DateTypes dateType,
      @JsonKey(name: 'tts_end_date_hj', defaultValue: "")
      String expireDataTimeHj,
      @JsonKey(name: 'tts_end_date_dgr', defaultValue: "")
      String expireDataTimeStamp,
      @JsonKey(name: 'amt_due', defaultValue: "0") String price,
      @JsonKey(name: 'tts_amt', defaultValue: "0") String priceWithoutTax,
      @JsonKey(name: 'tts_validity') TenantVisibility status,
      @JsonKey(name: 'contract_type') ContractTypes type,
      @JsonKey(name: 'prop_lat', defaultValue: "") String propLat,
      @JsonKey(name: 'prop_lng', defaultValue: "") String propLng,
      @JsonKey(name: 'prop_img') String? propImg,
      @JsonKey(name: 'prop_city', defaultValue: "") String propCity,
      @JsonKey(name: 'prop_region', defaultValue: "") String propRegion});
}

/// @nodoc
class __$$TenantModelImplCopyWithImpl<$Res>
    extends _$TenantModelCopyWithImpl<$Res, _$TenantModelImpl>
    implements _$$TenantModelImplCopyWith<$Res> {
  __$$TenantModelImplCopyWithImpl(
      _$TenantModelImpl _value, $Res Function(_$TenantModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? propId = null,
    Object? code = freezed,
    Object? unitName = null,
    Object? dateType = null,
    Object? expireDataTimeHj = null,
    Object? expireDataTimeStamp = null,
    Object? price = null,
    Object? priceWithoutTax = null,
    Object? status = null,
    Object? type = null,
    Object? propLat = null,
    Object? propLng = null,
    Object? propImg = freezed,
    Object? propCity = null,
    Object? propRegion = null,
  }) {
    return _then(_$TenantModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      propId: null == propId
          ? _value.propId
          : propId // ignore: cast_nullable_to_non_nullable
              as String,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      unitName: null == unitName
          ? _value.unitName
          : unitName // ignore: cast_nullable_to_non_nullable
              as String,
      dateType: null == dateType
          ? _value.dateType
          : dateType // ignore: cast_nullable_to_non_nullable
              as DateTypes,
      expireDataTimeHj: null == expireDataTimeHj
          ? _value.expireDataTimeHj
          : expireDataTimeHj // ignore: cast_nullable_to_non_nullable
              as String,
      expireDataTimeStamp: null == expireDataTimeStamp
          ? _value.expireDataTimeStamp
          : expireDataTimeStamp // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      priceWithoutTax: null == priceWithoutTax
          ? _value.priceWithoutTax
          : priceWithoutTax // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as TenantVisibility,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ContractTypes,
      propLat: null == propLat
          ? _value.propLat
          : propLat // ignore: cast_nullable_to_non_nullable
              as String,
      propLng: null == propLng
          ? _value.propLng
          : propLng // ignore: cast_nullable_to_non_nullable
              as String,
      propImg: freezed == propImg
          ? _value.propImg
          : propImg // ignore: cast_nullable_to_non_nullable
              as String?,
      propCity: null == propCity
          ? _value.propCity
          : propCity // ignore: cast_nullable_to_non_nullable
              as String,
      propRegion: null == propRegion
          ? _value.propRegion
          : propRegion // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$TenantModelImpl extends _TenantModel {
  _$TenantModelImpl(
      {@JsonKey(name: 'tts_id', defaultValue: "") required this.id,
      @JsonKey(name: 'prop_id', defaultValue: "") required this.propId,
      @JsonKey(name: 'tts_code') this.code,
      @JsonKey(name: 'are_desc_fo', defaultValue: "") required this.unitName,
      @JsonKey(name: 'cal_type') required this.dateType,
      @JsonKey(name: 'tts_end_date_hj', defaultValue: "")
      required this.expireDataTimeHj,
      @JsonKey(name: 'tts_end_date_dgr', defaultValue: "")
      required this.expireDataTimeStamp,
      @JsonKey(name: 'amt_due', defaultValue: "0") required this.price,
      @JsonKey(name: 'tts_amt', defaultValue: "0")
      required this.priceWithoutTax,
      @JsonKey(name: 'tts_validity') required this.status,
      @JsonKey(name: 'contract_type') required this.type,
      @JsonKey(name: 'prop_lat', defaultValue: "") required this.propLat,
      @JsonKey(name: 'prop_lng', defaultValue: "") required this.propLng,
      @JsonKey(name: 'prop_img') this.propImg,
      @JsonKey(name: 'prop_city', defaultValue: "") required this.propCity,
      @JsonKey(name: 'prop_region', defaultValue: "") required this.propRegion})
      : super._();

  factory _$TenantModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TenantModelImplFromJson(json);

  @override
  @JsonKey(name: 'tts_id', defaultValue: "")
  final String id;
  @override
  @JsonKey(name: 'prop_id', defaultValue: "")
  final String propId;
  @override
  @JsonKey(name: 'tts_code')
  final String? code;
  @override
  @JsonKey(name: 'are_desc_fo', defaultValue: "")
  final String unitName;
  @override
  @JsonKey(name: 'cal_type')
  final DateTypes dateType;
  @override
  @JsonKey(name: 'tts_end_date_hj', defaultValue: "")
  final String expireDataTimeHj;
  @override
  @JsonKey(name: 'tts_end_date_dgr', defaultValue: "")
  final String expireDataTimeStamp;
  @override
  @JsonKey(name: 'amt_due', defaultValue: "0")
  final String price;
  @override
  @JsonKey(name: 'tts_amt', defaultValue: "0")
  final String priceWithoutTax;
  @override
  @JsonKey(name: 'tts_validity')
  final TenantVisibility status;
  @override
  @JsonKey(name: 'contract_type')
  final ContractTypes type;
  @override
  @JsonKey(name: 'prop_lat', defaultValue: "")
  final String propLat;
  @override
  @JsonKey(name: 'prop_lng', defaultValue: "")
  final String propLng;
  @override
  @JsonKey(name: 'prop_img')
  final String? propImg;
  @override
  @JsonKey(name: 'prop_city', defaultValue: "")
  final String propCity;
  @override
  @JsonKey(name: 'prop_region', defaultValue: "")
  final String propRegion;

  @override
  String toString() {
    return 'TenantModel(id: $id, propId: $propId, code: $code, unitName: $unitName, dateType: $dateType, expireDataTimeHj: $expireDataTimeHj, expireDataTimeStamp: $expireDataTimeStamp, price: $price, priceWithoutTax: $priceWithoutTax, status: $status, type: $type, propLat: $propLat, propLng: $propLng, propImg: $propImg, propCity: $propCity, propRegion: $propRegion)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TenantModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.propId, propId) || other.propId == propId) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.unitName, unitName) ||
                other.unitName == unitName) &&
            (identical(other.dateType, dateType) ||
                other.dateType == dateType) &&
            (identical(other.expireDataTimeHj, expireDataTimeHj) ||
                other.expireDataTimeHj == expireDataTimeHj) &&
            (identical(other.expireDataTimeStamp, expireDataTimeStamp) ||
                other.expireDataTimeStamp == expireDataTimeStamp) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.priceWithoutTax, priceWithoutTax) ||
                other.priceWithoutTax == priceWithoutTax) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.propLat, propLat) || other.propLat == propLat) &&
            (identical(other.propLng, propLng) || other.propLng == propLng) &&
            (identical(other.propImg, propImg) || other.propImg == propImg) &&
            (identical(other.propCity, propCity) ||
                other.propCity == propCity) &&
            (identical(other.propRegion, propRegion) ||
                other.propRegion == propRegion));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      propId,
      code,
      unitName,
      dateType,
      expireDataTimeHj,
      expireDataTimeStamp,
      price,
      priceWithoutTax,
      status,
      type,
      propLat,
      propLng,
      propImg,
      propCity,
      propRegion);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TenantModelImplCopyWith<_$TenantModelImpl> get copyWith =>
      __$$TenantModelImplCopyWithImpl<_$TenantModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TenantModelImplToJson(
      this,
    );
  }
}

abstract class _TenantModel extends TenantModel {
  factory _TenantModel(
      {@JsonKey(name: 'tts_id', defaultValue: "") required final String id,
      @JsonKey(name: 'prop_id', defaultValue: "") required final String propId,
      @JsonKey(name: 'tts_code') final String? code,
      @JsonKey(name: 'are_desc_fo', defaultValue: "")
      required final String unitName,
      @JsonKey(name: 'cal_type') required final DateTypes dateType,
      @JsonKey(name: 'tts_end_date_hj', defaultValue: "")
      required final String expireDataTimeHj,
      @JsonKey(name: 'tts_end_date_dgr', defaultValue: "")
      required final String expireDataTimeStamp,
      @JsonKey(name: 'amt_due', defaultValue: "0") required final String price,
      @JsonKey(name: 'tts_amt', defaultValue: "0")
      required final String priceWithoutTax,
      @JsonKey(name: 'tts_validity') required final TenantVisibility status,
      @JsonKey(name: 'contract_type') required final ContractTypes type,
      @JsonKey(name: 'prop_lat', defaultValue: "")
      required final String propLat,
      @JsonKey(name: 'prop_lng', defaultValue: "")
      required final String propLng,
      @JsonKey(name: 'prop_img') final String? propImg,
      @JsonKey(name: 'prop_city', defaultValue: "")
      required final String propCity,
      @JsonKey(name: 'prop_region', defaultValue: "")
      required final String propRegion}) = _$TenantModelImpl;
  _TenantModel._() : super._();

  factory _TenantModel.fromJson(Map<String, dynamic> json) =
      _$TenantModelImpl.fromJson;

  @override
  @JsonKey(name: 'tts_id', defaultValue: "")
  String get id;
  @override
  @JsonKey(name: 'prop_id', defaultValue: "")
  String get propId;
  @override
  @JsonKey(name: 'tts_code')
  String? get code;
  @override
  @JsonKey(name: 'are_desc_fo', defaultValue: "")
  String get unitName;
  @override
  @JsonKey(name: 'cal_type')
  DateTypes get dateType;
  @override
  @JsonKey(name: 'tts_end_date_hj', defaultValue: "")
  String get expireDataTimeHj;
  @override
  @JsonKey(name: 'tts_end_date_dgr', defaultValue: "")
  String get expireDataTimeStamp;
  @override
  @JsonKey(name: 'amt_due', defaultValue: "0")
  String get price;
  @override
  @JsonKey(name: 'tts_amt', defaultValue: "0")
  String get priceWithoutTax;
  @override
  @JsonKey(name: 'tts_validity')
  TenantVisibility get status;
  @override
  @JsonKey(name: 'contract_type')
  ContractTypes get type;
  @override
  @JsonKey(name: 'prop_lat', defaultValue: "")
  String get propLat;
  @override
  @JsonKey(name: 'prop_lng', defaultValue: "")
  String get propLng;
  @override
  @JsonKey(name: 'prop_img')
  String? get propImg;
  @override
  @JsonKey(name: 'prop_city', defaultValue: "")
  String get propCity;
  @override
  @JsonKey(name: 'prop_region', defaultValue: "")
  String get propRegion;
  @override
  @JsonKey(ignore: true)
  _$$TenantModelImplCopyWith<_$TenantModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
