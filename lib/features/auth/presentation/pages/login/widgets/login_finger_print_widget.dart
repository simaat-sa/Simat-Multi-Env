part of 'login_widgets_imports.dart';

class LoginFingerPrintWidget extends StatelessWidget {
  final LoginController controller;

  const LoginFingerPrintWidget({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return ObsValueConsumer(
        observable: controller.supportBiometricObs,
        builder: (context, supportBiometric) {
          if (supportBiometric) {
            return Center(
              child: GestureDetector(
                onTap: () => controller.loginWithBiometric(context),
                child: SvgPicture.asset(
                  Res.fingerprintIcon,
                  width: 65,
                  height: 65,
                  color: context.colors.textColor,
                ),
              ),
            );
          }
          return Gaps.empty;
        });
  }
}
