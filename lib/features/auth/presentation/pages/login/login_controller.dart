// ignore_for_file: use_build_context_synchronously

part of 'login_imports.dart';

class LoginController {
  ObsValue<bool> visibleObs = ObsValue.withInit(false);
  ObsValue<BiometricType?> supportBiometricObs = ObsValue.withInit(null);

  final GlobalKey<FormState> formKey = GlobalKey();

  final GlobalKey<CustomButtonState> btnKey = GlobalKey();
  final GlobalKey<ScaffoldState> drawerKey = GlobalKey<ScaffoldState>();
  final TextEditingController name = TextEditingController();
  final TextEditingController host = TextEditingController();

  final TextEditingController password = TextEditingController();

  /// to check if the device support biometric or not [finger print or face id]
  Future<void> checkBiometric(BuildContext context) async {
    var availableBiometrics = await BiometricHelper.instance.getAvailableBiometricTypes();
    // if (availableBiometrics.contains(BiometricType.fingerprint) || availableBiometrics.contains(BiometricType.strong)) {
    //   supportBiometricObs.setValue(BiometricType.fingerprint);
    // } else if (availableBiometrics.contains(BiometricType.face)) {
    //   supportBiometricObs.setValue(BiometricType.face);
    // }
    if (availableBiometrics.isNotEmpty) {
      loginWithBiometric(context);
    }
  }

  /// to submit the login form
  Future<bool> onSubmitLoginBtn(BuildContext context) async {
    String? deviceId = await _getFirebaseToken();
    if (_checkFormValidation(context)) {
      _saveHostUrl();
      LoginParams params = loginParams(deviceId ?? '');
      var loginResponse = await getIt<AuthRepository>().login(params);
      return _handleLoginResponse(loginResponse,loginParams: params);
    } else {
      return false;
    }
  }

  void _saveHostUrl() {
     if (host.text.isNotEmpty) {
      var url = host.text;
      if (!host.text.contains("http://") && !host.text.contains("https://")){
        url = "https://$url";
      }
      if (!url.endsWith("/")) {
        url = "$url/";
      }
      UserHelperService.instance.saveBaseUrl(url);
      GlobalState.instance.set(ApplicationConstants.keyBaseUrl, url);
    }
  }


  Future<String?> _getFirebaseToken() async {
    var deviceId = await FirebaseMessaging.instance.getAPNSToken();
    try {
      deviceId = await FirebaseMessaging.instance.getAPNSToken();
    } catch (e) {
      deviceId = "";
    }
    return deviceId;
  }

  bool _handleLoginResponse(MyResult<UserModel> response, {LoginParams? loginParams}) {
    final context = getIt<GlobalContext>().context();
    return response.when(isSuccess: (userModel) {
      userModel!.userAccess.add(_menuTapModel());
      context.read<UserCubit>().onUpdateUserData(userModel);
      GlobalState.instance.set("token", response.data?.userToken);
      UserHelperService.instance.saveUserData(userModel);
      AppSnackBar.showSimpleToast(
        color: context.colors.black,
        msg: Translate.s.successfully_Logged_in,
        type: ToastType.success,
      );
      AutoRouter.of(context).push(Home(loginParams: loginParams));
      return true;
    }, isError: (error) {
      AppSnackBar.showSimpleToast(
        msg: Translate.s.Invalid_login_data,
        type: ToastType.error,
      );
      return false;
    });
  }

  UserAccessModel _menuTapModel() {
    return UserAccessModel(
      pageid: "0",
      pageCode: AccessPages.non,
      pageAr: "القائمة",
      pageEn: "Menu",
      isRoot: "false",
      pageActive: "",
      pageImage: "",
      pageDesc: "",
      pageOrder: "1000000000000000",
      pageName: Translate.s.menu,
      iconSvg: Res.moreBarLogo,
    );
  }

  /// handle login params
  LoginParams loginParams(String deviceId) {
    return LoginParams(
      logPassword: password.text,
      logUser: name.text,
      deviceToken: deviceId,
    );
  }

  QrLoginParams qrLoginParams(String deviceToken, String token) {
    return QrLoginParams(deviceToken: deviceToken, token: token);
  }

  Future<void> _loginWithQr(BuildContext context, String token) async {
    var deviceId = await FirebaseMessaging.instance.getToken();
    final params = qrLoginParams(deviceId ?? '', token);
    var loginResponse = await getIt<AuthRepository>().loginWithQr(params);
    _handleLoginResponse(loginResponse);
  }

  /// to login with credentials
  /// first check if the user save his credentials before or not
  /// if yes authenticate with biometric
  /// if no check form validation and authenticate with biometric
  Future<void> loginWithBiometric(BuildContext context) async {
    LoginParams? params = await UserHelperService.instance.getUserCredentials();
    if (params != null) {
      var authorize = await BiometricHelper.instance.authenticate(context);
      if (authorize) {
        name.text = params.logUser;
        password.text = params.logPassword;
        onSubmitLoginBtn(context);
      }
    }
  }


  bool _checkFormValidation(BuildContext context) {
    return formKey.currentState!.validate();
  }

  /// to login with qr code
  /// scan the qr code and get the token
  /// then send the token to the server to get the user data
  void qrScan(BuildContext context) async {
    String? scannedCode = await Navigator.push(context, MaterialPageRoute(builder: (context) => const ScannerScreen()));

    // String? scannedCode = await Navigator.push(context, MaterialPageRoute(builder: (context) => const QrScreen()));
    if (scannedCode != null) {
      var token = scannedCode.split(",").first.split("<").last;
      _loginWithQr(context, token);
    }
  }


}
