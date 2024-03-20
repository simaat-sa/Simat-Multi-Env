// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'properties_expenses_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PropertiesExpensesModel _$PropertiesExpensesModelFromJson(
    Map<String, dynamic> json) {
  return _PropertiesExpensesModel.fromJson(json);
}

/// @nodoc
mixin _$PropertiesExpensesModel {
  @JsonKey(name: "exp_id", defaultValue: "")
  String get expId => throw _privateConstructorUsedError;
  @JsonKey(name: "are_id", defaultValue: "")
  String get areId => throw _privateConstructorUsedError;
  @JsonKey(name: "are_are_id", defaultValue: "")
  String get areAreId => throw _privateConstructorUsedError;
  @JsonKey(name: "tmt_ar", defaultValue: "")
  String get expensesTypeAr => throw _privateConstructorUsedError;
  @JsonKey(name: "tmt_en", defaultValue: "")
  String get expensesTypeEn => throw _privateConstructorUsedError;
  @JsonKey(name: "amt_tot", defaultValue: "")
  String get totalAmount => throw _privateConstructorUsedError;
  @JsonKey(name: "acl_status_code", defaultValue: "")
  String get actualStatusCode => throw _privateConstructorUsedError;
  @JsonKey(name: "dt_created", defaultValue: "")
  String get createdDate => throw _privateConstructorUsedError;
  @JsonKey(name: "are_desc_fo", defaultValue: "")
  String get area => throw _privateConstructorUsedError;
  @JsonKey(name: "are_desc_en", defaultValue: "")
  String get areaEn => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PropertiesExpensesModelCopyWith<PropertiesExpensesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PropertiesExpensesModelCopyWith<$Res> {
  factory $PropertiesExpensesModelCopyWith(PropertiesExpensesModel value,
          $Res Function(PropertiesExpensesModel) then) =
      _$PropertiesExpensesModelCopyWithImpl<$Res, PropertiesExpensesModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "exp_id", defaultValue: "") String expId,
      @JsonKey(name: "are_id", defaultValue: "") String areId,
      @JsonKey(name: "are_are_id", defaultValue: "") String areAreId,
      @JsonKey(name: "tmt_ar", defaultValue: "") String expensesTypeAr,
      @JsonKey(name: "tmt_en", defaultValue: "") String expensesTypeEn,
      @JsonKey(name: "amt_tot", defaultValue: "") String totalAmount,
      @JsonKey(name: "acl_status_code", defaultValue: "")
      String actualStatusCode,
      @JsonKey(name: "dt_created", defaultValue: "") String createdDate,
      @JsonKey(name: "are_desc_fo", defaultValue: "") String area,
      @JsonKey(name: "are_desc_en", defaultValue: "") String areaEn});
}

/// @nodoc
class _$PropertiesExpensesModelCopyWithImpl<$Res,
        $Val extends PropertiesExpensesModel>
    implements $PropertiesExpensesModelCopyWith<$Res> {
  _$PropertiesExpensesModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? expId = null,
    Object? areId = null,
    Object? areAreId = null,
    Object? expensesTypeAr = null,
    Object? expensesTypeEn = null,
    Object? totalAmount = null,
    Object? actualStatusCode = null,
    Object? createdDate = null,
    Object? area = null,
    Object? areaEn = null,
  }) {
    return _then(_value.copyWith(
      expId: null == expId
          ? _value.expId
          : expId // ignore: cast_nullable_to_non_nullable
              as String,
      areId: null == areId
          ? _value.areId
          : areId // ignore: cast_nullable_to_non_nullable
              as String,
      areAreId: null == areAreId
          ? _value.areAreId
          : areAreId // ignore: cast_nullable_to_non_nullable
              as String,
      expensesTypeAr: null == expensesTypeAr
          ? _value.expensesTypeAr
          : expensesTypeAr // ignore: cast_nullable_to_non_nullable
              as String,
      expensesTypeEn: null == expensesTypeEn
          ? _value.expensesTypeEn
          : expensesTypeEn // ignore: cast_nullable_to_non_nullable
              as String,
      totalAmount: null == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as String,
      actualStatusCode: null == actualStatusCode
          ? _value.actualStatusCode
          : actualStatusCode // ignore: cast_nullable_to_non_nullable
              as String,
      createdDate: null == createdDate
          ? _value.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as String,
      area: null == area
          ? _value.area
          : area // ignore: cast_nullable_to_non_nullable
              as String,
      areaEn: null == areaEn
          ? _value.areaEn
          : areaEn // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PropertiesExpensesModelImplCopyWith<$Res>
    implements $PropertiesExpensesModelCopyWith<$Res> {
  factory _$$PropertiesExpensesModelImplCopyWith(
          _$PropertiesExpensesModelImpl value,
          $Res Function(_$PropertiesExpensesModelImpl) then) =
      __$$PropertiesExpensesModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "exp_id", defaultValue: "") String expId,
      @JsonKey(name: "are_id", defaultValue: "") String areId,
      @JsonKey(name: "are_are_id", defaultValue: "") String areAreId,
      @JsonKey(name: "tmt_ar", defaultValue: "") String expensesTypeAr,
      @JsonKey(name: "tmt_en", defaultValue: "") String expensesTypeEn,
      @JsonKey(name: "amt_tot", defaultValue: "") String totalAmount,
      @JsonKey(name: "acl_status_code", defaultValue: "")
      String actualStatusCode,
      @JsonKey(name: "dt_created", defaultValue: "") String createdDate,
      @JsonKey(name: "are_desc_fo", defaultValue: "") String area,
      @JsonKey(name: "are_desc_en", defaultValue: "") String areaEn});
}

/// @nodoc
class __$$PropertiesExpensesModelImplCopyWithImpl<$Res>
    extends _$PropertiesExpensesModelCopyWithImpl<$Res,
        _$PropertiesExpensesModelImpl>
    implements _$$PropertiesExpensesModelImplCopyWith<$Res> {
  __$$PropertiesExpensesModelImplCopyWithImpl(
      _$PropertiesExpensesModelImpl _value,
      $Res Function(_$PropertiesExpensesModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? expId = null,
    Object? areId = null,
    Object? areAreId = null,
    Object? expensesTypeAr = null,
    Object? expensesTypeEn = null,
    Object? totalAmount = null,
    Object? actualStatusCode = null,
    Object? createdDate = null,
    Object? area = null,
    Object? areaEn = null,
  }) {
    return _then(_$PropertiesExpensesModelImpl(
      expId: null == expId
          ? _value.expId
          : expId // ignore: cast_nullable_to_non_nullable
              as String,
      areId: null == areId
          ? _value.areId
          : areId // ignore: cast_nullable_to_non_nullable
              as String,
      areAreId: null == areAreId
          ? _value.areAreId
          : areAreId // ignore: cast_nullable_to_non_nullable
              as String,
      expensesTypeAr: null == expensesTypeAr
          ? _value.expensesTypeAr
          : expensesTypeAr // ignore: cast_nullable_to_non_nullable
              as String,
      expensesTypeEn: null == expensesTypeEn
          ? _value.expensesTypeEn
          : expensesTypeEn // ignore: cast_nullable_to_non_nullable
              as String,
      totalAmount: null == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as String,
      actualStatusCode: null == actualStatusCode
          ? _value.actualStatusCode
          : actualStatusCode // ignore: cast_nullable_to_non_nullable
              as String,
      createdDate: null == createdDate
          ? _value.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as String,
      area: null == area
          ? _value.area
          : area // ignore: cast_nullable_to_non_nullable
              as String,
      areaEn: null == areaEn
          ? _value.areaEn
          : areaEn // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$PropertiesExpensesModelImpl extends _PropertiesExpensesModel {
  const _$PropertiesExpensesModelImpl(
      {@JsonKey(name: "exp_id", defaultValue: "") required this.expId,
      @JsonKey(name: "are_id", defaultValue: "") required this.areId,
      @JsonKey(name: "are_are_id", defaultValue: "") required this.areAreId,
      @JsonKey(name: "tmt_ar", defaultValue: "") required this.expensesTypeAr,
      @JsonKey(name: "tmt_en", defaultValue: "") required this.expensesTypeEn,
      @JsonKey(name: "amt_tot", defaultValue: "") required this.totalAmount,
      @JsonKey(name: "acl_status_code", defaultValue: "")
      required this.actualStatusCode,
      @JsonKey(name: "dt_created", defaultValue: "") required this.createdDate,
      @JsonKey(name: "are_desc_fo", defaultValue: "") required this.area,
      @JsonKey(name: "are_desc_en", defaultValue: "") required this.areaEn})
      : super._();

  factory _$PropertiesExpensesModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PropertiesExpensesModelImplFromJson(json);

  @override
  @JsonKey(name: "exp_id", defaultValue: "")
  final String expId;
  @override
  @JsonKey(name: "are_id", defaultValue: "")
  final String areId;
  @override
  @JsonKey(name: "are_are_id", defaultValue: "")
  final String areAreId;
  @override
  @JsonKey(name: "tmt_ar", defaultValue: "")
  final String expensesTypeAr;
  @override
  @JsonKey(name: "tmt_en", defaultValue: "")
  final String expensesTypeEn;
  @override
  @JsonKey(name: "amt_tot", defaultValue: "")
  final String totalAmount;
  @override
  @JsonKey(name: "acl_status_code", defaultValue: "")
  final String actualStatusCode;
  @override
  @JsonKey(name: "dt_created", defaultValue: "")
  final String createdDate;
  @override
  @JsonKey(name: "are_desc_fo", defaultValue: "")
  final String area;
  @override
  @JsonKey(name: "are_desc_en", defaultValue: "")
  final String areaEn;

  @override
  String toString() {
    return 'PropertiesExpensesModel(expId: $expId, areId: $areId, areAreId: $areAreId, expensesTypeAr: $expensesTypeAr, expensesTypeEn: $expensesTypeEn, totalAmount: $totalAmount, actualStatusCode: $actualStatusCode, createdDate: $createdDate, area: $area, areaEn: $areaEn)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PropertiesExpensesModelImpl &&
            (identical(other.expId, expId) || other.expId == expId) &&
            (identical(other.areId, areId) || other.areId == areId) &&
            (identical(other.areAreId, areAreId) ||
                other.areAreId == areAreId) &&
            (identical(other.expensesTypeAr, expensesTypeAr) ||
                other.expensesTypeAr == expensesTypeAr) &&
            (identical(other.expensesTypeEn, expensesTypeEn) ||
                other.expensesTypeEn == expensesTypeEn) &&
            (identical(other.totalAmount, totalAmount) ||
                other.totalAmount == totalAmount) &&
            (identical(other.actualStatusCode, actualStatusCode) ||
                other.actualStatusCode == actualStatusCode) &&
            (identical(other.createdDate, createdDate) ||
                other.createdDate == createdDate) &&
            (identical(other.area, area) || other.area == area) &&
            (identical(other.areaEn, areaEn) || other.areaEn == areaEn));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      expId,
      areId,
      areAreId,
      expensesTypeAr,
      expensesTypeEn,
      totalAmount,
      actualStatusCode,
      createdDate,
      area,
      areaEn);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PropertiesExpensesModelImplCopyWith<_$PropertiesExpensesModelImpl>
      get copyWith => __$$PropertiesExpensesModelImplCopyWithImpl<
          _$PropertiesExpensesModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PropertiesExpensesModelImplToJson(
      this,
    );
  }
}

abstract class _PropertiesExpensesModel extends PropertiesExpensesModel {
  const factory _PropertiesExpensesModel(
      {@JsonKey(name: "exp_id", defaultValue: "") required final String expId,
      @JsonKey(name: "are_id", defaultValue: "") required final String areId,
      @JsonKey(name: "are_are_id", defaultValue: "")
      required final String areAreId,
      @JsonKey(name: "tmt_ar", defaultValue: "")
      required final String expensesTypeAr,
      @JsonKey(name: "tmt_en", defaultValue: "")
      required final String expensesTypeEn,
      @JsonKey(name: "amt_tot", defaultValue: "")
      required final String totalAmount,
      @JsonKey(name: "acl_status_code", defaultValue: "")
      required final String actualStatusCode,
      @JsonKey(name: "dt_created", defaultValue: "")
      required final String createdDate,
      @JsonKey(name: "are_desc_fo", defaultValue: "")
      required final String area,
      @JsonKey(name: "are_desc_en", defaultValue: "")
      required final String areaEn}) = _$PropertiesExpensesModelImpl;
  const _PropertiesExpensesModel._() : super._();

  factory _PropertiesExpensesModel.fromJson(Map<String, dynamic> json) =
      _$PropertiesExpensesModelImpl.fromJson;

  @override
  @JsonKey(name: "exp_id", defaultValue: "")
  String get expId;
  @override
  @JsonKey(name: "are_id", defaultValue: "")
  String get areId;
  @override
  @JsonKey(name: "are_are_id", defaultValue: "")
  String get areAreId;
  @override
  @JsonKey(name: "tmt_ar", defaultValue: "")
  String get expensesTypeAr;
  @override
  @JsonKey(name: "tmt_en", defaultValue: "")
  String get expensesTypeEn;
  @override
  @JsonKey(name: "amt_tot", defaultValue: "")
  String get totalAmount;
  @override
  @JsonKey(name: "acl_status_code", defaultValue: "")
  String get actualStatusCode;
  @override
  @JsonKey(name: "dt_created", defaultValue: "")
  String get createdDate;
  @override
  @JsonKey(name: "are_desc_fo", defaultValue: "")
  String get area;
  @override
  @JsonKey(name: "are_desc_en", defaultValue: "")
  String get areaEn;
  @override
  @JsonKey(ignore: true)
  _$$PropertiesExpensesModelImplCopyWith<_$PropertiesExpensesModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
