part of 'get_code_info_widgets_imports.dart';

class GetCodePhoneScreen extends StatelessWidget {
  const GetCodePhoneScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
         Translate.of(context).using_the_QR_code_scan_the_QR_code_that_appears,
          style: AppTextStyle.s14_w400(color: context.colors.darkTextColor).copyWith(height: 1.2),
        ),
        Gaps.vGap20,
        Image.asset(
          alignment: Alignment.center,
          Res.qrCodeView,
          height: 214,
        )
      ],
    );
  }
}
