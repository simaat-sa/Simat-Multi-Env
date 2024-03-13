part of 'login_widgets_imports.dart';

class LoginHeaderWidget extends StatelessWidget {
  const LoginHeaderWidget({super.key});

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
      height: 100,
      width: 300,
    );
  }
}
