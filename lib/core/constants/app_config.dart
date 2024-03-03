import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/constants/app_constants.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/helpers/global_context.dart';
import 'package:flutter_tdd/core/helpers/global_state.dart';
import 'package:flutter_tdd/core/routes/router_imports.gr.dart';

class AppConfig {
  AppConfig._();

  static AppConfig instance = AppConfig._();

  String get defaultLanguage => 'ar';

  String? get token => GlobalState.instance.get(ApplicationConstants.keyToken);

  String get baseUrl => "https://${const String.fromEnvironment('APP_BASE_URL')}/";

  String get imageBaseUrl => "$baseUrl$token/";

  String get baseAPIUrl =>
      "https://${const String.fromEnvironment('APP_BASE_URL')}${const String.fromEnvironment('APP_API')}";

  static BoxConstraints get textFieldConstrains =>
      const BoxConstraints(minHeight: 50, maxHeight: 50);

  static BoxConstraints? fromHeight(double? height) =>
      height != null ? BoxConstraints(minHeight: height, maxHeight: height) : null;

  Future<void> restartApp() async {
    AutoRouter.of(getIt<GlobalContext>().context()).pushAndPopUntil(
      const SplashRoute(),
      predicate: (_) => false,
    );
  }
}
