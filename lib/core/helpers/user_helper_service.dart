import 'dart:convert';

import 'package:flutter_tdd/core/constants/app_constants.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/helpers/shared_pref_service.dart';
import 'package:flutter_tdd/features/auth/data/models/user_model/user_model.dart';
import 'package:flutter_tdd/features/auth/domain/entity/login_params.dart';

class UserHelperService {
  UserHelperService._();

  static UserHelperService instance = UserHelperService._();

  Future<void> saveUserData(UserModel user) async {
    await getIt<SharedPrefService>().saveString(
      ApplicationConstants.userSavedModel,
      jsonEncode(user.toJson()),
    );
  }

  Future<void> removeUserData() async {

    await getIt<SharedPrefService>().removeString(ApplicationConstants.userSavedModel);

  }

  Future<UserModel?> getUserData() async {
    String? userString = await getIt<SharedPrefService>().getString(ApplicationConstants.userSavedModel);
    if (userString != null) {
      return UserModel.fromJson(jsonDecode(userString));
    }
    return null;
  }

  Future<void> saveUserCredentials(LoginParams credentials) async {
    await getIt<SharedPrefService>().saveString(
      ApplicationConstants.userCredential,
      jsonEncode(credentials.toJson()),
    );
  }

  Future<LoginParams?> getUserCredentials() async {
    String? userString =
        await getIt<SharedPrefService>().getString(ApplicationConstants.userCredential);
    if (userString != null) {
      return LoginParams.fromJson(jsonDecode(userString));
    }
    return null;
  }


  Future<void> saveBaseUrl(String url) async {
    await getIt<SharedPrefService>().saveString(ApplicationConstants.keyBaseUrl,url);
  }

  Future<String?> getSavedBaseUrl() async {
    return await getIt<SharedPrefService>().getString(ApplicationConstants.keyBaseUrl);
  }


}
