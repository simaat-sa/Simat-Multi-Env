// ignore_for_file: use_build_context_synchronously

part of 'login_imports.dart';

class LoginController {
  ObsValue<bool> visibleObs = ObsValue.withInit(false);
  ObsValue<bool> supportBiometricObs = ObsValue.withInit(false);

  final GlobalKey<FormState> formKey = GlobalKey();

  final GlobalKey<CustomButtonState> btnKey = GlobalKey();
  final GlobalKey<ScaffoldState> drawerKey = GlobalKey<ScaffoldState>();
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();

  /// to check if the device support biometric or not [finger print or face id]
  Future<void> checkBiometric() async {
    bool isSupport = await BiometricHelper.instance.supportBiometric();
    supportBiometricObs.setValue(isSupport);
  }

  /// to submit the login form
  void onSubmit(BuildContext context) async {
    LoginParams params = loginParams();
    var loginResponse = await getIt<AuthRepository>().login(params);
    _handleLoginResponse(context, loginResponse);
  }

  void _handleLoginResponse(BuildContext context, MyResult<UserModel> response) {
    response.whenOrNull(isSuccess: (userModel) {
      context.read<UserCubit>().onUpdateUserData(userModel!);
      UserHelperService.instance.saveUserData(userModel);
      AppSnackBar.showSimpleToast(
          color: context.colors.black, msg: Translate.of(context).successfully_Logged_in, type: ToastType.success);
      AutoRouter.of(context).push(Home());
    });
  }

  /// handle login params
  LoginParams loginParams() {
    return LoginParams(
      logPassword: password.text,
      logUser: email.text,
    );
  }

  Future<void> _loginWithQr(BuildContext context, String token) async {
    var loginResponse = await getIt<AuthRepository>().loginWithQr(token);
    _handleLoginResponse(context, loginResponse);
  }

  /// to login with credentials
  /// first check if the user save his credentials before or not
  /// if yes authenticate with biometric
  /// if no check form validation and authenticate with biometric
  Future<void> loginWithCredentials(BuildContext context) async {
    LoginParams? params = await UserHelperService.instance.getUserCredentials();
    if (params != null) {
      var authorize = await BiometricHelper.instance.authenticate(context);
      if (authorize) {
        email.text = params.logUser;
        password.text = params.logPassword;
        onSubmit(context);
      }
    }else{
      if (formKey.currentState!.validate()) {
        var authorize = await BiometricHelper.instance.authenticate(context);
        if (authorize) {
          onSubmit(context);
        }
      }
    }
  }
  /// to login with qr code
  /// scan the qr code and get the token
  /// then send the token to the server to get the user data
  void qrScan(BuildContext context) async {
    String? scannedCode = await Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => const ScannerScreen()));
    if (scannedCode != null) {
      var token = scannedCode.split(",").first.split("<").last;
      _loginWithQr(context, token);
    }

  }
}
