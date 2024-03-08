part of 'register_widgets_imports.dart';

class RegisterHeaderWidget extends StatelessWidget {
  const RegisterHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      FlutterEnvironmentConfigReader.instance.getSplashLogo(),
      height: 60,
      width: 210,
    );
  }
}
