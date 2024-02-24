// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserModel _$UserModelFromJson(Map<String, dynamic> json) {
  return _UserModel.fromJson(json);
}

/// @nodoc
mixin _$UserModel {
  @JsonKey(name: "user_type_code")
  String get userTypeCode => throw _privateConstructorUsedError;
  @JsonKey(name: "userid")
  String get userid => throw _privateConstructorUsedError;
  @JsonKey(name: "user_token")
  String get userToken => throw _privateConstructorUsedError;
  @JsonKey(name: "username")
  String get username => throw _privateConstructorUsedError;
  @JsonKey(name: "user_avatar", defaultValue: "")
  String get userAvatar => throw _privateConstructorUsedError;
  @JsonKey(name: "usermobile")
  String get userMobile => throw _privateConstructorUsedError;
  @JsonKey(name: "useremail")
  String get userEmail => throw _privateConstructorUsedError;
  @JsonKey(name: "user_active")
  String get userActive => throw _privateConstructorUsedError;
  @JsonKey(name: "user_lang")
  String get userLang => throw _privateConstructorUsedError;
  @JsonKey(name: "user_lastonline")
  String get userLastOnline => throw _privateConstructorUsedError;
  @JsonKey(name: "user_fullname")
  String get userFullname => throw _privateConstructorUsedError;
  @JsonKey(name: "user_fullname_en")
  String get userFullnameEn => throw _privateConstructorUsedError;
  @JsonKey(name: "active")
  String get active => throw _privateConstructorUsedError;
  @JsonKey(name: "uuid")
  String get uuid => throw _privateConstructorUsedError;
  @JsonKey(name: "app_page_access", defaultValue: [])
  List<UserAccessModel> get userAccess => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserModelCopyWith<UserModel> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserModelCopyWith<$Res> {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) then) =
      _$UserModelCopyWithImpl<$Res, UserModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "user_type_code") String userTypeCode,
      @JsonKey(name: "userid") String userid,
      @JsonKey(name: "user_token") String userToken,
      @JsonKey(name: "username") String username,
      @JsonKey(name: "user_avatar", defaultValue: "") String userAvatar,
      @JsonKey(name: "usermobile") String userMobile,
      @JsonKey(name: "useremail") String userEmail,
      @JsonKey(name: "user_active") String userActive,
      @JsonKey(name: "user_lang") String userLang,
      @JsonKey(name: "user_lastonline") String userLastOnline,
      @JsonKey(name: "user_fullname") String userFullname,
      @JsonKey(name: "user_fullname_en") String userFullnameEn,
      @JsonKey(name: "active") String active,
      @JsonKey(name: "uuid") String uuid,
      @JsonKey(name: "app_page_access", defaultValue: []) List<UserAccessModel> userAccess});
}

/// @nodoc
class _$UserModelCopyWithImpl<$Res, $Val extends UserModel> implements $UserModelCopyWith<$Res> {
  _$UserModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userTypeCode = null,
    Object? userid = null,
    Object? userToken = null,
    Object? username = null,
    Object? userAvatar = null,
    Object? userMobile = null,
    Object? userEmail = null,
    Object? userActive = null,
    Object? userLang = null,
    Object? userLastOnline = null,
    Object? userFullname = null,
    Object? userFullnameEn = null,
    Object? active = null,
    Object? uuid = null,
    Object? userAccess = null,
  }) {
    return _then(_value.copyWith(
      userTypeCode: null == userTypeCode
          ? _value.userTypeCode
          : userTypeCode // ignore: cast_nullable_to_non_nullable
              as String,
      userid: null == userid
          ? _value.userid
          : userid // ignore: cast_nullable_to_non_nullable
              as String,
      userToken: null == userToken
          ? _value.userToken
          : userToken // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      userAvatar: null == userAvatar
          ? _value.userAvatar
          : userAvatar // ignore: cast_nullable_to_non_nullable
              as String,
      userMobile: null == userMobile
          ? _value.userMobile
          : userMobile // ignore: cast_nullable_to_non_nullable
              as String,
      userEmail: null == userEmail
          ? _value.userEmail
          : userEmail // ignore: cast_nullable_to_non_nullable
              as String,
      userActive: null == userActive
          ? _value.userActive
          : userActive // ignore: cast_nullable_to_non_nullable
              as String,
      userLang: null == userLang
          ? _value.userLang
          : userLang // ignore: cast_nullable_to_non_nullable
              as String,
      userLastOnline: null == userLastOnline
          ? _value.userLastOnline
          : userLastOnline // ignore: cast_nullable_to_non_nullable
              as String,
      userFullname: null == userFullname
          ? _value.userFullname
          : userFullname // ignore: cast_nullable_to_non_nullable
              as String,
      userFullnameEn: null == userFullnameEn
          ? _value.userFullnameEn
          : userFullnameEn // ignore: cast_nullable_to_non_nullable
              as String,
      active: null == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as String,
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      userAccess: null == userAccess
          ? _value.userAccess
          : userAccess // ignore: cast_nullable_to_non_nullable
              as List<UserAccessModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserModelImplCopyWith<$Res> implements $UserModelCopyWith<$Res> {
  factory _$$UserModelImplCopyWith(_$UserModelImpl value, $Res Function(_$UserModelImpl) then) =
      __$$UserModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "user_type_code") String userTypeCode,
      @JsonKey(name: "userid") String userid,
      @JsonKey(name: "user_token") String userToken,
      @JsonKey(name: "username") String username,
      @JsonKey(name: "user_avatar", defaultValue: "") String userAvatar,
      @JsonKey(name: "usermobile") String userMobile,
      @JsonKey(name: "useremail") String userEmail,
      @JsonKey(name: "user_active") String userActive,
      @JsonKey(name: "user_lang") String userLang,
      @JsonKey(name: "user_lastonline") String userLastOnline,
      @JsonKey(name: "user_fullname") String userFullname,
      @JsonKey(name: "user_fullname_en") String userFullnameEn,
      @JsonKey(name: "active") String active,
      @JsonKey(name: "uuid") String uuid,
      @JsonKey(name: "app_page_access", defaultValue: []) List<UserAccessModel> userAccess});
}

/// @nodoc
class __$$UserModelImplCopyWithImpl<$Res> extends _$UserModelCopyWithImpl<$Res, _$UserModelImpl>
    implements _$$UserModelImplCopyWith<$Res> {
  __$$UserModelImplCopyWithImpl(_$UserModelImpl _value, $Res Function(_$UserModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userTypeCode = null,
    Object? userid = null,
    Object? userToken = null,
    Object? username = null,
    Object? userAvatar = null,
    Object? userMobile = null,
    Object? userEmail = null,
    Object? userActive = null,
    Object? userLang = null,
    Object? userLastOnline = null,
    Object? userFullname = null,
    Object? userFullnameEn = null,
    Object? active = null,
    Object? uuid = null,
    Object? userAccess = null,
  }) {
    return _then(_$UserModelImpl(
      userTypeCode: null == userTypeCode
          ? _value.userTypeCode
          : userTypeCode // ignore: cast_nullable_to_non_nullable
              as String,
      userid: null == userid
          ? _value.userid
          : userid // ignore: cast_nullable_to_non_nullable
              as String,
      userToken: null == userToken
          ? _value.userToken
          : userToken // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      userAvatar: null == userAvatar
          ? _value.userAvatar
          : userAvatar // ignore: cast_nullable_to_non_nullable
              as String,
      userMobile: null == userMobile
          ? _value.userMobile
          : userMobile // ignore: cast_nullable_to_non_nullable
              as String,
      userEmail: null == userEmail
          ? _value.userEmail
          : userEmail // ignore: cast_nullable_to_non_nullable
              as String,
      userActive: null == userActive
          ? _value.userActive
          : userActive // ignore: cast_nullable_to_non_nullable
              as String,
      userLang: null == userLang
          ? _value.userLang
          : userLang // ignore: cast_nullable_to_non_nullable
              as String,
      userLastOnline: null == userLastOnline
          ? _value.userLastOnline
          : userLastOnline // ignore: cast_nullable_to_non_nullable
              as String,
      userFullname: null == userFullname
          ? _value.userFullname
          : userFullname // ignore: cast_nullable_to_non_nullable
              as String,
      userFullnameEn: null == userFullnameEn
          ? _value.userFullnameEn
          : userFullnameEn // ignore: cast_nullable_to_non_nullable
              as String,
      active: null == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as String,
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      userAccess: null == userAccess
          ? _value._userAccess
          : userAccess // ignore: cast_nullable_to_non_nullable
              as List<UserAccessModel>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$UserModelImpl extends _UserModel {
  const _$UserModelImpl(
      {@JsonKey(name: "user_type_code") required this.userTypeCode,
      @JsonKey(name: "userid") required this.userid,
      @JsonKey(name: "user_token") required this.userToken,
      @JsonKey(name: "username") required this.username,
      @JsonKey(name: "user_avatar", defaultValue: "") required this.userAvatar,
      @JsonKey(name: "usermobile") required this.userMobile,
      @JsonKey(name: "useremail") required this.userEmail,
      @JsonKey(name: "user_active") required this.userActive,
      @JsonKey(name: "user_lang") required this.userLang,
      @JsonKey(name: "user_lastonline") required this.userLastOnline,
      @JsonKey(name: "user_fullname") required this.userFullname,
      @JsonKey(name: "user_fullname_en") required this.userFullnameEn,
      @JsonKey(name: "active") required this.active,
      @JsonKey(name: "uuid") required this.uuid,
      @JsonKey(name: "app_page_access", defaultValue: [])
      required final List<UserAccessModel> userAccess})
      : _userAccess = userAccess,
        super._();

  factory _$UserModelImpl.fromJson(Map<String, dynamic> json) => _$$UserModelImplFromJson(json);

  @override
  @JsonKey(name: "user_type_code")
  final String userTypeCode;
  @override
  @JsonKey(name: "userid")
  final String userid;
  @override
  @JsonKey(name: "user_token")
  final String userToken;
  @override
  @JsonKey(name: "username")
  final String username;
  @override
  @JsonKey(name: "user_avatar", defaultValue: "")
  final String userAvatar;
  @override
  @JsonKey(name: "usermobile")
  final String userMobile;
  @override
  @JsonKey(name: "useremail")
  final String userEmail;
  @override
  @JsonKey(name: "user_active")
  final String userActive;
  @override
  @JsonKey(name: "user_lang")
  final String userLang;
  @override
  @JsonKey(name: "user_lastonline")
  final String userLastOnline;
  @override
  @JsonKey(name: "user_fullname")
  final String userFullname;
  @override
  @JsonKey(name: "user_fullname_en")
  final String userFullnameEn;
  @override
  @JsonKey(name: "active")
  final String active;
  @override
  @JsonKey(name: "uuid")
  final String uuid;
  final List<UserAccessModel> _userAccess;
  @override
  @JsonKey(name: "app_page_access", defaultValue: [])
  List<UserAccessModel> get userAccess {
    if (_userAccess is EqualUnmodifiableListView) return _userAccess;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_userAccess);
  }

  @override
  String toString() {
    return 'UserModel(userTypeCode: $userTypeCode, userid: $userid, userToken: $userToken, username: $username, userAvatar: $userAvatar, userMobile: $userMobile, userEmail: $userEmail, userActive: $userActive, userLang: $userLang, userLastOnline: $userLastOnline, userFullname: $userFullname, userFullnameEn: $userFullnameEn, active: $active, uuid: $uuid, userAccess: $userAccess)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserModelImpl &&
            (identical(other.userTypeCode, userTypeCode) || other.userTypeCode == userTypeCode) &&
            (identical(other.userid, userid) || other.userid == userid) &&
            (identical(other.userToken, userToken) || other.userToken == userToken) &&
            (identical(other.username, username) || other.username == username) &&
            (identical(other.userAvatar, userAvatar) || other.userAvatar == userAvatar) &&
            (identical(other.userMobile, userMobile) || other.userMobile == userMobile) &&
            (identical(other.userEmail, userEmail) || other.userEmail == userEmail) &&
            (identical(other.userActive, userActive) || other.userActive == userActive) &&
            (identical(other.userLang, userLang) || other.userLang == userLang) &&
            (identical(other.userLastOnline, userLastOnline) ||
                other.userLastOnline == userLastOnline) &&
            (identical(other.userFullname, userFullname) || other.userFullname == userFullname) &&
            (identical(other.userFullnameEn, userFullnameEn) ||
                other.userFullnameEn == userFullnameEn) &&
            (identical(other.active, active) || other.active == active) &&
            (identical(other.uuid, uuid) || other.uuid == uuid) &&
            const DeepCollectionEquality().equals(other._userAccess, _userAccess));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      userTypeCode,
      userid,
      userToken,
      username,
      userAvatar,
      userMobile,
      userEmail,
      userActive,
      userLang,
      userLastOnline,
      userFullname,
      userFullnameEn,
      active,
      uuid,
      const DeepCollectionEquality().hash(_userAccess));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserModelImplCopyWith<_$UserModelImpl> get copyWith =>
      __$$UserModelImplCopyWithImpl<_$UserModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserModelImplToJson(
      this,
    );
  }
}

abstract class _UserModel extends UserModel {
  const factory _UserModel(
      {@JsonKey(name: "user_type_code") required final String userTypeCode,
      @JsonKey(name: "userid") required final String userid,
      @JsonKey(name: "user_token") required final String userToken,
      @JsonKey(name: "username") required final String username,
      @JsonKey(name: "user_avatar", defaultValue: "") required final String userAvatar,
      @JsonKey(name: "usermobile") required final String userMobile,
      @JsonKey(name: "useremail") required final String userEmail,
      @JsonKey(name: "user_active") required final String userActive,
      @JsonKey(name: "user_lang") required final String userLang,
      @JsonKey(name: "user_lastonline") required final String userLastOnline,
      @JsonKey(name: "user_fullname") required final String userFullname,
      @JsonKey(name: "user_fullname_en") required final String userFullnameEn,
      @JsonKey(name: "active") required final String active,
      @JsonKey(name: "uuid") required final String uuid,
      @JsonKey(name: "app_page_access", defaultValue: [])
      required final List<UserAccessModel> userAccess}) = _$UserModelImpl;
  const _UserModel._() : super._();

  factory _UserModel.fromJson(Map<String, dynamic> json) = _$UserModelImpl.fromJson;

  @override
  @JsonKey(name: "user_type_code")
  String get userTypeCode;
  @override
  @JsonKey(name: "userid")
  String get userid;
  @override
  @JsonKey(name: "user_token")
  String get userToken;
  @override
  @JsonKey(name: "username")
  String get username;
  @override
  @JsonKey(name: "user_avatar", defaultValue: "")
  String get userAvatar;
  @override
  @JsonKey(name: "usermobile")
  String get userMobile;
  @override
  @JsonKey(name: "useremail")
  String get userEmail;
  @override
  @JsonKey(name: "user_active")
  String get userActive;
  @override
  @JsonKey(name: "user_lang")
  String get userLang;
  @override
  @JsonKey(name: "user_lastonline")
  String get userLastOnline;
  @override
  @JsonKey(name: "user_fullname")
  String get userFullname;
  @override
  @JsonKey(name: "user_fullname_en")
  String get userFullnameEn;
  @override
  @JsonKey(name: "active")
  String get active;
  @override
  @JsonKey(name: "uuid")
  String get uuid;
  @override
  @JsonKey(name: "app_page_access", defaultValue: [])
  List<UserAccessModel> get userAccess;
  @override
  @JsonKey(ignore: true)
  _$$UserModelImplCopyWith<_$UserModelImpl> get copyWith => throw _privateConstructorUsedError;
}
