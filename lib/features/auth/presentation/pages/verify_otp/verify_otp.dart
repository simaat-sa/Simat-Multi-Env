part of 'verify_otp_imports.dart';

@RoutePage()
class VerifyOTP extends StatefulWidget {
  const VerifyOTP({super.key});

  @override
  State<VerifyOTP> createState() => _VerifyOTPState();
}

class _VerifyOTPState extends State<VerifyOTP> {
  VerifyOtpController controller = VerifyOtpController();
  @override
  Widget build(BuildContext context) {
    return AuthScaffoldWidget(
      scaffoldKey: controller.drawerKey,
      appBar: AuthAppBarWidget(scaffoldkey: controller.drawerKey, title: "Verify OTP"),
      body: GestureDetector(
        onTap: FocusScope.of(context).unfocus,
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
          children: [
            const VerifyHeaderWidget(),
            Column(
              children: [
                VerifyFormWidget(controller: controller),
                // LoginButtonWidget(controller: controller),
                // const ForgetPasswordViewWidget(),
                // Gaps.vGap32,
                // const LoginFingerPrintWidget(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
