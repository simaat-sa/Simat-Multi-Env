part of 'register_imports.dart';

class RegisterController {
  ObsValue<bool> visiblePasObs = ObsValue.withInit(false);
  ObsValue<bool> visibleConfirmPasObs = ObsValue.withInit(false);
  final TextEditingController name = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController phone = TextEditingController();
  final TextEditingController password = TextEditingController();
  final TextEditingController passwordConfirm = TextEditingController();
  final GlobalKey<ScaffoldState> drawerKey = GlobalKey<ScaffoldState>();
  final GlobalKey<FormState> formKey = GlobalKey();

  bool _checkFormValidation() {
    return formKey.currentState!.validate();
  }

  void callCreateAccount(BuildContext context) {
    final loading = getIt<LoadingHelper>();
    if (_checkFormValidation()) {
      loading.showLoadingDialog();
      Future.delayed(
        const Duration(seconds: 3),
        () {
          loading.dismissDialog();
          AppSnackBar.showSimpleToast(
            color: context.colors.black,
            msg: "الطلب في انتظار الموافقة.",
            type: ToastType.success,
          );
          AutoRouter.of(context).pop();
        },
      );
    }
  }
}
