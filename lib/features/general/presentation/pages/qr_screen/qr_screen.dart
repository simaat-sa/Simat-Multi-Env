import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/constants/gaps.dart';
import 'package:flutter_tdd/core/localization/translate.dart';
import 'package:flutter_tdd/core/widgets/default_app_bar.dart';
import 'package:flutter_tdd/features/auth/presentation/pages/login/widgets/get_code_text_widget.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';
import 'package:qr_scanner_with_effect/qr_scanner_with_effect.dart';


class QrScreen extends StatefulWidget {
  const QrScreen({super.key});

  @override
  State<StatefulWidget> createState() => _QrScreenState();
}

class _QrScreenState extends State<QrScreen> {
  Barcode? result;
  QRViewController? controller;
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');

  bool isComplete = false;

  void onQrScannerViewCreated(QRViewController controller) {
    this.controller = controller;
    controller.scannedDataStream.listen((scanData) async {
      result = scanData;
      controller.pauseCamera();

      await Future<void>.delayed(const Duration(milliseconds: 300));

      String? myQrCode =
          result?.code != null && result!.code.toString().isNotEmpty ? result?.code.toString() : '';
      if (myQrCode != null && myQrCode.isNotEmpty) {
        manageQRData(myQrCode);
      }
    });
  }

  void manageQRData(String myQrCode) async {
    controller?.stopCamera();
    setState(() {
      isComplete = true;
    });
    Navigator.pop(context, myQrCode);
  }

  @override
  void reassemble() {
    if (Platform.isAndroid) {
      controller!.pauseCamera();
    } else if (Platform.isIOS) {
      controller!.resumeCamera();
    }
    super.reassemble();
  }

  @override
  void dispose() {
    controller?.dispose();
    controller?.stopCamera();
    super.dispose();
  }

  void onPermissionSet(BuildContext context, QRViewController ctrl, bool p) {
    log('${DateTime.now().toIso8601String()}_onPermissionSet $p');
    if (!p) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('no Permission')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(title: Translate.s.qr_scan),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 250,
              height: 250,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 10,
                    spreadRadius: 1,
                    offset: Offset(0, 0),
                  ),
                ],
              ),
              child: QrScannerWithEffect(
                isScanComplete: isComplete,
                qrKey: qrKey,
                onQrScannerViewCreated: onQrScannerViewCreated,
                qrOverlayBorderColor: Colors.redAccent,
                cutOutSize: (MediaQuery.of(context).size.width < 300 ||
                        MediaQuery.of(context).size.height < 400)
                    ? 250.0
                    : 300.0,
                onPermissionSet: (ctrl, p) => onPermissionSet(context, ctrl, p),
                effectGradient: const LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: [0.0, 1],
                  colors: [
                    Colors.redAccent,
                    Colors.redAccent,
                  ],
                ),
              ),
            ),
            Gaps.vGap16,
            const GetCodeTextWidget(),
          ],
        ),
      ),
    );
  }
}
