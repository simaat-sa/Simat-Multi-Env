part of 'get_code_info_widgets_imports.dart';

class GetCodeView extends StatelessWidget {
  const GetCodeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 24).r,
      child: Image.asset(Res.howToLoginQrCode),
    );
  }
}
