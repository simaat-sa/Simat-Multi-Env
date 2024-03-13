// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'prop_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PropModel _$PropModelFromJson(Map<String, dynamic> json) {
  return _PropModel.fromJson(json);
}

/// @nodoc
mixin _$PropModel {
  @JsonKey(name: 'prop_id', defaultValue: "0")
  String get propId => throw _privateConstructorUsedError;
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
  @JsonKey(name: 'acl_status_code', defaultValue: "")
  String get statusCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'prop_img')
  String? get propImg => throw _privateConstructorUsedError;
  @JsonKey(name: 'prop_cost', defaultValue: "")
  String get propCost => throw _privateConstructorUsedError;
  @JsonKey(name: 'prop_city', defaultValue: "")
  String get propCity => throw _privateConstructorUsedError;
  @JsonKey(name: 'prop_region', defaultValue: "")
  String get propRegion => throw _privateConstructorUsedError;
  @JsonKey(name: 'contact_name', defaultValue: "")
  String get contactName => throw _privateConstructorUsedError;
  @JsonKey(name: 'dt_updated', defaultValue: "")
  String get date => throw _privateConstructorUsedError;
  @JsonKey(name: 'contract_type')
  ContractTypes get propType => throw _privateConstructorUsedError;
  @JsonKey(name: 'amt_collect', defaultValue: "0")
  String get contractCollectPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'amt_due', defaultValue: "0")
  String get totalDuePrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'prop_child_tot', defaultValue: "0")
  String get propChildTot => throw _privateConstructorUsedError;
  @JsonKey(name: 'prop_child_occ', defaultValue: "0")
  String get propChildOcc => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PropModelCopyWith<PropModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PropModelCopyWith<$Res> {
  factory $PropModelCopyWith(PropModel value, $Res Function(PropModel) then) =
      _$PropModelCopyWithImpl<$Res, PropModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'prop_id', defaultValue: "0") String propId,
      @JsonKey(name: 'are_id', defaultValue: "0") String areId,
      @JsonKey(name: 'are_code', defaultValue: "0") String areCode,
      @JsonKey(name: 'are_are_id', defaultValue: "0") String areAreId,
      @JsonKey(name: 'are_desc_fo', defaultValue: "") String unitName,
      @JsonKey(name: 'parent_desc_ar', defaultValue: "") String blocNameAr,
      @JsonKey(name: 'parent_desc_en', defaultValue: "") String blocNameEn,
      @JsonKey(name: 'acl_status_code', defaultValue: "") String statusCode,
      @JsonKey(name: 'prop_img') String? propImg,
      @JsonKey(name: 'prop_cost', defaultValue: "") String propCost,
      @JsonKey(name: 'prop_city', defaultValue: "") String propCity,
      @JsonKey(name: 'prop_region', defaultValue: "") String propRegion,
      @JsonKey(name: 'contact_name', defaultValue: "") String contactName,
      @JsonKey(name: 'dt_updated', defaultValue: "") String date,
      @JsonKey(name: 'contract_type') ContractTypes propType,
      @JsonKey(name: 'amt_collect', defaultValue: "0")
      String contractCollectPrice,
      @JsonKey(name: 'amt_due', defaultValue: "0") String totalDuePrice,
      @JsonKey(name: 'prop_child_tot', defaultValue: "0") String propChildTot,
      @JsonKey(name: 'prop_child_occ', defaultValue: "0") String propChildOcc});
}

/// @nodoc
class _$PropModelCopyWithImpl<$Res, $Val extends PropModel>
    implements $PropModelCopyWith<$Res> {
  _$PropModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? propId = null,
    Object? areId = null,
    Object? areCode = null,
    Object? areAreId = null,
    Object? unitName = null,
    Object? blocNameAr = null,
    Object? blocNameEn = null,
    Object? statusCode = null,
    Object? propImg = freezed,
    Object? propCost = null,
    Object? propCity = null,
    Object? propRegion = null,
    Object? contactName = null,
    Object? date = null,
    Object? propType = null,
    Object? contractCollectPrice = null,
    Object? totalDuePrice = null,
    Object? propChildTot = null,
    Object? propChildOcc = null,
  }) {
    return _then(_value.copyWith(
      propId: null == propId
          ? _value.propId
          : propId // ignore: cast_nullable_to_non_nullable
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
      statusCode: null == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as String,
      propImg: freezed == propImg
          ? _value.propImg
          : propImg // ignore: cast_nullable_to_non_nullable
              as String?,
      propCost: null == propCost
          ? _value.propCost
          : propCost // ignore: cast_nullable_to_non_nullable
              as String,
      propCity: null == propCity
          ? _value.propCity
          : propCity // ignore: cast_nullable_to_non_nullable
              as String,
      propRegion: null == propRegion
          ? _value.propRegion
          : propRegion // ignore: cast_nullable_to_non_nullable
              as String,
      contactName: null == contactName
          ? _value.contactName
          : contactName // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      propType: null == propType
          ? _value.propType
          : propType // ignore: cast_nullable_to_non_nullable
              as ContractTypes,
      contractCollectPrice: null == contractCollectPrice
          ? _value.contractCollectPrice
          : contractCollectPrice // ignore: cast_nullable_to_non_nullable
              as String,
      totalDuePrice: null == totalDuePrice
          ? _value.totalDuePrice
          : totalDuePrice // ignore: cast_nullable_to_non_nullable
              as String,
      propChildTot: null == propChildTot
          ? _value.propChildTot
          : propChildTot // ignore: cast_nullable_to_non_nullable
              as String,
      propChildOcc: null == propChildOcc
          ? _value.propChildOcc
          : propChildOcc // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PropModelImplCopyWith<$Res>
    implements $PropModelCopyWith<$Res> {
  factory _$$PropModelImplCopyWith(
          _$PropModelImpl value, $Res Function(_$PropModelImpl) then) =
      __$$PropModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'prop_id', defaultValue: "0") String propId,
      @JsonKey(name: 'are_id', defaultValue: "0") String areId,
      @JsonKey(name: 'are_code', defaultValue: "0") String areCode,
      @JsonKey(name: 'are_are_id', defaultValue: "0") String areAreId,
      @JsonKey(name: 'are_desc_fo', defaultValue: "") String unitName,
      @JsonKey(name: 'parent_desc_ar', defaultValue: "") String blocNameAr,
      @JsonKey(name: 'parent_desc_en', defaultValue: "") String blocNameEn,
      @JsonKey(name: 'acl_status_code', defaultValue: "") String statusCode,
      @JsonKey(name: 'prop_img') String? propImg,
      @JsonKey(name: 'prop_cost', defaultValue: "") String propCost,
      @JsonKey(name: 'prop_city', defaultValue: "") String propCity,
      @JsonKey(name: 'prop_region', defaultValue: "") String propRegion,
      @JsonKey(name: 'contact_name', defaultValue: "") String contactName,
      @JsonKey(name: 'dt_updated', defaultValue: "") String date,
      @JsonKey(name: 'contract_type') ContractTypes propType,
      @JsonKey(name: 'amt_collect', defaultValue: "0")
      String contractCollectPrice,
      @JsonKey(name: 'amt_due', defaultValue: "0") String totalDuePrice,
      @JsonKey(name: 'prop_child_tot', defaultValue: "0") String propChildTot,
      @JsonKey(name: 'prop_child_occ', defaultValue: "0") String propChildOcc});
}

/// @nodoc
class __$$PropModelImplCopyWithImpl<$Res>
    extends _$PropModelCopyWithImpl<$Res, _$PropModelImpl>
    implements _$$PropModelImplCopyWith<$Res> {
  __$$PropModelImplCopyWithImpl(
      _$PropModelImpl _value, $Res Function(_$PropModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? propId = null,
    Object? areId = null,
    Object? areCode = null,
    Object? areAreId = null,
    Object? unitName = null,
    Object? blocNameAr = null,
    Object? blocNameEn = null,
    Object? statusCode = null,
    Object? propImg = freezed,
    Object? propCost = null,
    Object? propCity = null,
    Object? propRegion = null,
    Object? contactName = null,
    Object? date = null,
    Object? propType = null,
    Object? contractCollectPrice = null,
    Object? totalDuePrice = null,
    Object? propChildTot = null,
    Object? propChildOcc = null,
  }) {
    return _then(_$PropModelImpl(
      propId: null == propId
          ? _value.propId
          : propId // ignore: cast_nullable_to_non_nullable
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
      statusCode: null == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as String,
      propImg: freezed == propImg
          ? _value.propImg
          : propImg // ignore: cast_nullable_to_non_nullable
              as String?,
      propCost: null == propCost
          ? _value.propCost
          : propCost // ignore: cast_nullable_to_non_nullable
              as String,
      propCity: null == propCity
          ? _value.propCity
          : propCity // ignore: cast_nullable_to_non_nullable
              as String,
      propRegion: null == propRegion
          ? _value.propRegion
          : propRegion // ignore: cast_nullable_to_non_nullable
              as String,
      contactName: null == contactName
          ? _value.contactName
          : contactName // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      propType: null == propType
          ? _value.propType
          : propType // ignore: cast_nullable_to_non_nullable
              as ContractTypes,
      contractCollectPrice: null == contractCollectPrice
          ? _value.contractCollectPrice
          : contractCollectPrice // ignore: cast_nullable_to_non_nullable
              as String,
      totalDuePrice: null == totalDuePrice
          ? _value.totalDuePrice
          : totalDuePrice // ignore: cast_nullable_to_non_nullable
              as String,
      propChildTot: null == propChildTot
          ? _value.propChildTot
          : propChildTot // ignore: cast_nullable_to_non_nullable
              as String,
      propChildOcc: null == propChildOcc
          ? _value.propChildOcc
          : propChildOcc // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$PropModelImpl extends _PropModel {
  const _$PropModelImpl(
      {@JsonKey(name: 'prop_id', defaultValue: "0") required this.propId,
      @JsonKey(name: 'are_id', defaultValue: "0") required this.areId,
      @JsonKey(name: 'are_code', defaultValue: "0") required this.areCode,
      @JsonKey(name: 'are_are_id', defaultValue: "0") required this.areAreId,
      @JsonKey(name: 'are_desc_fo', defaultValue: "") required this.unitName,
      @JsonKey(name: 'parent_desc_ar', defaultValue: "")
      required this.blocNameAr,
      @JsonKey(name: 'parent_desc_en', defaultValue: "")
      required this.blocNameEn,
      @JsonKey(name: 'acl_status_code', defaultValue: "")
      required this.statusCode,
      @JsonKey(name: 'prop_img') required this.propImg,
      @JsonKey(name: 'prop_cost', defaultValue: "") required this.propCost,
      @JsonKey(name: 'prop_city', defaultValue: "") required this.propCity,
      @JsonKey(name: 'prop_region', defaultValue: "") required this.propRegion,
      @JsonKey(name: 'contact_name', defaultValue: "")
      required this.contactName,
      @JsonKey(name: 'dt_updated', defaultValue: "") required this.date,
      @JsonKey(name: 'contract_type') required this.propType,
      @JsonKey(name: 'amt_collect', defaultValue: "0")
      required this.contractCollectPrice,
      @JsonKey(name: 'amt_due', defaultValue: "0") required this.totalDuePrice,
      @JsonKey(name: 'prop_child_tot', defaultValue: "0")
      required this.propChildTot,
      @JsonKey(name: 'prop_child_occ', defaultValue: "0")
      required this.propChildOcc})
      : super._();

  factory _$PropModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PropModelImplFromJson(json);

  @override
  @JsonKey(name: 'prop_id', defaultValue: "0")
  final String propId;
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
  @JsonKey(name: 'acl_status_code', defaultValue: "")
  final String statusCode;
  @override
  @JsonKey(name: 'prop_img')
  final String? propImg;
  @override
  @JsonKey(name: 'prop_cost', defaultValue: "")
  final String propCost;
  @override
  @JsonKey(name: 'prop_city', defaultValue: "")
  final String propCity;
  @override
  @JsonKey(name: 'prop_region', defaultValue: "")
  final String propRegion;
  @override
  @JsonKey(name: 'contact_name', defaultValue: "")
  final String contactName;
  @override
  @JsonKey(name: 'dt_updated', defaultValue: "")
  final String date;
  @override
  @JsonKey(name: 'contract_type')
  final ContractTypes propType;
  @override
  @JsonKey(name: 'amt_collect', defaultValue: "0")
  final String contractCollectPrice;
  @override
  @JsonKey(name: 'amt_due', defaultValue: "0")
  final String totalDuePrice;
  @override
  @JsonKey(name: 'prop_child_tot', defaultValue: "0")
  final String propChildTot;
  @override
  @JsonKey(name: 'prop_child_occ', defaultValue: "0")
  final String propChildOcc;

  @override
  String toString() {
    return 'PropModel(propId: $propId, areId: $areId, areCode: $areCode, areAreId: $areAreId, unitName: $unitName, blocNameAr: $blocNameAr, blocNameEn: $blocNameEn, statusCode: $statusCode, propImg: $propImg, propCost: $propCost, propCity: $propCity, propRegion: $propRegion, contactName: $contactName, date: $date, propType: $propType, contractCollectPrice: $contractCollectPrice, totalDuePrice: $totalDuePrice, propChildTot: $propChildTot, propChildOcc: $propChildOcc)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PropModelImpl &&
            (identical(other.propId, propId) || other.propId == propId) &&
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
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode) &&
            (identical(other.propImg, propImg) || other.propImg == propImg) &&
            (identical(other.propCost, propCost) ||
                other.propCost == propCost) &&
            (identical(other.propCity, propCity) ||
                other.propCity == propCity) &&
            (identical(other.propRegion, propRegion) ||
                other.propRegion == propRegion) &&
            (identical(other.contactName, contactName) ||
                other.contactName == contactName) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.propType, propType) ||
                other.propType == propType) &&
            (identical(other.contractCollectPrice, contractCollectPrice) ||
                other.contractCollectPrice == contractCollectPrice) &&
            (identical(other.totalDuePrice, totalDuePrice) ||
                other.totalDuePrice == totalDuePrice) &&
            (identical(other.propChildTot, propChildTot) ||
                other.propChildTot == propChildTot) &&
            (identical(other.propChildOcc, propChildOcc) ||
                other.propChildOcc == propChildOcc));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        propId,
        areId,
        areCode,
        areAreId,
        unitName,
        blocNameAr,
        blocNameEn,
        statusCode,
        propImg,
        propCost,
        propCity,
        propRegion,
        contactName,
        date,
        propType,
        contractCollectPrice,
        totalDuePrice,
        propChildTot,
        propChildOcc
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PropModelImplCopyWith<_$PropModelImpl> get copyWith =>
      __$$PropModelImplCopyWithImpl<_$PropModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PropModelImplToJson(
      this,
    );
  }
}

abstract class _PropModel extends PropModel {
  const factory _PropModel(
      {@JsonKey(name: 'prop_id', defaultValue: "0")
      required final String propId,
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
      @JsonKey(name: 'acl_status_code', defaultValue: "")
      required final String statusCode,
      @JsonKey(name: 'prop_img') required final String? propImg,
      @JsonKey(name: 'prop_cost', defaultValue: "")
      required final String propCost,
      @JsonKey(name: 'prop_city', defaultValue: "")
      required final String propCity,
      @JsonKey(name: 'prop_region', defaultValue: "")
      required final String propRegion,
      @JsonKey(name: 'contact_name', defaultValue: "")
      required final String contactName,
      @JsonKey(name: 'dt_updated', defaultValue: "") required final String date,
      @JsonKey(name: 'contract_type') required final ContractTypes propType,
      @JsonKey(name: 'amt_collect', defaultValue: "0")
      required final String contractCollectPrice,
      @JsonKey(name: 'amt_due', defaultValue: "0")
      required final String totalDuePrice,
      @JsonKey(name: 'prop_child_tot', defaultValue: "0")
      required final String propChildTot,
      @JsonKey(name: 'prop_child_occ', defaultValue: "0")
      required final String propChildOcc}) = _$PropModelImpl;
  const _PropModel._() : super._();

  factory _PropModel.fromJson(Map<String, dynamic> json) =
      _$PropModelImpl.fromJson;

  @override
  @JsonKey(name: 'prop_id', defaultValue: "0")
  String get propId;
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
  @JsonKey(name: 'acl_status_code', defaultValue: "")
  String get statusCode;
  @override
  @JsonKey(name: 'prop_img')
  String? get propImg;
  @override
  @JsonKey(name: 'prop_cost', defaultValue: "")
  String get propCost;
  @override
  @JsonKey(name: 'prop_city', defaultValue: "")
  String get propCity;
  @override
  @JsonKey(name: 'prop_region', defaultValue: "")
  String get propRegion;
  @override
  @JsonKey(name: 'contact_name', defaultValue: "")
  String get contactName;
  @override
  @JsonKey(name: 'dt_updated', defaultValue: "")
  String get date;
  @override
  @JsonKey(name: 'contract_type')
  ContractTypes get propType;
  @override
  @JsonKey(name: 'amt_collect', defaultValue: "0")
  String get contractCollectPrice;
  @override
  @JsonKey(name: 'amt_due', defaultValue: "0")
  String get totalDuePrice;
  @override
  @JsonKey(name: 'prop_child_tot', defaultValue: "0")
  String get propChildTot;
  @override
  @JsonKey(name: 'prop_child_occ', defaultValue: "0")
  String get propChildOcc;
  @override
  @JsonKey(ignore: true)
  _$$PropModelImplCopyWith<_$PropModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
