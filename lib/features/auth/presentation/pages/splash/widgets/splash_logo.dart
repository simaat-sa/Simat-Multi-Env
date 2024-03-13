part of 'splash_widgets_imports.dart';

class SplashLogo extends StatelessWidget {
  const SplashLogo({super.key});

  @override
  Widget build(BuildContext context) {
    var logo = FlutterEnvironmentConfigReader.instance.getSplashLogo();
    if (logo.contains(".svg")) {
      return Center(
        child: SvgPicture.asset(
          logo,
          height: 65,
          width: 240,
        ),
      );
    }
    return Center(
      child: Image.asset(
        logo,
        height: 120,
        width: 320,
      ),
    );
  }
}
