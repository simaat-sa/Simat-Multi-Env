import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/helpers/global_context.dart';
import 'package:rebirth/rebirth.dart';

class AppConfig {
  AppConfig._();
  static AppConfig instance = AppConfig._();

  String get defaultLanguage => 'ar';

  String get baseUrl => "https://${const String.fromEnvironment('APP_BASE_URL')}/";

  String get imageBaseUrl => "https://cdn.thiqeel.com/apps/sharingpath/thiqeel/uploads/simaatApp/";

  String get baseAPIUrl =>
      "https://${const String.fromEnvironment('APP_BASE_URL')}${const String.fromEnvironment('APP_API')}";

  static BoxConstraints get textFieldConstrains =>
      const BoxConstraints(minHeight: 50, maxHeight: 50);

  static BoxConstraints? fromHeight(double? height) =>
      height != null ? BoxConstraints(minHeight: height, maxHeight: height) : null;

  Future<void> restartApp() async{
    WidgetRebirth.createRebirth(context: getIt<GlobalContext>().context());
  }

}
