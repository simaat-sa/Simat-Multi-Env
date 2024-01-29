part of 'login_widgets_imports.dart';

class LoginFingerPrintWidget extends StatelessWidget {
  const LoginFingerPrintWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SvgPicture.asset(
        Res.fingerprintIcon,
        width: 65,
        height: 65,
      ),
    );
  }
}
