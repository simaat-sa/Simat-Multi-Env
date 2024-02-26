import 'package:flutter/material.dart';

class AppConfig {
  AppConfig._();
  static AppConfig instance = AppConfig._();

  String get defaultLanguage => 'en';

  String get baseUrl => "https://${const String.fromEnvironment('APP_BASE_URL')}/";

  String get imageBaseUrl => "https://cdn.thiqeel.com/apps/sharingpath/thiqeel/uploads/simaatApp/";

  String get baseAPIUrl =>
      "https://${const String.fromEnvironment('APP_BASE_URL')}${const String.fromEnvironment('APP_API')}";

  static BoxConstraints get textFieldConstrains =>
      const BoxConstraints(minHeight: 50, maxHeight: 50);

  static BoxConstraints? fromHeight(double? height) =>
      height != null ? BoxConstraints(minHeight: height, maxHeight: height) : null;
}
