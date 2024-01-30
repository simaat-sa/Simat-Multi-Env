part of 'login_imports.dart';

class LoginController {
  ObsValue<bool> visabelBloc = ObsValue.withInit(false);

  final GlobalKey<FormState> formKey = GlobalKey();
  final GlobalKey<CustomButtonState> btnKey = GlobalKey();
  final GlobalKey<ScaffoldState> drawerKey = GlobalKey<ScaffoldState>();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  void onSubmit(BuildContext context) async {
    LoginParams params = loginParams();
    await getIt<AuthRepository>(). setLogin(params).then((data) { {
      data.when(
        isSuccess: (data) {
          if (formKey.currentState!.validate()) {
          if (data != null) {
            AppSnackBar.showSimpleToast(
                color: context.colors.black,
                msg: 'Successfully Logged in',
                type: ToastType.success);
            AutoRouter.of(context).push(const Home());
          }}
        },
        isError: (error) {
          error.message;
        },
      );
    }});
  }

  LoginParams loginParams() {
    return LoginParams(
      logPassword: password.text,
      logUser: email.text,
    );
  }
}
