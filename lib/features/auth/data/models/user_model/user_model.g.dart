// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserModelImpl _$$UserModelImplFromJson(Map<String, dynamic> json) =>
    _$UserModelImpl(
      userType:
          $enumDecodeNullable(_$UserTypesEnumMap, json['user_type_code']) ??
              UserTypes.non,
      userid: json['userid'] as String,
      userToken: json['user_token'] as String,
      username: json['username'] as String,
      userAvatar: json['user_avatar'] as String? ?? '',
      userMobile: json['usermobile'] as String,
      userEmail: json['useremail'] as String,
      userActive: json['user_active'] as String,
      userLang: json['user_lang'] as String,
      userLastOnline: json['user_lastonline'] as String,
      userFullname: json['user_fullname'] as String,
      userFullnameEn: json['user_fullname_en'] as String,
      active: json['active'] as String,
      uuid: json['uuid'] as String,
      userAccess: (json['app_page_access'] as List<dynamic>?)
              ?.map((e) => UserAccessModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$$UserModelImplToJson(_$UserModelImpl instance) =>
    <String, dynamic>{
      'user_type_code': _$UserTypesEnumMap[instance.userType]!,
      'userid': instance.userid,
      'user_token': instance.userToken,
      'username': instance.username,
      'user_avatar': instance.userAvatar,
      'usermobile': instance.userMobile,
      'useremail': instance.userEmail,
      'user_active': instance.userActive,
      'user_lang': instance.userLang,
      'user_lastonline': instance.userLastOnline,
      'user_fullname': instance.userFullname,
      'user_fullname_en': instance.userFullnameEn,
      'active': instance.active,
      'uuid': instance.uuid,
      'app_page_access': instance.userAccess.map((e) => e.toJson()).toList(),
    };

const _$UserTypesEnumMap = {
  UserTypes.owner: 'owner',
  UserTypes.client: 'client',
  UserTypes.non: '',
};
