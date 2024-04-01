part of 'get_code_info_widgets_imports.dart';

class GetCodeView extends StatelessWidget {
  const GetCodeView({super.key});

  @override
  Widget build(BuildContext context) {
    var lang = context.watch<DeviceCubit>().state.model.locale.languageCode;
    if (lang == 'ar') {
      return Container(
        margin: const EdgeInsets.symmetric(vertical: 24).r,
        child: Image.asset(Res.howToLoginQrCodeAr),
      );
    }
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 24).r,
      child: Image.asset(Res.howToLoginQrCodeEn),
    );
  }
}
