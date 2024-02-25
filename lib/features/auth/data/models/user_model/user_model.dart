import 'package:flutter_tdd/core/constants/app_config.dart';
import 'package:flutter_tdd/features/auth/data/models/user_access_model/user_access_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';

part 'user_model.g.dart';

@unfreezed
@immutable
class UserModel with _$UserModel {
  const UserModel._();

  @JsonSerializable(explicitToJson: true)
   factory UserModel({
    @JsonKey(name: "user_type_code") required String userTypeCode,
    @JsonKey(name: "userid") required String userid,
    @JsonKey(name: "user_token") required String userToken,
    @JsonKey(name: "username") required String username,
    @JsonKey(name: "user_avatar", defaultValue: "") required String userAvatar,
    @JsonKey(name: "usermobile") required String userMobile,
    @JsonKey(name: "useremail") required String userEmail,
    @JsonKey(name: "user_active") required String userActive,
    @JsonKey(name: "user_lang") required String userLang,
    @JsonKey(name: "user_lastonline") required String userLastOnline,
    @JsonKey(name: "user_fullname") required String userFullname,
    @JsonKey(name: "user_fullname_en") required String userFullnameEn,
    @JsonKey(name: "active") required String active,
    @JsonKey(name: "uuid") required String uuid,
    @JsonKey(name: "app_page_access", defaultValue: []) required List<UserAccessModel> userAccess,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) => _$UserModelFromJson(json);

  String get userImage => AppConfig.instance.baseUrl + userAvatar;
}
