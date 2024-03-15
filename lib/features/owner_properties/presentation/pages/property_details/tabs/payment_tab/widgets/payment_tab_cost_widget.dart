part of'payment_tab_widgets_imports.dart';


class PaymentTabCostWidget extends StatelessWidget {
  const PaymentTabCostWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Gaps.vGap10,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              Translate.of(context).tax,
              style: AppTextStyle.s14_w400(color: context.colors.darkTextColor),
            ),
            Row(
              children: [
                Text(
                  "500",
                  style: AppTextStyle.s18_w400(color: context.colors.darkTextColor),
                ),
                Text(
                  Translate.of(context).sar,
                  style: AppTextStyle.s14_w400(color: context.colors.darkTextColor),
                ),
              ],
            ),
          ],
        ),
        Gaps.vGap10,
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              width: 100,
              color: context.colors.primaryText,
              height: 1,
            ),
          ],
        ),
        Gaps.vGap20,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              Translate.of(context).required,
              style: AppTextStyle.s14_w400(color: context.colors.darkTextColor),
            ),
            Row(
              children: [
                Text(
                  "33.330",
                  style: AppTextStyle.s20_w500(color: context.colors.darkTextColor),
                ),
                Text(
                  Translate.of(context).sar,
                  style: AppTextStyle.s14_w400(color: context.colors.darkTextColor),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
