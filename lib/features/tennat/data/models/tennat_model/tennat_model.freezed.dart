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
  @JsonKey(name: 'prop_id')
  String get propId => throw _privateConstructorUsedError;
  @JsonKey(name: 'tts_code')
  String? get code => throw _privateConstructorUsedError;
  @JsonKey(name: 'are_desc_fo')
  String get unitName => throw _privateConstructorUsedError;
  @JsonKey(name: 'cal_type')
  DateTypes get dateType => throw _privateConstructorUsedError;
  @JsonKey(name: 'tts_end_date_hj')
  String get dataTimeHj => throw _privateConstructorUsedError;
  @JsonKey(name: 'tts_end_date_dgr')
  String get dataTimeStamp => throw _privateConstructorUsedError;
  @JsonKey(name: 'amt_due', defaultValue: "0")
  String get price => throw _privateConstructorUsedError;
  @JsonKey(name: 'tts_validity')
  TenantVisibility get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'contract_type')
  ContractTypes get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'prop_lat')
  String get propLat => throw _privateConstructorUsedError;
  @JsonKey(name: 'prop_lng')
  String get propLng => throw _privateConstructorUsedError;
  @JsonKey(name: 'prop_img')
  String? get propImg => throw _privateConstructorUsedError;
  @JsonKey(name: 'prop_city')
  String get propCity => throw _privateConstructorUsedError;
  @JsonKey(name: 'prop_region')
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
      {@JsonKey(name: 'prop_id') String propId,
      @JsonKey(name: 'tts_code') String? code,
      @JsonKey(name: 'are_desc_fo') String unitName,
      @JsonKey(name: 'cal_type') DateTypes dateType,
      @JsonKey(name: 'tts_end_date_hj') String dataTimeHj,
      @JsonKey(name: 'tts_end_date_dgr') String dataTimeStamp,
      @JsonKey(name: 'amt_due', defaultValue: "0") String price,
      @JsonKey(name: 'tts_validity') TenantVisibility status,
      @JsonKey(name: 'contract_type') ContractTypes type,
      @JsonKey(name: 'prop_lat') String propLat,
      @JsonKey(name: 'prop_lng') String propLng,
      @JsonKey(name: 'prop_img') String? propImg,
      @JsonKey(name: 'prop_city') String propCity,
      @JsonKey(name: 'prop_region') String propRegion});
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
    Object? propId = null,
    Object? code = freezed,
    Object? unitName = null,
    Object? dateType = null,
    Object? dataTimeHj = null,
    Object? dataTimeStamp = null,
    Object? price = null,
    Object? status = null,
    Object? type = null,
    Object? propLat = null,
    Object? propLng = null,
    Object? propImg = freezed,
    Object? propCity = null,
    Object? propRegion = null,
  }) {
    return _then(_value.copyWith(
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
      dataTimeHj: null == dataTimeHj
          ? _value.dataTimeHj
          : dataTimeHj // ignore: cast_nullable_to_non_nullable
              as String,
      dataTimeStamp: null == dataTimeStamp
          ? _value.dataTimeStamp
          : dataTimeStamp // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
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
      {@JsonKey(name: 'prop_id') String propId,
      @JsonKey(name: 'tts_code') String? code,
      @JsonKey(name: 'are_desc_fo') String unitName,
      @JsonKey(name: 'cal_type') DateTypes dateType,
      @JsonKey(name: 'tts_end_date_hj') String dataTimeHj,
      @JsonKey(name: 'tts_end_date_dgr') String dataTimeStamp,
      @JsonKey(name: 'amt_due', defaultValue: "0") String price,
      @JsonKey(name: 'tts_validity') TenantVisibility status,
      @JsonKey(name: 'contract_type') ContractTypes type,
      @JsonKey(name: 'prop_lat') String propLat,
      @JsonKey(name: 'prop_lng') String propLng,
      @JsonKey(name: 'prop_img') String? propImg,
      @JsonKey(name: 'prop_city') String propCity,
      @JsonKey(name: 'prop_region') String propRegion});
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
    Object? propId = null,
    Object? code = freezed,
    Object? unitName = null,
    Object? dateType = null,
    Object? dataTimeHj = null,
    Object? dataTimeStamp = null,
    Object? price = null,
    Object? status = null,
    Object? type = null,
    Object? propLat = null,
    Object? propLng = null,
    Object? propImg = freezed,
    Object? propCity = null,
    Object? propRegion = null,
  }) {
    return _then(_$TenantModelImpl(
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
      dataTimeHj: null == dataTimeHj
          ? _value.dataTimeHj
          : dataTimeHj // ignore: cast_nullable_to_non_nullable
              as String,
      dataTimeStamp: null == dataTimeStamp
          ? _value.dataTimeStamp
          : dataTimeStamp // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
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
      {@JsonKey(name: 'prop_id') required this.propId,
      @JsonKey(name: 'tts_code') required this.code,
      @JsonKey(name: 'are_desc_fo') required this.unitName,
      @JsonKey(name: 'cal_type') required this.dateType,
      @JsonKey(name: 'tts_end_date_hj') required this.dataTimeHj,
      @JsonKey(name: 'tts_end_date_dgr') required this.dataTimeStamp,
      @JsonKey(name: 'amt_due', defaultValue: "0") required this.price,
      @JsonKey(name: 'tts_validity') required this.status,
      @JsonKey(name: 'contract_type') required this.type,
      @JsonKey(name: 'prop_lat') required this.propLat,
      @JsonKey(name: 'prop_lng') required this.propLng,
      @JsonKey(name: 'prop_img') this.propImg,
      @JsonKey(name: 'prop_city') required this.propCity,
      @JsonKey(name: 'prop_region') required this.propRegion})
      : super._();

  factory _$TenantModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TenantModelImplFromJson(json);

  @override
  @JsonKey(name: 'prop_id')
  final String propId;
  @override
  @JsonKey(name: 'tts_code')
  final String? code;
  @override
  @JsonKey(name: 'are_desc_fo')
  final String unitName;
  @override
  @JsonKey(name: 'cal_type')
  final DateTypes dateType;
  @override
  @JsonKey(name: 'tts_end_date_hj')
  final String dataTimeHj;
  @override
  @JsonKey(name: 'tts_end_date_dgr')
  final String dataTimeStamp;
  @override
  @JsonKey(name: 'amt_due', defaultValue: "0")
  final String price;
  @override
  @JsonKey(name: 'tts_validity')
  final TenantVisibility status;
  @override
  @JsonKey(name: 'contract_type')
  final ContractTypes type;
  @override
  @JsonKey(name: 'prop_lat')
  final String propLat;
  @override
  @JsonKey(name: 'prop_lng')
  final String propLng;
  @override
  @JsonKey(name: 'prop_img')
  final String? propImg;
  @override
  @JsonKey(name: 'prop_city')
  final String propCity;
  @override
  @JsonKey(name: 'prop_region')
  final String propRegion;

  @override
  String toString() {
    return 'TenantModel(propId: $propId, code: $code, unitName: $unitName, dateType: $dateType, dataTimeHj: $dataTimeHj, dataTimeStamp: $dataTimeStamp, price: $price, status: $status, type: $type, propLat: $propLat, propLng: $propLng, propImg: $propImg, propCity: $propCity, propRegion: $propRegion)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TenantModelImpl &&
            (identical(other.propId, propId) || other.propId == propId) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.unitName, unitName) ||
                other.unitName == unitName) &&
            (identical(other.dateType, dateType) ||
                other.dateType == dateType) &&
            (identical(other.dataTimeHj, dataTimeHj) ||
                other.dataTimeHj == dataTimeHj) &&
            (identical(other.dataTimeStamp, dataTimeStamp) ||
                other.dataTimeStamp == dataTimeStamp) &&
            (identical(other.price, price) || other.price == price) &&
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
      propId,
      code,
      unitName,
      dateType,
      dataTimeHj,
      dataTimeStamp,
      price,
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
      {@JsonKey(name: 'prop_id') required final String propId,
      @JsonKey(name: 'tts_code') required final String? code,
      @JsonKey(name: 'are_desc_fo') required final String unitName,
      @JsonKey(name: 'cal_type') required final DateTypes dateType,
      @JsonKey(name: 'tts_end_date_hj') required final String dataTimeHj,
      @JsonKey(name: 'tts_end_date_dgr') required final String dataTimeStamp,
      @JsonKey(name: 'amt_due', defaultValue: "0") required final String price,
      @JsonKey(name: 'tts_validity') required final TenantVisibility status,
      @JsonKey(name: 'contract_type') required final ContractTypes type,
      @JsonKey(name: 'prop_lat') required final String propLat,
      @JsonKey(name: 'prop_lng') required final String propLng,
      @JsonKey(name: 'prop_img') final String? propImg,
      @JsonKey(name: 'prop_city') required final String propCity,
      @JsonKey(name: 'prop_region')
      required final String propRegion}) = _$TenantModelImpl;
  _TenantModel._() : super._();

  factory _TenantModel.fromJson(Map<String, dynamic> json) =
      _$TenantModelImpl.fromJson;

  @override
  @JsonKey(name: 'prop_id')
  String get propId;
  @override
  @JsonKey(name: 'tts_code')
  String? get code;
  @override
  @JsonKey(name: 'are_desc_fo')
  String get unitName;
  @override
  @JsonKey(name: 'cal_type')
  DateTypes get dateType;
  @override
  @JsonKey(name: 'tts_end_date_hj')
  String get dataTimeHj;
  @override
  @JsonKey(name: 'tts_end_date_dgr')
  String get dataTimeStamp;
  @override
  @JsonKey(name: 'amt_due', defaultValue: "0")
  String get price;
  @override
  @JsonKey(name: 'tts_validity')
  TenantVisibility get status;
  @override
  @JsonKey(name: 'contract_type')
  ContractTypes get type;
  @override
  @JsonKey(name: 'prop_lat')
  String get propLat;
  @override
  @JsonKey(name: 'prop_lng')
  String get propLng;
  @override
  @JsonKey(name: 'prop_img')
  String? get propImg;
  @override
  @JsonKey(name: 'prop_city')
  String get propCity;
  @override
  @JsonKey(name: 'prop_region')
  String get propRegion;
  @override
  @JsonKey(ignore: true)
  _$$TenantModelImplCopyWith<_$TenantModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
