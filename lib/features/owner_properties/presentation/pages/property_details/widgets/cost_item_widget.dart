part of'property_details_widgets_imports.dart';


class CostItemWidget extends StatelessWidget {
  final Color? color;
  final String title;
  final String value;
  const CostItemWidget({super.key, this.color, required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 7, horizontal: 7),
      color: color ?? context.colors.white,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset(
            Res.coinLogo,
            color: context.colors.textColor,
          ),
          Gaps.hGap5,
          Text(
            title,
            style: AppTextStyle.s14_w400(color: context.colors.darkTextColor),
          ),
          const Spacer(),
          Text(
            '${value} ${Translate.of(context).sar}',
            style: AppTextStyle.s12_w400(color: context.colors.primary),
          ),
        ],
      ),
    );
  }
}
