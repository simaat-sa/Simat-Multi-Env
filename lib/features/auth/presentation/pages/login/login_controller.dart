// ignore_for_file: use_build_context_synchronously

part of 'login_imports.dart';

class LoginController {
  ObsValue<bool> visibleObs = ObsValue.withInit(false);
  ObsValue<bool> supportBiometricObs = ObsValue.withInit(false);

  final GlobalKey<FormState> formKey = GlobalKey();

  final GlobalKey<CustomButtonState> btnKey = GlobalKey();
  final GlobalKey<ScaffoldState> drawerKey = GlobalKey<ScaffoldState>();
  final TextEditingController name = TextEditingController();
  final TextEditingController password = TextEditingController();

  /// to check if the device support biometric or not [finger print or face id]
  Future<void> checkBiometric() async {
    bool isSupport = await BiometricHelper.instance.supportBiometric();
    supportBiometricObs.setValue(isSupport);
  }

  /// to submit the login form
  Future<bool> onSubmit(BuildContext context) async {
    var deviceId = await FirebaseMessaging.instance.getToken();
    if (_checkFormValidation(context)) {
      LoginParams params = loginParams(deviceId ?? '');
      var loginResponse = await getIt<AuthRepository>().login(params);
      return _handleLoginResponse(context, loginResponse);
    } else {
      return false;
    }
  }

  bool _handleLoginResponse(BuildContext context, MyResult<UserModel> response) {
    return response.when(isSuccess: (userModel) {
      userModel!.userAccess.add(_menuTapModel());
      context.read<UserCubit>().onUpdateUserData(userModel);
      GlobalState.instance.set("token", response.data?.userToken);
      UserHelperService.instance.saveUserData(userModel);
      AppSnackBar.showSimpleToast(
        color: context.colors.black,
        msg: Translate.of(context).successfully_Logged_in,
        type: ToastType.success,
      );
      AutoRouter.of(context).push(Home());
      return true;
    }, isError: (error) {
      AppSnackBar.showSimpleToast(
        msg: Translate
            .of(context)
            .Invalid_login_data,
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
      pageName: Translate.s.menu,
      iconSvg: Res.moreBarLogo,);
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
    _handleLoginResponse(context, loginResponse);
  }

  /// to login with credentials
  /// first check if the user save his credentials before or not
  /// if yes authenticate with biometric
  /// if no check form validation and authenticate with biometric
  Future<void> loginWithBiometric(BuildContext context) async {
    var deviceId = await FirebaseMessaging.instance.getToken();
    LoginParams? params = await UserHelperService.instance.getUserCredentials();
    if (params != null) {
      var authorize = await BiometricHelper.instance.authenticate(context);
      if (authorize) {
        name.text = params.logUser;
        password.text = params.logPassword;
        onSubmit(context);
      }
    } else {
      if (_checkFormValidation(context)) {
        var authorize = await BiometricHelper.instance.authenticate(context);
        if (authorize) {
          onSubmit(context).then((value) {
            if (value) {
              UserHelperService.instance.saveUserCredentials(loginParams(deviceId ?? ''));
            }
          });
        }
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
    if (scannedCode != null) {
      var token = scannedCode.split(",").first.split("<").last;
      _loginWithQr(context, token);
    }
  }

  void getCode(BuildContext context) {
    AppBottomSheets.showScrollableBody(
      context: context,
      builder: (context) => const GetCodeInfo(),
    );
  }
}
