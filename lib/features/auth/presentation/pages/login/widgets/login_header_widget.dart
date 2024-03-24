part of 'login_widgets_imports.dart';

class LoginHeaderWidget extends StatelessWidget {
  const LoginHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var logo = FlutterEnvironmentConfigReader.instance.getSplashLogo();
    if (logo.contains(".svg")) {
      return Padding(
        padding: const EdgeInsets.only(top: 50),
        child: Image.asset(
          logo,
          height: 60,
          width: 210,
        ),
      );
    }
    return Image.asset(
      logo,
      height: 150,
      width: 320,
    );
  }
}
