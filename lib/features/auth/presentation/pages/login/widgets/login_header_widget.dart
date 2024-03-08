part of 'login_widgets_imports.dart';

class LoginHeaderWidget extends StatelessWidget {
  const LoginHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      FlutterEnvironmentConfigReader.instance.getSplashLogo(),
      height: 60,
      width: 210,
    );
  }
}
