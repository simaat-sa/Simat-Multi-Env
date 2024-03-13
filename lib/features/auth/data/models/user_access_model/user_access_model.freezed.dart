// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_access_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserAccessModel _$UserAccessModelFromJson(Map<String, dynamic> json) {
  return _UserAccessModel.fromJson(json);
}

/// @nodoc
mixin _$UserAccessModel {
  String get pageid => throw _privateConstructorUsedError;
  set pageid(String value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'page_code')
  AccessPages get pageCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'page_code')
  set pageCode(AccessPages value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'page_ar')
  String get pageAr => throw _privateConstructorUsedError;
  @JsonKey(name: 'page_ar')
  set pageAr(String value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'page_en')
  String get pageEn => throw _privateConstructorUsedError;
  @JsonKey(name: 'page_en')
  set pageEn(String value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_root')
  String get isRoot => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_root')
  set isRoot(String value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'page_active')
  String get pageActive => throw _privateConstructorUsedError;
  @JsonKey(name: 'page_active')
  set pageActive(String value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'page_image')
  String get pageImage => throw _privateConstructorUsedError;
  @JsonKey(name: 'page_image')
  set pageImage(String value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'page_desc')
  String get pageDesc => throw _privateConstructorUsedError;
  @JsonKey(name: 'page_desc')
  set pageDesc(String value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'page_name')
  String get pageName => throw _privateConstructorUsedError;
  @JsonKey(name: 'page_name')
  set pageName(String value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'icon_svg')
  String get iconSvg => throw _privateConstructorUsedError;
  @JsonKey(name: 'icon_svg')
  set iconSvg(String value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'page_order')
  String get pageOrder => throw _privateConstructorUsedError;
  @JsonKey(name: 'page_order')
  set pageOrder(String value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserAccessModelCopyWith<UserAccessModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserAccessModelCopyWith<$Res> {
  factory $UserAccessModelCopyWith(
          UserAccessModel value, $Res Function(UserAccessModel) then) =
      _$UserAccessModelCopyWithImpl<$Res, UserAccessModel>;
  @useResult
  $Res call(
      {String pageid,
      @JsonKey(name: 'page_code') AccessPages pageCode,
      @JsonKey(name: 'page_ar') String pageAr,
      @JsonKey(name: 'page_en') String pageEn,
      @JsonKey(name: 'is_root') String isRoot,
      @JsonKey(name: 'page_active') String pageActive,
      @JsonKey(name: 'page_image') String pageImage,
      @JsonKey(name: 'page_desc') String pageDesc,
      @JsonKey(name: 'page_name') String pageName,
      @JsonKey(name: 'icon_svg') String iconSvg,
      @JsonKey(name: 'page_order') String pageOrder});
}

/// @nodoc
class _$UserAccessModelCopyWithImpl<$Res, $Val extends UserAccessModel>
    implements $UserAccessModelCopyWith<$Res> {
  _$UserAccessModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageid = null,
    Object? pageCode = null,
    Object? pageAr = null,
    Object? pageEn = null,
    Object? isRoot = null,
    Object? pageActive = null,
    Object? pageImage = null,
    Object? pageDesc = null,
    Object? pageName = null,
    Object? iconSvg = null,
    Object? pageOrder = null,
  }) {
    return _then(_value.copyWith(
      pageid: null == pageid
          ? _value.pageid
          : pageid // ignore: cast_nullable_to_non_nullable
              as String,
      pageCode: null == pageCode
          ? _value.pageCode
          : pageCode // ignore: cast_nullable_to_non_nullable
              as AccessPages,
      pageAr: null == pageAr
          ? _value.pageAr
          : pageAr // ignore: cast_nullable_to_non_nullable
              as String,
      pageEn: null == pageEn
          ? _value.pageEn
          : pageEn // ignore: cast_nullable_to_non_nullable
              as String,
      isRoot: null == isRoot
          ? _value.isRoot
          : isRoot // ignore: cast_nullable_to_non_nullable
              as String,
      pageActive: null == pageActive
          ? _value.pageActive
          : pageActive // ignore: cast_nullable_to_non_nullable
              as String,
      pageImage: null == pageImage
          ? _value.pageImage
          : pageImage // ignore: cast_nullable_to_non_nullable
              as String,
      pageDesc: null == pageDesc
          ? _value.pageDesc
          : pageDesc // ignore: cast_nullable_to_non_nullable
              as String,
      pageName: null == pageName
          ? _value.pageName
          : pageName // ignore: cast_nullable_to_non_nullable
              as String,
      iconSvg: null == iconSvg
          ? _value.iconSvg
          : iconSvg // ignore: cast_nullable_to_non_nullable
              as String,
      pageOrder: null == pageOrder
          ? _value.pageOrder
          : pageOrder // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserAccessModelImplCopyWith<$Res>
    implements $UserAccessModelCopyWith<$Res> {
  factory _$$UserAccessModelImplCopyWith(_$UserAccessModelImpl value,
          $Res Function(_$UserAccessModelImpl) then) =
      __$$UserAccessModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String pageid,
      @JsonKey(name: 'page_code') AccessPages pageCode,
      @JsonKey(name: 'page_ar') String pageAr,
      @JsonKey(name: 'page_en') String pageEn,
      @JsonKey(name: 'is_root') String isRoot,
      @JsonKey(name: 'page_active') String pageActive,
      @JsonKey(name: 'page_image') String pageImage,
      @JsonKey(name: 'page_desc') String pageDesc,
      @JsonKey(name: 'page_name') String pageName,
      @JsonKey(name: 'icon_svg') String iconSvg,
      @JsonKey(name: 'page_order') String pageOrder});
}

/// @nodoc
class __$$UserAccessModelImplCopyWithImpl<$Res>
    extends _$UserAccessModelCopyWithImpl<$Res, _$UserAccessModelImpl>
    implements _$$UserAccessModelImplCopyWith<$Res> {
  __$$UserAccessModelImplCopyWithImpl(
      _$UserAccessModelImpl _value, $Res Function(_$UserAccessModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageid = null,
    Object? pageCode = null,
    Object? pageAr = null,
    Object? pageEn = null,
    Object? isRoot = null,
    Object? pageActive = null,
    Object? pageImage = null,
    Object? pageDesc = null,
    Object? pageName = null,
    Object? iconSvg = null,
    Object? pageOrder = null,
  }) {
    return _then(_$UserAccessModelImpl(
      pageid: null == pageid
          ? _value.pageid
          : pageid // ignore: cast_nullable_to_non_nullable
              as String,
      pageCode: null == pageCode
          ? _value.pageCode
          : pageCode // ignore: cast_nullable_to_non_nullable
              as AccessPages,
      pageAr: null == pageAr
          ? _value.pageAr
          : pageAr // ignore: cast_nullable_to_non_nullable
              as String,
      pageEn: null == pageEn
          ? _value.pageEn
          : pageEn // ignore: cast_nullable_to_non_nullable
              as String,
      isRoot: null == isRoot
          ? _value.isRoot
          : isRoot // ignore: cast_nullable_to_non_nullable
              as String,
      pageActive: null == pageActive
          ? _value.pageActive
          : pageActive // ignore: cast_nullable_to_non_nullable
              as String,
      pageImage: null == pageImage
          ? _value.pageImage
          : pageImage // ignore: cast_nullable_to_non_nullable
              as String,
      pageDesc: null == pageDesc
          ? _value.pageDesc
          : pageDesc // ignore: cast_nullable_to_non_nullable
              as String,
      pageName: null == pageName
          ? _value.pageName
          : pageName // ignore: cast_nullable_to_non_nullable
              as String,
      iconSvg: null == iconSvg
          ? _value.iconSvg
          : iconSvg // ignore: cast_nullable_to_non_nullable
              as String,
      pageOrder: null == pageOrder
          ? _value.pageOrder
          : pageOrder // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$UserAccessModelImpl extends _UserAccessModel {
  _$UserAccessModelImpl(
      {required this.pageid,
      @JsonKey(name: 'page_code') required this.pageCode,
      @JsonKey(name: 'page_ar') required this.pageAr,
      @JsonKey(name: 'page_en') required this.pageEn,
      @JsonKey(name: 'is_root') required this.isRoot,
      @JsonKey(name: 'page_active') required this.pageActive,
      @JsonKey(name: 'page_image') required this.pageImage,
      @JsonKey(name: 'page_desc') required this.pageDesc,
      @JsonKey(name: 'page_name') required this.pageName,
      @JsonKey(name: 'icon_svg') required this.iconSvg,
      @JsonKey(name: 'page_order') required this.pageOrder})
      : super._();

  factory _$UserAccessModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserAccessModelImplFromJson(json);

  @override
  String pageid;
  @override
  @JsonKey(name: 'page_code')
  AccessPages pageCode;
  @override
  @JsonKey(name: 'page_ar')
  String pageAr;
  @override
  @JsonKey(name: 'page_en')
  String pageEn;
  @override
  @JsonKey(name: 'is_root')
  String isRoot;
  @override
  @JsonKey(name: 'page_active')
  String pageActive;
  @override
  @JsonKey(name: 'page_image')
  String pageImage;
  @override
  @JsonKey(name: 'page_desc')
  String pageDesc;
  @override
  @JsonKey(name: 'page_name')
  String pageName;
  @override
  @JsonKey(name: 'icon_svg')
  String iconSvg;
  @override
  @JsonKey(name: 'page_order')
  String pageOrder;

  @override
  String toString() {
    return 'UserAccessModel(pageid: $pageid, pageCode: $pageCode, pageAr: $pageAr, pageEn: $pageEn, isRoot: $isRoot, pageActive: $pageActive, pageImage: $pageImage, pageDesc: $pageDesc, pageName: $pageName, iconSvg: $iconSvg, pageOrder: $pageOrder)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserAccessModelImplCopyWith<_$UserAccessModelImpl> get copyWith =>
      __$$UserAccessModelImplCopyWithImpl<_$UserAccessModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserAccessModelImplToJson(
      this,
    );
  }
}

abstract class _UserAccessModel extends UserAccessModel {
  factory _UserAccessModel(
          {required String pageid,
          @JsonKey(name: 'page_code') required AccessPages pageCode,
          @JsonKey(name: 'page_ar') required String pageAr,
          @JsonKey(name: 'page_en') required String pageEn,
          @JsonKey(name: 'is_root') required String isRoot,
          @JsonKey(name: 'page_active') required String pageActive,
          @JsonKey(name: 'page_image') required String pageImage,
          @JsonKey(name: 'page_desc') required String pageDesc,
          @JsonKey(name: 'page_name') required String pageName,
          @JsonKey(name: 'icon_svg') required String iconSvg,
          @JsonKey(name: 'page_order') required String pageOrder}) =
      _$UserAccessModelImpl;
  _UserAccessModel._() : super._();

  factory _UserAccessModel.fromJson(Map<String, dynamic> json) =
      _$UserAccessModelImpl.fromJson;

  @override
  String get pageid;
  set pageid(String value);
  @override
  @JsonKey(name: 'page_code')
  AccessPages get pageCode;
  @JsonKey(name: 'page_code')
  set pageCode(AccessPages value);
  @override
  @JsonKey(name: 'page_ar')
  String get pageAr;
  @JsonKey(name: 'page_ar')
  set pageAr(String value);
  @override
  @JsonKey(name: 'page_en')
  String get pageEn;
  @JsonKey(name: 'page_en')
  set pageEn(String value);
  @override
  @JsonKey(name: 'is_root')
  String get isRoot;
  @JsonKey(name: 'is_root')
  set isRoot(String value);
  @override
  @JsonKey(name: 'page_active')
  String get pageActive;
  @JsonKey(name: 'page_active')
  set pageActive(String value);
  @override
  @JsonKey(name: 'page_image')
  String get pageImage;
  @JsonKey(name: 'page_image')
  set pageImage(String value);
  @override
  @JsonKey(name: 'page_desc')
  String get pageDesc;
  @JsonKey(name: 'page_desc')
  set pageDesc(String value);
  @override
  @JsonKey(name: 'page_name')
  String get pageName;
  @JsonKey(name: 'page_name')
  set pageName(String value);
  @override
  @JsonKey(name: 'icon_svg')
  String get iconSvg;
  @JsonKey(name: 'icon_svg')
  set iconSvg(String value);
  @override
  @JsonKey(name: 'page_order')
  String get pageOrder;
  @JsonKey(name: 'page_order')
  set pageOrder(String value);
  @override
  @JsonKey(ignore: true)
  _$$UserAccessModelImplCopyWith<_$UserAccessModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
