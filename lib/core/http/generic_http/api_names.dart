import 'package:flutter_tdd/core/constants/app_config.dart';

class ApiNames {
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
  static String getTenant = "${version1Part}tenant/list";
  static String renewContract(String id) => "${version1Part}contract/renew?tts_id=$id";

  /// props and units routes
  static String properties = "${version1Part}tenant/properties/list";
  static String propUnits = "${version1Part}tenant/units";

  /// maintenance routes
  static String maintenanceRequests = "${version1Part}maintenance/list";
  static String maintenanceServices = "${version1Part}maintenance/services";
  static String maintenanceAdd = "${version1Part}maintenance/add";
  static String getNotices = "${version1Part}notification/list";
  static String contractPayment(String id) => "${version1Part}contract/payment/list?tts_id=$id";
}
