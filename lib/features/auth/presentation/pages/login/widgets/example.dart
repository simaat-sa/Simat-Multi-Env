import 'package:auto_route/annotations.dart';
import 'package:biometric_fingerprint/biometric_result.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter/services.dart';
import 'package:biometric_fingerprint/biometric_fingerprint.dart';
import 'package:flutter_tdd/core/helpers/app_snack_bar_service.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
@RoutePage()
class Exapmle extends StatefulWidget {
  const Exapmle({super.key});

  @override
  State<Exapmle> createState() => _ExapmleState();
}

class _ExapmleState extends State<Exapmle> {
  String _platformVersion = 'Unknown';
  bool _isAuthenticating = false;
  String _key = "";
  final _biometricFingerprintPlugin = BiometricFingerprint();

  @override
  void initState() {
    super.initState();
    initPlatformState();
  }
  Future<void> initPlatformState() async {
    String platformVersion;
    try {
      platformVersion =
          await _biometricFingerprintPlugin.getPlatformVersion() ??
              'Unknown platform version';
    } on PlatformException {
      platformVersion = 'Failed to get platform version.';
    }
    if (!mounted) return;
    setState(() {
      _platformVersion = platformVersion;
    });
  }

  _success() {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('Yey, success to authenticate data key: ${_key}',
                style: const TextStyle(
                    fontFamily: 'poppins',
                    color: Colors.black,
                    letterSpacing: 1,
                    fontWeight: FontWeight.w700,
                    fontSize: 13)),
            content: Text('is authentication: ${_isAuthenticating}',
                style: const TextStyle(
                    fontFamily: 'poppins',
                    color: Colors.black,
                    letterSpacing: 1,
                    fontWeight: FontWeight.w700,
                    fontSize: 13)),
            actions: <Widget>[
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('Close',
                      style: TextStyle(
                          fontFamily: 'poppins',
                          color: Colors.black,
                          letterSpacing: 1,
                          fontWeight: FontWeight.w700,
                          fontSize: 13))),
              TextButton(
                onPressed: () {
                  print(_isAuthenticating);
                  Navigator.pop(context);
                },
                child: const Text('OK',
                    style: TextStyle(
                        fontFamily: 'poppins',
                        color: Colors.black,
                        letterSpacing: 1,
                        fontWeight: FontWeight.w700,
                        fontSize: 13)),
              )
            ],
          );
        });
  }

  _error() {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('OOps, error to authenticate data key: ${_key}',
                style: const TextStyle(
                    fontFamily: 'poppins',
                    color: Colors.black,
                    letterSpacing: 1,
                    fontWeight: FontWeight.w700,
                    fontSize: 13)),
            content: Text('is authentication: ${_isAuthenticating}',
                style: const TextStyle(
                    fontFamily: 'poppins',
                    color: Colors.black,
                    letterSpacing: 1,
                    fontWeight: FontWeight.w700,
                    fontSize: 13)),
            actions: <Widget>[
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('Close',
                      style: TextStyle(
                          fontFamily: 'poppins',
                          color: Colors.black,
                          letterSpacing: 1,
                          fontWeight: FontWeight.w700,
                          fontSize: 13))),
              TextButton(
                onPressed: () {
                  print(_isAuthenticating);
                  Navigator.pop(context);
                },
                child: const Text('OK',
                    style: TextStyle(
                        fontFamily: 'poppins',
                        color: Colors.black,
                        letterSpacing: 1,
                        fontWeight: FontWeight.w700,
                        fontSize: 13)),
              )
            ],
          );
        });
  }

  Future<void> _CallFingerPrint() async {
    setState(() {
      _isAuthenticating = false;
    });
    BiometricResult result =
        await _biometricFingerprintPlugin.initAuthentication(
      biometricKey: 'example',
      message: 'This is a very secret message',
      title: 'Biometric',
      subtitle: 'Enter biometric credentials example',
      description: 'Scan fingerprint.',
      negativeButtonText: 'CANCEL',
      confirmationRequired: true,
    );

    if (kDebugMode) {
      print(result.isSuccess);
    } // success
    if (kDebugMode) {
      print(result.isCanceled);
    } // cancel
    if (kDebugMode) {
      print(result.isFailed);
    } // failed

    if (result.isSuccess && result.hasData) {
      final key = result.data!;
      setState(() {
        _isAuthenticating = true;
        _key = key;
      });
      _success();
      return;
    }

    if (result.isFailed) {
      _error();
      AppSnackBar.showSimpleToast(
          color: context.colors.black,
          msg: 'failed login',
          type: ToastType.success);
      setState(() {
        _key = result.errorMsg;
        _isAuthenticating = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'BIOMETRIC EXAMPLE',
          style: const TextStyle(
              color: Colors.white,
              fontFamily: 'poppins',
              letterSpacing: 1,
              fontWeight: FontWeight.w700,
              fontSize: 13),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 180,
            ),
            Center(
              child: IconButton(
                iconSize: 80,
                color: Colors.blue,
                icon: const Icon(Icons.fingerprint),
                tooltip: _isAuthenticating
                    ? 'Login with fingerprint'
                    : 'Authenticating....',
                onPressed: () {
                  _CallFingerPrint();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
