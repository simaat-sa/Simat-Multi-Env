import 'package:flutter_tdd/core/constants/app_config.dart';

class ApiNames{
  static String baseUrl = AppConfig.instance.baseAPIUrl;
  static String version1Part = "v1/";

  // auth routes
  static String login = "${version1Part}auth/login";
  static const String refreshToken = "auth";
  static const String savePublicKey = "users/";
  static const String updateUser = "users/";
  static const String register = "auth/create_account";
  static const String activeAccount = "otp/verify";
  static const String resendCode = "ResendCode";
  static const String switchNotify = "SwitchNotify";
  static const String forgetPassword = "cabaf46ee69d7b8445a5d791";
  static const String resetPassword = "A2q4mG84Z9rE2B38In4HALSWTwt9eQ5Slzq56Cod";

  /// tenant routes
  static  String getTenant = "${version1Part}tenant/list";

  /// contracts routes
  static  String getContracts= "${version1Part}maintenance/list";




}