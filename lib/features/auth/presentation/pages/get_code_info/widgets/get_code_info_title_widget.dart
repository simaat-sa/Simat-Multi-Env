part of 'get_code_info_widgets_imports.dart';

class GetCodeInfoTitleWidget extends StatelessWidget {
  const GetCodeInfoTitleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          Translate.s.How_can_I_get_the_code,
          style: AppTextStyle.s24_w400(color: context.colors.darkTextColor),
        ),
        Gaps.vGap16,
        Text(
          Translate.s.Login_to_your_platform_through,
          style: AppTextStyle.s14_w400(color: context.colors.darkTextColor).copyWith(height: 1.2),
        ),
        Gaps.vGap16,
        Text(
          Translate.s.QR_mobile_application,
          style: AppTextStyle.s14_w400(color: context.colors.darkTextColor).copyWith(height: 1.2),
        ),
      ],
    );
  }
}
