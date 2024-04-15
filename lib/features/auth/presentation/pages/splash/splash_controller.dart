// ignore_for_file: use_build_context_synchronously

part of 'splash_imports.dart';

class SplashController {
  void manipulateSaveData(BuildContext context) async {
    var user = await UserHelperService.instance.getUserData();
    await LanguageService.instance.initLanguage();
    await Future.delayed(const Duration(seconds: 1));
    if (user != null) {
      if (AppConfig.instance.isGeneralEnv) {
        var baseUrl = await UserHelperService.instance.getSavedBaseUrl();
        if (baseUrl != null) {
          GlobalState.instance.set(ApplicationConstants.keyBaseUrl, baseUrl);
        }
      }
      GlobalState.instance.set(ApplicationConstants.keyToken, user.userToken);
      context.read<UserCubit>().onUpdateUserData(user);
      AutoRouter.of(context).push(Home());
    } else {
      AutoRouter.of(context).push(Login(checkRegisterButton: false));

      // await getIt<AuthRepository>().getBoolean(true).then((value) {
      //   AutoRouter.of(context).push(Login(checkRegisterButton: value.data??false));
      // });
    }
  }
}
