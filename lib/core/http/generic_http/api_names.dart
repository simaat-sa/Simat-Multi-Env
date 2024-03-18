import 'package:flutter_tdd/core/constants/app_config.dart';

class ApiNames {
  static String baseUrl = AppConfig.instance.baseAPIUrl;
  static String version1Part = "v1/";

  // auth routes
  static String login = "${version1Part}auth/login";
  static String logOut = "${version1Part}auth/logout";
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

  static String getContract(String header) => "${version1Part}contract/list?$header";

  static String renewContract(String id) => "${version1Part}contract/renew?tts_id=$id";

  /// props and units routes
  static String properties = "${version1Part}tenant/properties/list";
  static String tenantPropUnits = "${version1Part}tenant/units";
  static String ownerPropUnits = "${version1Part}owner/units";
  static String ownerPropFilter = "${version1Part}owner/properties/filters";
  static String ownerProps(String header)=> "$version1Part/owner/properties/list$header";

  /// maintenance routes
  static String maintenanceRequests(String header) => "${version1Part}maintenance/list?$header";
  static String maintenanceServices = "${version1Part}maintenance/services";
  static String maintenanceAdd = "${version1Part}maintenance/add";
  static String getNotices = "${version1Part}notification/list";

  static String contractPayment(String id) => "${version1Part}contract/payment/list?tts_id=$id";
  static String noticesUnread = "${version1Part}notification/unread-count";
  static String noticesRead = "${version1Part}notification/read";
  static String getBoolean = "${version1Part}boolean";

  /// General Links
  static String supportLink = "https://simaat.sa/service/submitticket.php?step=2&deptid=1";
}
