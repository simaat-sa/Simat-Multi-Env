class AppConfig {

  AppConfig._();
  static AppConfig instance = AppConfig._();

  String get defaultLanguage => 'en';

  String get baseUrl => "https://${const String.fromEnvironment('APP_BASE_URL')}${const String.fromEnvironment('APP_API')}";

}