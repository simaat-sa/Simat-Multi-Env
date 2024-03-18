// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'contract_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ContractModel _$ContractModelFromJson(Map<String, dynamic> json) {
  return _ContractModel.fromJson(json);
}

/// @nodoc
mixin _$ContractModel {
  @JsonKey(name: 'prop_id', defaultValue: "")
  String get propId => throw _privateConstructorUsedError;
  @JsonKey(name: 'tts_code', defaultValue: "")
  String get code => throw _privateConstructorUsedError;
  @JsonKey(name: 'are_id', defaultValue: "0")
  String get areId => throw _privateConstructorUsedError;
  @JsonKey(name: 'are_code', defaultValue: "0")
  String get areCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'are_are_id', defaultValue: "0")
  String get areAreId => throw _privateConstructorUsedError;
  @JsonKey(name: 'are_desc_fo', defaultValue: "")
  String get unitName => throw _privateConstructorUsedError;
  @JsonKey(name: 'parent_desc_ar', defaultValue: "")
  String get blocNameAr => throw _privateConstructorUsedError;
  @JsonKey(name: 'parent_desc_en', defaultValue: "")
  String get blocNameEn => throw _privateConstructorUsedError;
  @JsonKey(name: 'contact_name', defaultValue: "")
  String get contactName => throw _privateConstructorUsedError;
  @JsonKey(name: 'cal_type')
  DateTypes get dateType => throw _privateConstructorUsedError;
  @JsonKey(name: 'tts_end_date_hj', defaultValue: "")
  String get dataTimeHj => throw _privateConstructorUsedError;
  @JsonKey(name: 'tts_end_date_dgr', defaultValue: "")
  String get dataTimeStamp => throw _privateConstructorUsedError;
  @JsonKey(name: 'amt_due', defaultValue: "0")
  String get totalDuePrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'amt_collect', defaultValue: "0")
  String get contractCollectPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'tts_contract_net_price_alc', defaultValue: "0")
  String get contractNetPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'tts_tot_additional_item_alc', defaultValue: "0")
  String get contractAdditionalPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'tts_insurance', defaultValue: "0")
  String get contractInsurancePrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'tts_validity', defaultValue: TenantVisibility.non)
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
  @JsonKey(name: 'tts_start_date_dgr', defaultValue: "")
  String get startDt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ContractModelCopyWith<ContractModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContractModelCopyWith<$Res> {
  factory $ContractModelCopyWith(
          ContractModel value, $Res Function(ContractModel) then) =
      _$ContractModelCopyWithImpl<$Res, ContractModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'prop_id', defaultValue: "") String propId,
      @JsonKey(name: 'tts_code', defaultValue: "") String code,
      @JsonKey(name: 'are_id', defaultValue: "0") String areId,
      @JsonKey(name: 'are_code', defaultValue: "0") String areCode,
      @JsonKey(name: 'are_are_id', defaultValue: "0") String areAreId,
      @JsonKey(name: 'are_desc_fo', defaultValue: "") String unitName,
      @JsonKey(name: 'parent_desc_ar', defaultValue: "") String blocNameAr,
      @JsonKey(name: 'parent_desc_en', defaultValue: "") String blocNameEn,
      @JsonKey(name: 'contact_name', defaultValue: "") String contactName,
      @JsonKey(name: 'cal_type') DateTypes dateType,
      @JsonKey(name: 'tts_end_date_hj', defaultValue: "") String dataTimeHj,
      @JsonKey(name: 'tts_end_date_dgr', defaultValue: "") String dataTimeStamp,
      @JsonKey(name: 'amt_due', defaultValue: "0") String totalDuePrice,
      @JsonKey(name: 'amt_collect', defaultValue: "0")
      String contractCollectPrice,
      @JsonKey(name: 'tts_contract_net_price_alc', defaultValue: "0")
      String contractNetPrice,
      @JsonKey(name: 'tts_tot_additional_item_alc', defaultValue: "0")
      String contractAdditionalPrice,
      @JsonKey(name: 'tts_insurance', defaultValue: "0")
      String contractInsurancePrice,
      @JsonKey(name: 'tts_validity', defaultValue: TenantVisibility.non)
      TenantVisibility status,
      @JsonKey(name: 'contract_type') ContractTypes type,
      @JsonKey(name: 'prop_lat', defaultValue: "") String propLat,
      @JsonKey(name: 'prop_lng', defaultValue: "") String propLng,
      @JsonKey(name: 'prop_img') String? propImg,
      @JsonKey(name: 'prop_city', defaultValue: "") String propCity,
      @JsonKey(name: 'prop_region', defaultValue: "") String propRegion,
      @JsonKey(name: 'tts_start_date_dgr', defaultValue: "") String startDt});
}

/// @nodoc
class _$ContractModelCopyWithImpl<$Res, $Val extends ContractModel>
    implements $ContractModelCopyWith<$Res> {
  _$ContractModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? propId = null,
    Object? code = null,
    Object? areId = null,
    Object? areCode = null,
    Object? areAreId = null,
    Object? unitName = null,
    Object? blocNameAr = null,
    Object? blocNameEn = null,
    Object? contactName = null,
    Object? dateType = null,
    Object? dataTimeHj = null,
    Object? dataTimeStamp = null,
    Object? totalDuePrice = null,
    Object? contractCollectPrice = null,
    Object? contractNetPrice = null,
    Object? contractAdditionalPrice = null,
    Object? contractInsurancePrice = null,
    Object? status = null,
    Object? type = null,
    Object? propLat = null,
    Object? propLng = null,
    Object? propImg = freezed,
    Object? propCity = null,
    Object? propRegion = null,
    Object? startDt = null,
  }) {
    return _then(_value.copyWith(
      propId: null == propId
          ? _value.propId
          : propId // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      areId: null == areId
          ? _value.areId
          : areId // ignore: cast_nullable_to_non_nullable
              as String,
      areCode: null == areCode
          ? _value.areCode
          : areCode // ignore: cast_nullable_to_non_nullable
              as String,
      areAreId: null == areAreId
          ? _value.areAreId
          : areAreId // ignore: cast_nullable_to_non_nullable
              as String,
      unitName: null == unitName
          ? _value.unitName
          : unitName // ignore: cast_nullable_to_non_nullable
              as String,
      blocNameAr: null == blocNameAr
          ? _value.blocNameAr
          : blocNameAr // ignore: cast_nullable_to_non_nullable
              as String,
      blocNameEn: null == blocNameEn
          ? _value.blocNameEn
          : blocNameEn // ignore: cast_nullable_to_non_nullable
              as String,
      contactName: null == contactName
          ? _value.contactName
          : contactName // ignore: cast_nullable_to_non_nullable
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
      totalDuePrice: null == totalDuePrice
          ? _value.totalDuePrice
          : totalDuePrice // ignore: cast_nullable_to_non_nullable
              as String,
      contractCollectPrice: null == contractCollectPrice
          ? _value.contractCollectPrice
          : contractCollectPrice // ignore: cast_nullable_to_non_nullable
              as String,
      contractNetPrice: null == contractNetPrice
          ? _value.contractNetPrice
          : contractNetPrice // ignore: cast_nullable_to_non_nullable
              as String,
      contractAdditionalPrice: null == contractAdditionalPrice
          ? _value.contractAdditionalPrice
          : contractAdditionalPrice // ignore: cast_nullable_to_non_nullable
              as String,
      contractInsurancePrice: null == contractInsurancePrice
          ? _value.contractInsurancePrice
          : contractInsurancePrice // ignore: cast_nullable_to_non_nullable
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
      startDt: null == startDt
          ? _value.startDt
          : startDt // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ContractModelImplCopyWith<$Res>
    implements $ContractModelCopyWith<$Res> {
  factory _$$ContractModelImplCopyWith(
          _$ContractModelImpl value, $Res Function(_$ContractModelImpl) then) =
      __$$ContractModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'prop_id', defaultValue: "") String propId,
      @JsonKey(name: 'tts_code', defaultValue: "") String code,
      @JsonKey(name: 'are_id', defaultValue: "0") String areId,
      @JsonKey(name: 'are_code', defaultValue: "0") String areCode,
      @JsonKey(name: 'are_are_id', defaultValue: "0") String areAreId,
      @JsonKey(name: 'are_desc_fo', defaultValue: "") String unitName,
      @JsonKey(name: 'parent_desc_ar', defaultValue: "") String blocNameAr,
      @JsonKey(name: 'parent_desc_en', defaultValue: "") String blocNameEn,
      @JsonKey(name: 'contact_name', defaultValue: "") String contactName,
      @JsonKey(name: 'cal_type') DateTypes dateType,
      @JsonKey(name: 'tts_end_date_hj', defaultValue: "") String dataTimeHj,
      @JsonKey(name: 'tts_end_date_dgr', defaultValue: "") String dataTimeStamp,
      @JsonKey(name: 'amt_due', defaultValue: "0") String totalDuePrice,
      @JsonKey(name: 'amt_collect', defaultValue: "0")
      String contractCollectPrice,
      @JsonKey(name: 'tts_contract_net_price_alc', defaultValue: "0")
      String contractNetPrice,
      @JsonKey(name: 'tts_tot_additional_item_alc', defaultValue: "0")
      String contractAdditionalPrice,
      @JsonKey(name: 'tts_insurance', defaultValue: "0")
      String contractInsurancePrice,
      @JsonKey(name: 'tts_validity', defaultValue: TenantVisibility.non)
      TenantVisibility status,
      @JsonKey(name: 'contract_type') ContractTypes type,
      @JsonKey(name: 'prop_lat', defaultValue: "") String propLat,
      @JsonKey(name: 'prop_lng', defaultValue: "") String propLng,
      @JsonKey(name: 'prop_img') String? propImg,
      @JsonKey(name: 'prop_city', defaultValue: "") String propCity,
      @JsonKey(name: 'prop_region', defaultValue: "") String propRegion,
      @JsonKey(name: 'tts_start_date_dgr', defaultValue: "") String startDt});
}

/// @nodoc
class __$$ContractModelImplCopyWithImpl<$Res>
    extends _$ContractModelCopyWithImpl<$Res, _$ContractModelImpl>
    implements _$$ContractModelImplCopyWith<$Res> {
  __$$ContractModelImplCopyWithImpl(
      _$ContractModelImpl _value, $Res Function(_$ContractModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? propId = null,
    Object? code = null,
    Object? areId = null,
    Object? areCode = null,
    Object? areAreId = null,
    Object? unitName = null,
    Object? blocNameAr = null,
    Object? blocNameEn = null,
    Object? contactName = null,
    Object? dateType = null,
    Object? dataTimeHj = null,
    Object? dataTimeStamp = null,
    Object? totalDuePrice = null,
    Object? contractCollectPrice = null,
    Object? contractNetPrice = null,
    Object? contractAdditionalPrice = null,
    Object? contractInsurancePrice = null,
    Object? status = null,
    Object? type = null,
    Object? propLat = null,
    Object? propLng = null,
    Object? propImg = freezed,
    Object? propCity = null,
    Object? propRegion = null,
    Object? startDt = null,
  }) {
    return _then(_$ContractModelImpl(
      propId: null == propId
          ? _value.propId
          : propId // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      areId: null == areId
          ? _value.areId
          : areId // ignore: cast_nullable_to_non_nullable
              as String,
      areCode: null == areCode
          ? _value.areCode
          : areCode // ignore: cast_nullable_to_non_nullable
              as String,
      areAreId: null == areAreId
          ? _value.areAreId
          : areAreId // ignore: cast_nullable_to_non_nullable
              as String,
      unitName: null == unitName
          ? _value.unitName
          : unitName // ignore: cast_nullable_to_non_nullable
              as String,
      blocNameAr: null == blocNameAr
          ? _value.blocNameAr
          : blocNameAr // ignore: cast_nullable_to_non_nullable
              as String,
      blocNameEn: null == blocNameEn
          ? _value.blocNameEn
          : blocNameEn // ignore: cast_nullable_to_non_nullable
              as String,
      contactName: null == contactName
          ? _value.contactName
          : contactName // ignore: cast_nullable_to_non_nullable
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
      totalDuePrice: null == totalDuePrice
          ? _value.totalDuePrice
          : totalDuePrice // ignore: cast_nullable_to_non_nullable
              as String,
      contractCollectPrice: null == contractCollectPrice
          ? _value.contractCollectPrice
          : contractCollectPrice // ignore: cast_nullable_to_non_nullable
              as String,
      contractNetPrice: null == contractNetPrice
          ? _value.contractNetPrice
          : contractNetPrice // ignore: cast_nullable_to_non_nullable
              as String,
      contractAdditionalPrice: null == contractAdditionalPrice
          ? _value.contractAdditionalPrice
          : contractAdditionalPrice // ignore: cast_nullable_to_non_nullable
              as String,
      contractInsurancePrice: null == contractInsurancePrice
          ? _value.contractInsurancePrice
          : contractInsurancePrice // ignore: cast_nullable_to_non_nullable
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
      startDt: null == startDt
          ? _value.startDt
          : startDt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$ContractModelImpl extends _ContractModel {
  _$ContractModelImpl(
      {@JsonKey(name: 'prop_id', defaultValue: "") required this.propId,
      @JsonKey(name: 'tts_code', defaultValue: "") required this.code,
      @JsonKey(name: 'are_id', defaultValue: "0") required this.areId,
      @JsonKey(name: 'are_code', defaultValue: "0") required this.areCode,
      @JsonKey(name: 'are_are_id', defaultValue: "0") required this.areAreId,
      @JsonKey(name: 'are_desc_fo', defaultValue: "") required this.unitName,
      @JsonKey(name: 'parent_desc_ar', defaultValue: "")
      required this.blocNameAr,
      @JsonKey(name: 'parent_desc_en', defaultValue: "")
      required this.blocNameEn,
      @JsonKey(name: 'contact_name', defaultValue: "")
      required this.contactName,
      @JsonKey(name: 'cal_type') required this.dateType,
      @JsonKey(name: 'tts_end_date_hj', defaultValue: "")
      required this.dataTimeHj,
      @JsonKey(name: 'tts_end_date_dgr', defaultValue: "")
      required this.dataTimeStamp,
      @JsonKey(name: 'amt_due', defaultValue: "0") required this.totalDuePrice,
      @JsonKey(name: 'amt_collect', defaultValue: "0")
      required this.contractCollectPrice,
      @JsonKey(name: 'tts_contract_net_price_alc', defaultValue: "0")
      required this.contractNetPrice,
      @JsonKey(name: 'tts_tot_additional_item_alc', defaultValue: "0")
      required this.contractAdditionalPrice,
      @JsonKey(name: 'tts_insurance', defaultValue: "0")
      required this.contractInsurancePrice,
      @JsonKey(name: 'tts_validity', defaultValue: TenantVisibility.non)
      required this.status,
      @JsonKey(name: 'contract_type') required this.type,
      @JsonKey(name: 'prop_lat', defaultValue: "") required this.propLat,
      @JsonKey(name: 'prop_lng', defaultValue: "") required this.propLng,
      @JsonKey(name: 'prop_img') this.propImg,
      @JsonKey(name: 'prop_city', defaultValue: "") required this.propCity,
      @JsonKey(name: 'prop_region', defaultValue: "") required this.propRegion,
      @JsonKey(name: 'tts_start_date_dgr', defaultValue: "")
      required this.startDt})
      : super._();

  factory _$ContractModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ContractModelImplFromJson(json);

  @override
  @JsonKey(name: 'prop_id', defaultValue: "")
  final String propId;
  @override
  @JsonKey(name: 'tts_code', defaultValue: "")
  final String code;
  @override
  @JsonKey(name: 'are_id', defaultValue: "0")
  final String areId;
  @override
  @JsonKey(name: 'are_code', defaultValue: "0")
  final String areCode;
  @override
  @JsonKey(name: 'are_are_id', defaultValue: "0")
  final String areAreId;
  @override
  @JsonKey(name: 'are_desc_fo', defaultValue: "")
  final String unitName;
  @override
  @JsonKey(name: 'parent_desc_ar', defaultValue: "")
  final String blocNameAr;
  @override
  @JsonKey(name: 'parent_desc_en', defaultValue: "")
  final String blocNameEn;
  @override
  @JsonKey(name: 'contact_name', defaultValue: "")
  final String contactName;
  @override
  @JsonKey(name: 'cal_type')
  final DateTypes dateType;
  @override
  @JsonKey(name: 'tts_end_date_hj', defaultValue: "")
  final String dataTimeHj;
  @override
  @JsonKey(name: 'tts_end_date_dgr', defaultValue: "")
  final String dataTimeStamp;
  @override
  @JsonKey(name: 'amt_due', defaultValue: "0")
  final String totalDuePrice;
  @override
  @JsonKey(name: 'amt_collect', defaultValue: "0")
  final String contractCollectPrice;
  @override
  @JsonKey(name: 'tts_contract_net_price_alc', defaultValue: "0")
  final String contractNetPrice;
  @override
  @JsonKey(name: 'tts_tot_additional_item_alc', defaultValue: "0")
  final String contractAdditionalPrice;
  @override
  @JsonKey(name: 'tts_insurance', defaultValue: "0")
  final String contractInsurancePrice;
  @override
  @JsonKey(name: 'tts_validity', defaultValue: TenantVisibility.non)
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
  @JsonKey(name: 'tts_start_date_dgr', defaultValue: "")
  final String startDt;

  @override
  String toString() {
    return 'ContractModel(propId: $propId, code: $code, areId: $areId, areCode: $areCode, areAreId: $areAreId, unitName: $unitName, blocNameAr: $blocNameAr, blocNameEn: $blocNameEn, contactName: $contactName, dateType: $dateType, dataTimeHj: $dataTimeHj, dataTimeStamp: $dataTimeStamp, totalDuePrice: $totalDuePrice, contractCollectPrice: $contractCollectPrice, contractNetPrice: $contractNetPrice, contractAdditionalPrice: $contractAdditionalPrice, contractInsurancePrice: $contractInsurancePrice, status: $status, type: $type, propLat: $propLat, propLng: $propLng, propImg: $propImg, propCity: $propCity, propRegion: $propRegion, startDt: $startDt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContractModelImpl &&
            (identical(other.propId, propId) || other.propId == propId) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.areId, areId) || other.areId == areId) &&
            (identical(other.areCode, areCode) || other.areCode == areCode) &&
            (identical(other.areAreId, areAreId) ||
                other.areAreId == areAreId) &&
            (identical(other.unitName, unitName) ||
                other.unitName == unitName) &&
            (identical(other.blocNameAr, blocNameAr) ||
                other.blocNameAr == blocNameAr) &&
            (identical(other.blocNameEn, blocNameEn) ||
                other.blocNameEn == blocNameEn) &&
            (identical(other.contactName, contactName) ||
                other.contactName == contactName) &&
            (identical(other.dateType, dateType) ||
                other.dateType == dateType) &&
            (identical(other.dataTimeHj, dataTimeHj) ||
                other.dataTimeHj == dataTimeHj) &&
            (identical(other.dataTimeStamp, dataTimeStamp) ||
                other.dataTimeStamp == dataTimeStamp) &&
            (identical(other.totalDuePrice, totalDuePrice) ||
                other.totalDuePrice == totalDuePrice) &&
            (identical(other.contractCollectPrice, contractCollectPrice) ||
                other.contractCollectPrice == contractCollectPrice) &&
            (identical(other.contractNetPrice, contractNetPrice) ||
                other.contractNetPrice == contractNetPrice) &&
            (identical(
                    other.contractAdditionalPrice, contractAdditionalPrice) ||
                other.contractAdditionalPrice == contractAdditionalPrice) &&
            (identical(other.contractInsurancePrice, contractInsurancePrice) ||
                other.contractInsurancePrice == contractInsurancePrice) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.propLat, propLat) || other.propLat == propLat) &&
            (identical(other.propLng, propLng) || other.propLng == propLng) &&
            (identical(other.propImg, propImg) || other.propImg == propImg) &&
            (identical(other.propCity, propCity) ||
                other.propCity == propCity) &&
            (identical(other.propRegion, propRegion) ||
                other.propRegion == propRegion) &&
            (identical(other.startDt, startDt) || other.startDt == startDt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        propId,
        code,
        areId,
        areCode,
        areAreId,
        unitName,
        blocNameAr,
        blocNameEn,
        contactName,
        dateType,
        dataTimeHj,
        dataTimeStamp,
        totalDuePrice,
        contractCollectPrice,
        contractNetPrice,
        contractAdditionalPrice,
        contractInsurancePrice,
        status,
        type,
        propLat,
        propLng,
        propImg,
        propCity,
        propRegion,
        startDt
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ContractModelImplCopyWith<_$ContractModelImpl> get copyWith =>
      __$$ContractModelImplCopyWithImpl<_$ContractModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ContractModelImplToJson(
      this,
    );
  }
}

abstract class _ContractModel extends ContractModel {
  factory _ContractModel(
      {@JsonKey(name: 'prop_id', defaultValue: "") required final String propId,
      @JsonKey(name: 'tts_code', defaultValue: "") required final String code,
      @JsonKey(name: 'are_id', defaultValue: "0") required final String areId,
      @JsonKey(name: 'are_code', defaultValue: "0")
      required final String areCode,
      @JsonKey(name: 'are_are_id', defaultValue: "0")
      required final String areAreId,
      @JsonKey(name: 'are_desc_fo', defaultValue: "")
      required final String unitName,
      @JsonKey(name: 'parent_desc_ar', defaultValue: "")
      required final String blocNameAr,
      @JsonKey(name: 'parent_desc_en', defaultValue: "")
      required final String blocNameEn,
      @JsonKey(name: 'contact_name', defaultValue: "")
      required final String contactName,
      @JsonKey(name: 'cal_type') required final DateTypes dateType,
      @JsonKey(name: 'tts_end_date_hj', defaultValue: "")
      required final String dataTimeHj,
      @JsonKey(name: 'tts_end_date_dgr', defaultValue: "")
      required final String dataTimeStamp,
      @JsonKey(name: 'amt_due', defaultValue: "0")
      required final String totalDuePrice,
      @JsonKey(name: 'amt_collect', defaultValue: "0")
      required final String contractCollectPrice,
      @JsonKey(name: 'tts_contract_net_price_alc', defaultValue: "0")
      required final String contractNetPrice,
      @JsonKey(name: 'tts_tot_additional_item_alc', defaultValue: "0")
      required final String contractAdditionalPrice,
      @JsonKey(name: 'tts_insurance', defaultValue: "0")
      required final String contractInsurancePrice,
      @JsonKey(name: 'tts_validity', defaultValue: TenantVisibility.non)
      required final TenantVisibility status,
      @JsonKey(name: 'contract_type') required final ContractTypes type,
      @JsonKey(name: 'prop_lat', defaultValue: "")
      required final String propLat,
      @JsonKey(name: 'prop_lng', defaultValue: "")
      required final String propLng,
      @JsonKey(name: 'prop_img') final String? propImg,
      @JsonKey(name: 'prop_city', defaultValue: "")
      required final String propCity,
      @JsonKey(name: 'prop_region', defaultValue: "")
      required final String propRegion,
      @JsonKey(name: 'tts_start_date_dgr', defaultValue: "")
      required final String startDt}) = _$ContractModelImpl;
  _ContractModel._() : super._();

  factory _ContractModel.fromJson(Map<String, dynamic> json) =
      _$ContractModelImpl.fromJson;

  @override
  @JsonKey(name: 'prop_id', defaultValue: "")
  String get propId;
  @override
  @JsonKey(name: 'tts_code', defaultValue: "")
  String get code;
  @override
  @JsonKey(name: 'are_id', defaultValue: "0")
  String get areId;
  @override
  @JsonKey(name: 'are_code', defaultValue: "0")
  String get areCode;
  @override
  @JsonKey(name: 'are_are_id', defaultValue: "0")
  String get areAreId;
  @override
  @JsonKey(name: 'are_desc_fo', defaultValue: "")
  String get unitName;
  @override
  @JsonKey(name: 'parent_desc_ar', defaultValue: "")
  String get blocNameAr;
  @override
  @JsonKey(name: 'parent_desc_en', defaultValue: "")
  String get blocNameEn;
  @override
  @JsonKey(name: 'contact_name', defaultValue: "")
  String get contactName;
  @override
  @JsonKey(name: 'cal_type')
  DateTypes get dateType;
  @override
  @JsonKey(name: 'tts_end_date_hj', defaultValue: "")
  String get dataTimeHj;
  @override
  @JsonKey(name: 'tts_end_date_dgr', defaultValue: "")
  String get dataTimeStamp;
  @override
  @JsonKey(name: 'amt_due', defaultValue: "0")
  String get totalDuePrice;
  @override
  @JsonKey(name: 'amt_collect', defaultValue: "0")
  String get contractCollectPrice;
  @override
  @JsonKey(name: 'tts_contract_net_price_alc', defaultValue: "0")
  String get contractNetPrice;
  @override
  @JsonKey(name: 'tts_tot_additional_item_alc', defaultValue: "0")
  String get contractAdditionalPrice;
  @override
  @JsonKey(name: 'tts_insurance', defaultValue: "0")
  String get contractInsurancePrice;
  @override
  @JsonKey(name: 'tts_validity', defaultValue: TenantVisibility.non)
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
  @JsonKey(name: 'tts_start_date_dgr', defaultValue: "")
  String get startDt;
  @override
  @JsonKey(ignore: true)
  _$$ContractModelImplCopyWith<_$ContractModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
