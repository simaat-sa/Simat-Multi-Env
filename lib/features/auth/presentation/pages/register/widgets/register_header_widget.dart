part of 'register_widgets_imports.dart';

class RegisterHeaderWidget extends StatelessWidget {
  const RegisterHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var logo = FlutterEnvironmentConfigReader.instance.getSplashLogo();
    if (logo.contains(".svg")) {
      return SvgPicture.asset(
        logo,
        height: 60,
        width: 210,
      );
    }
    return Image.asset(
      logo,
      height: 60,
      width: 210,
    );
  }
}
