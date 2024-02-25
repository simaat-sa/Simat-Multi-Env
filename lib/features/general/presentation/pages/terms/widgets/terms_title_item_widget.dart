part of 'terms_widgets_imports.dart';

class TermsTitleItemWidget extends StatelessWidget {
  final String title;
  final String subTitle;

  const TermsTitleItemWidget({super.key, required this.title, required this.subTitle});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.only(top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: AppTextStyle.s22_w400(color: context.colors.darkTextColor),
          ),
          Gaps.vGap16,
          Text(
            subTitle,
            style: AppTextStyle.s14_w400(color: context.colors.darkTextColor).copyWith(height: 1.2),
          ),
        ],
      ),
    );
  }
}
