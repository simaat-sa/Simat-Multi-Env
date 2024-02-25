part of 'menu_tap_imports.dart';

class MenuControllerTap {

  final ObsValue<bool> langObs = ObsValue.withInit(false);
  final ObsValue<bool> switchObs = ObsValue.withInit(false);

  Future<void> onLogOut(BuildContext context) async {
    var userModel = context.read<UserCubit>().state.model;
    var logOutResponse = await getIt<SlideMenuRepository>().setLogOut(NoParams());
    if (logOutResponse.data == LogOutEnum.success.value) {
      UserHelperService.instance.removeUserData(userModel!);
      GlobalState.instance.set("token", null);
      AppSnackBar.showSimpleToast(
        color: context.colors.black,
        msg: "Logged out successfully",
        type: ToastType.success,
      );
      AutoRouter.of(context).pushAndPopUntil(SplashRoute(), predicate: (route) => false);
    }
  }

  void onChanged(bool value) {
    switchObs.setValue(value);
    switchObs.refresh();
  }

  void getTerms(BuildContext context) {
    AppBottomSheets.showScrollableBody(
      context: context,
      builder: (context) => const Terms(),
    );
  }
}
