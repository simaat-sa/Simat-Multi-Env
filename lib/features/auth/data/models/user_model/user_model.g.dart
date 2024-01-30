// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserModelImpl _$$UserModelImplFromJson(Map<String, dynamic> json) =>
    _$UserModelImpl(
      userTypeCode: json['user_type_code'] as String,
      userid: json['userid'] as String,
      userToken: json['user_token'] as String,
      username: json['username'] as String,
      userMobile: json['usermobile'] as String,
      userEmail: json['useremail'] as String,
      userActive: json['user_active'] as String,
      userLang: json['user_lang'] as String,
      userLastOnline: json['user_lastonline'] as String,
      userFullname: json['user_fullname'] as String,
      userFullnameEn: json['user_fullname_en'] as String,
      active: json['active'] as String,
      uuid: json['uuid'] as String,
      userTypeId: json['user_type_id'] as String,
      userTypeAr: json['user_type_ar'] as String,
      userTypeEn: json['user_type_en'] as String,
    );

Map<String, dynamic> _$$UserModelImplToJson(_$UserModelImpl instance) =>
    <String, dynamic>{
      'user_type_code': instance.userTypeCode,
      'userid': instance.userid,
      'user_token': instance.userToken,
      'username': instance.username,
      'usermobile': instance.userMobile,
      'useremail': instance.userEmail,
      'user_active': instance.userActive,
      'user_lang': instance.userLang,
      'user_lastonline': instance.userLastOnline,
      'user_fullname': instance.userFullname,
      'user_fullname_en': instance.userFullnameEn,
      'active': instance.active,
      'uuid': instance.uuid,
      'user_type_id': instance.userTypeId,
      'user_type_ar': instance.userTypeAr,
      'user_type_en': instance.userTypeEn,
    };
