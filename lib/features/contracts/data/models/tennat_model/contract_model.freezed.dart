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
  @JsonKey(name: 'maint_id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'contact_name', defaultValue: "")
  String get createdBy => throw _privateConstructorUsedError;
  @JsonKey(name: 'maint_desc', defaultValue: "")
  String get desc => throw _privateConstructorUsedError;
  @JsonKey(name: 'maint_code')
  String get code => throw _privateConstructorUsedError;
  @JsonKey(name: 'are_desc_fo', defaultValue: "")
  String get unitName => throw _privateConstructorUsedError;
  @JsonKey(name: 'approx_cost', defaultValue: "0")
  String get approxCost => throw _privateConstructorUsedError;
  @JsonKey(name: 'actual_cost', defaultValue: "0")
  String get actualCost => throw _privateConstructorUsedError;
  @JsonKey(name: 'acl_status_code')
  ContractStatus get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'dt_created')
  String get createdDateTimeStamp => throw _privateConstructorUsedError;

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
      {@JsonKey(name: 'maint_id') String id,
      @JsonKey(name: 'contact_name', defaultValue: "") String createdBy,
      @JsonKey(name: 'maint_desc', defaultValue: "") String desc,
      @JsonKey(name: 'maint_code') String code,
      @JsonKey(name: 'are_desc_fo', defaultValue: "") String unitName,
      @JsonKey(name: 'approx_cost', defaultValue: "0") String approxCost,
      @JsonKey(name: 'actual_cost', defaultValue: "0") String actualCost,
      @JsonKey(name: 'acl_status_code') ContractStatus status,
      @JsonKey(name: 'dt_created') String createdDateTimeStamp});
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
    Object? id = null,
    Object? createdBy = null,
    Object? desc = null,
    Object? code = null,
    Object? unitName = null,
    Object? approxCost = null,
    Object? actualCost = null,
    Object? status = null,
    Object? createdDateTimeStamp = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      createdBy: null == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String,
      desc: null == desc
          ? _value.desc
          : desc // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      unitName: null == unitName
          ? _value.unitName
          : unitName // ignore: cast_nullable_to_non_nullable
              as String,
      approxCost: null == approxCost
          ? _value.approxCost
          : approxCost // ignore: cast_nullable_to_non_nullable
              as String,
      actualCost: null == actualCost
          ? _value.actualCost
          : actualCost // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ContractStatus,
      createdDateTimeStamp: null == createdDateTimeStamp
          ? _value.createdDateTimeStamp
          : createdDateTimeStamp // ignore: cast_nullable_to_non_nullable
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
      {@JsonKey(name: 'maint_id') String id,
      @JsonKey(name: 'contact_name', defaultValue: "") String createdBy,
      @JsonKey(name: 'maint_desc', defaultValue: "") String desc,
      @JsonKey(name: 'maint_code') String code,
      @JsonKey(name: 'are_desc_fo', defaultValue: "") String unitName,
      @JsonKey(name: 'approx_cost', defaultValue: "0") String approxCost,
      @JsonKey(name: 'actual_cost', defaultValue: "0") String actualCost,
      @JsonKey(name: 'acl_status_code') ContractStatus status,
      @JsonKey(name: 'dt_created') String createdDateTimeStamp});
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
    Object? id = null,
    Object? createdBy = null,
    Object? desc = null,
    Object? code = null,
    Object? unitName = null,
    Object? approxCost = null,
    Object? actualCost = null,
    Object? status = null,
    Object? createdDateTimeStamp = null,
  }) {
    return _then(_$ContractModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      createdBy: null == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String,
      desc: null == desc
          ? _value.desc
          : desc // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      unitName: null == unitName
          ? _value.unitName
          : unitName // ignore: cast_nullable_to_non_nullable
              as String,
      approxCost: null == approxCost
          ? _value.approxCost
          : approxCost // ignore: cast_nullable_to_non_nullable
              as String,
      actualCost: null == actualCost
          ? _value.actualCost
          : actualCost // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ContractStatus,
      createdDateTimeStamp: null == createdDateTimeStamp
          ? _value.createdDateTimeStamp
          : createdDateTimeStamp // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$ContractModelImpl extends _ContractModel {
  _$ContractModelImpl(
      {@JsonKey(name: 'maint_id') required this.id,
      @JsonKey(name: 'contact_name', defaultValue: "") required this.createdBy,
      @JsonKey(name: 'maint_desc', defaultValue: "") required this.desc,
      @JsonKey(name: 'maint_code') required this.code,
      @JsonKey(name: 'are_desc_fo', defaultValue: "") required this.unitName,
      @JsonKey(name: 'approx_cost', defaultValue: "0") required this.approxCost,
      @JsonKey(name: 'actual_cost', defaultValue: "0") required this.actualCost,
      @JsonKey(name: 'acl_status_code') required this.status,
      @JsonKey(name: 'dt_created') required this.createdDateTimeStamp})
      : super._();

  factory _$ContractModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ContractModelImplFromJson(json);

  @override
  @JsonKey(name: 'maint_id')
  final String id;
  @override
  @JsonKey(name: 'contact_name', defaultValue: "")
  final String createdBy;
  @override
  @JsonKey(name: 'maint_desc', defaultValue: "")
  final String desc;
  @override
  @JsonKey(name: 'maint_code')
  final String code;
  @override
  @JsonKey(name: 'are_desc_fo', defaultValue: "")
  final String unitName;
  @override
  @JsonKey(name: 'approx_cost', defaultValue: "0")
  final String approxCost;
  @override
  @JsonKey(name: 'actual_cost', defaultValue: "0")
  final String actualCost;
  @override
  @JsonKey(name: 'acl_status_code')
  final ContractStatus status;
  @override
  @JsonKey(name: 'dt_created')
  final String createdDateTimeStamp;

  @override
  String toString() {
    return 'ContractModel(id: $id, createdBy: $createdBy, desc: $desc, code: $code, unitName: $unitName, approxCost: $approxCost, actualCost: $actualCost, status: $status, createdDateTimeStamp: $createdDateTimeStamp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContractModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy) &&
            (identical(other.desc, desc) || other.desc == desc) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.unitName, unitName) ||
                other.unitName == unitName) &&
            (identical(other.approxCost, approxCost) ||
                other.approxCost == approxCost) &&
            (identical(other.actualCost, actualCost) ||
                other.actualCost == actualCost) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.createdDateTimeStamp, createdDateTimeStamp) ||
                other.createdDateTimeStamp == createdDateTimeStamp));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, createdBy, desc, code,
      unitName, approxCost, actualCost, status, createdDateTimeStamp);

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
      {@JsonKey(name: 'maint_id') required final String id,
      @JsonKey(name: 'contact_name', defaultValue: "")
      required final String createdBy,
      @JsonKey(name: 'maint_desc', defaultValue: "") required final String desc,
      @JsonKey(name: 'maint_code') required final String code,
      @JsonKey(name: 'are_desc_fo', defaultValue: "")
      required final String unitName,
      @JsonKey(name: 'approx_cost', defaultValue: "0")
      required final String approxCost,
      @JsonKey(name: 'actual_cost', defaultValue: "0")
      required final String actualCost,
      @JsonKey(name: 'acl_status_code') required final ContractStatus status,
      @JsonKey(name: 'dt_created')
      required final String createdDateTimeStamp}) = _$ContractModelImpl;
  _ContractModel._() : super._();

  factory _ContractModel.fromJson(Map<String, dynamic> json) =
      _$ContractModelImpl.fromJson;

  @override
  @JsonKey(name: 'maint_id')
  String get id;
  @override
  @JsonKey(name: 'contact_name', defaultValue: "")
  String get createdBy;
  @override
  @JsonKey(name: 'maint_desc', defaultValue: "")
  String get desc;
  @override
  @JsonKey(name: 'maint_code')
  String get code;
  @override
  @JsonKey(name: 'are_desc_fo', defaultValue: "")
  String get unitName;
  @override
  @JsonKey(name: 'approx_cost', defaultValue: "0")
  String get approxCost;
  @override
  @JsonKey(name: 'actual_cost', defaultValue: "0")
  String get actualCost;
  @override
  @JsonKey(name: 'acl_status_code')
  ContractStatus get status;
  @override
  @JsonKey(name: 'dt_created')
  String get createdDateTimeStamp;
  @override
  @JsonKey(ignore: true)
  _$$ContractModelImplCopyWith<_$ContractModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
