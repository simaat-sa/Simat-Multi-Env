part of 'login_widgets_imports.dart';

class LoginFingerPrintWidget extends StatelessWidget {
  final LoginController controller;
  const LoginFingerPrintWidget({
    super.key, required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: InkWell(
        onTap: () {},
        child: SvgPicture.asset(
          Res.fingerprintIcon,
          width: 65,
          height: 65,
        ),
      ),
    );
  }
}


