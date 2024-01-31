part of 'login_widgets_imports.dart';

class LoginFingerPrintWidget extends StatefulWidget {
  final LoginController controller;

  const LoginFingerPrintWidget({
    super.key,
    required this.controller,
  });

  @override
  State<LoginFingerPrintWidget> createState() => _LoginFingerPrintWidgetState();
}

class _LoginFingerPrintWidgetState extends State<LoginFingerPrintWidget> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () async {
          fingerPrint(context);
          // _CallFingerPrint();
          // print(_isAuthenticating
          //     ? 'Login with fingerprint'
          //     : 'Authenticating....');
        },
        child: SvgPicture.asset(
          Res.fingerprintIcon,
          width: 65,
          height: 65,
        ),
      ),
    );
  }
}

void fingerPrint(BuildContext context) async {
  final LocalAuthentication auth = LocalAuthentication();
  // final bool canAuthenticateWithBiometrics = await auth.canCheckBiometrics;
  // final bool canAuthenticate =
  //     canAuthenticateWithBiometrics || await auth.isDeviceSupported();
  try {
    final bool didAuthenticate = await auth.authenticate(
      localizedReason: 'Please authenticate to login to your account',
      options: const AuthenticationOptions(
        biometricOnly: true,
      )
    );
    print("<<<<<<<<<<>>>><><><><><><<<$didAuthenticate");
  }catch (e) {
    print("<<<<<<<<<<>>>><><><><><><<<${e.toString()}");

  }
}

