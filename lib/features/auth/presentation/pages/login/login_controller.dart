// ignore_for_file: use_build_context_synchronously

part of 'login_imports.dart';

class LoginController {
  ObsValue<bool> visableObs = ObsValue.withInit(false);
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
    await getIt<AuthRepository>(). setLogin(params).then((data) { {
      data.when(
        isSuccess: (data) {
          if (formKey.currentState!.validate()) {
          if (data != null) {
            UserHelperService.instance.saveUserData(data);
            UserHelperService.instance.saveUserCredentials(params);
            AppSnackBar.showSimpleToast(
                color: context.colors.black,
                msg: Translate.of(context).successfully_Logged_in,
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

  /// handle login params
  LoginParams loginParams() {
    return LoginParams(
      logPassword: password.text,
      logUser: email.text,
    );
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
    String barcodeScanRes = await FlutterBarcodeScanner.scanBarcode(
      "#ff6666",
      Translate.of(context).cancel,
      true,
      ScanMode.DEFAULT,
    );

    print("Scanned barcode: $barcodeScanRes");
  }
}
