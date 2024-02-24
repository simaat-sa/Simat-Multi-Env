import 'package:biometric_login/biometric_login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_tdd/core/helpers/app_snack_bar_service.dart';
import 'package:flutter_tdd/core/localization/translate.dart';

class BiometricHelper {
  BiometricHelper._();

  static final BiometricHelper instance = BiometricHelper._();
  final LocalAuthentication _auth = LocalAuthentication();

  Future<bool> supportBiometric() async {
    final bool canAuthenticateWithBiometrics = await _auth.canCheckBiometrics;
    final bool canAuthenticate = canAuthenticateWithBiometrics || await _auth.isDeviceSupported();
    return canAuthenticate;
  }

  Future<bool> authenticate(BuildContext context) async {
    try {
      final bool didAuthenticate = await _auth.authenticate(
          localizedReason: Translate.of(context).Please_authenticate_to_login,
          options: const AuthenticationOptions(
            biometricOnly: true,
          ));
      return didAuthenticate;
    } catch (e) {
      AppSnackBar.showSimpleToast(msg: e.toString());
      return false;
    }
  }
}
