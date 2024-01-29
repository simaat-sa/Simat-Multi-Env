part of 'splash_widgets_imports.dart';
class SplashLogo extends StatelessWidget {
  const SplashLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SvgPicture.asset(
        Res.splashLogo,
        height: 65,
        width: 240,
      ),
    );
  }
}
