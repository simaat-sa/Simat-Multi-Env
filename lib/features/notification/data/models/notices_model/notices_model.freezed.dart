// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notices_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NoticesModel _$NoticesModelFromJson(Map<String, dynamic> json) {
  return _NoticesModel.fromJson(json);
}

/// @nodoc
mixin _$NoticesModel {
  @JsonKey(name: 'alert_id')
  String get alertId => throw _privateConstructorUsedError;
  @JsonKey(name: 'alert_id')
  set alertId(String value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'alert_subject')
  String get alertSubject => throw _privateConstructorUsedError;
  @JsonKey(name: 'alert_subject')
  set alertSubject(String value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'alert_body')
  String get alertBody => throw _privateConstructorUsedError;
  @JsonKey(name: 'alert_body')
  set alertBody(String value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'dt_created')
  String get dtCreated => throw _privateConstructorUsedError;
  @JsonKey(name: 'dt_created')
  set dtCreated(String value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_read')
  NotifyStatus get isRead => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_read')
  set isRead(NotifyStatus value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NoticesModelCopyWith<NoticesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoticesModelCopyWith<$Res> {
  factory $NoticesModelCopyWith(
          NoticesModel value, $Res Function(NoticesModel) then) =
      _$NoticesModelCopyWithImpl<$Res, NoticesModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'alert_id') String alertId,
      @JsonKey(name: 'alert_subject') String alertSubject,
      @JsonKey(name: 'alert_body') String alertBody,
      @JsonKey(name: 'dt_created') String dtCreated,
      @JsonKey(name: 'is_read') NotifyStatus isRead});
}

/// @nodoc
class _$NoticesModelCopyWithImpl<$Res, $Val extends NoticesModel>
    implements $NoticesModelCopyWith<$Res> {
  _$NoticesModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? alertId = null,
    Object? alertSubject = null,
    Object? alertBody = null,
    Object? dtCreated = null,
    Object? isRead = null,
  }) {
    return _then(_value.copyWith(
      alertId: null == alertId
          ? _value.alertId
          : alertId // ignore: cast_nullable_to_non_nullable
              as String,
      alertSubject: null == alertSubject
          ? _value.alertSubject
          : alertSubject // ignore: cast_nullable_to_non_nullable
              as String,
      alertBody: null == alertBody
          ? _value.alertBody
          : alertBody // ignore: cast_nullable_to_non_nullable
              as String,
      dtCreated: null == dtCreated
          ? _value.dtCreated
          : dtCreated // ignore: cast_nullable_to_non_nullable
              as String,
      isRead: null == isRead
          ? _value.isRead
          : isRead // ignore: cast_nullable_to_non_nullable
              as NotifyStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NoticesModelImplCopyWith<$Res>
    implements $NoticesModelCopyWith<$Res> {
  factory _$$NoticesModelImplCopyWith(
          _$NoticesModelImpl value, $Res Function(_$NoticesModelImpl) then) =
      __$$NoticesModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'alert_id') String alertId,
      @JsonKey(name: 'alert_subject') String alertSubject,
      @JsonKey(name: 'alert_body') String alertBody,
      @JsonKey(name: 'dt_created') String dtCreated,
      @JsonKey(name: 'is_read') NotifyStatus isRead});
}

/// @nodoc
class __$$NoticesModelImplCopyWithImpl<$Res>
    extends _$NoticesModelCopyWithImpl<$Res, _$NoticesModelImpl>
    implements _$$NoticesModelImplCopyWith<$Res> {
  __$$NoticesModelImplCopyWithImpl(
      _$NoticesModelImpl _value, $Res Function(_$NoticesModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? alertId = null,
    Object? alertSubject = null,
    Object? alertBody = null,
    Object? dtCreated = null,
    Object? isRead = null,
  }) {
    return _then(_$NoticesModelImpl(
      alertId: null == alertId
          ? _value.alertId
          : alertId // ignore: cast_nullable_to_non_nullable
              as String,
      alertSubject: null == alertSubject
          ? _value.alertSubject
          : alertSubject // ignore: cast_nullable_to_non_nullable
              as String,
      alertBody: null == alertBody
          ? _value.alertBody
          : alertBody // ignore: cast_nullable_to_non_nullable
              as String,
      dtCreated: null == dtCreated
          ? _value.dtCreated
          : dtCreated // ignore: cast_nullable_to_non_nullable
              as String,
      isRead: null == isRead
          ? _value.isRead
          : isRead // ignore: cast_nullable_to_non_nullable
              as NotifyStatus,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$NoticesModelImpl extends _NoticesModel {
  _$NoticesModelImpl(
      {@JsonKey(name: 'alert_id') required this.alertId,
      @JsonKey(name: 'alert_subject') required this.alertSubject,
      @JsonKey(name: 'alert_body') required this.alertBody,
      @JsonKey(name: 'dt_created') required this.dtCreated,
      @JsonKey(name: 'is_read') required this.isRead})
      : super._();

  factory _$NoticesModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$NoticesModelImplFromJson(json);

  @override
  @JsonKey(name: 'alert_id')
  String alertId;
  @override
  @JsonKey(name: 'alert_subject')
  String alertSubject;
  @override
  @JsonKey(name: 'alert_body')
  String alertBody;
  @override
  @JsonKey(name: 'dt_created')
  String dtCreated;
  @override
  @JsonKey(name: 'is_read')
  NotifyStatus isRead;

  @override
  String toString() {
    return 'NoticesModel(alertId: $alertId, alertSubject: $alertSubject, alertBody: $alertBody, dtCreated: $dtCreated, isRead: $isRead)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NoticesModelImplCopyWith<_$NoticesModelImpl> get copyWith =>
      __$$NoticesModelImplCopyWithImpl<_$NoticesModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NoticesModelImplToJson(
      this,
    );
  }
}

abstract class _NoticesModel extends NoticesModel {
  factory _NoticesModel(
          {@JsonKey(name: 'alert_id') required String alertId,
          @JsonKey(name: 'alert_subject') required String alertSubject,
          @JsonKey(name: 'alert_body') required String alertBody,
          @JsonKey(name: 'dt_created') required String dtCreated,
          @JsonKey(name: 'is_read') required NotifyStatus isRead}) =
      _$NoticesModelImpl;
  _NoticesModel._() : super._();

  factory _NoticesModel.fromJson(Map<String, dynamic> json) =
      _$NoticesModelImpl.fromJson;

  @override
  @JsonKey(name: 'alert_id')
  String get alertId;
  @JsonKey(name: 'alert_id')
  set alertId(String value);
  @override
  @JsonKey(name: 'alert_subject')
  String get alertSubject;
  @JsonKey(name: 'alert_subject')
  set alertSubject(String value);
  @override
  @JsonKey(name: 'alert_body')
  String get alertBody;
  @JsonKey(name: 'alert_body')
  set alertBody(String value);
  @override
  @JsonKey(name: 'dt_created')
  String get dtCreated;
  @JsonKey(name: 'dt_created')
  set dtCreated(String value);
  @override
  @JsonKey(name: 'is_read')
  NotifyStatus get isRead;
  @JsonKey(name: 'is_read')
  set isRead(NotifyStatus value);
  @override
  @JsonKey(ignore: true)
  _$$NoticesModelImplCopyWith<_$NoticesModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
