// ignore_for_file: use_build_context_synchronously

part of 'splash_imports.dart';

class SplashController {
  void manipulateSaveData(BuildContext context) async {
    var user = await UserHelperService.instance.getUserData();
    await Future.delayed(const Duration(seconds: 4));
    if (user != null) {
      GlobalState.instance.set("token", user.userToken);
      context.read<UserCubit>().onUpdateUserData(user);
      AutoRouter.of(context).push(Home());
    } else{
      AutoRouter.of(context).push( const Login());
    }

  }

}
