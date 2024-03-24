part of 'payment_tab_widgets_imports.dart';

class PaymentDateAndCostWidget extends StatelessWidget {
  final PropertiesExpensesModel model;

  const PaymentDateAndCostWidget({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 5).r,
          child: SvgPicture.asset(
            Res.calendarIcon,
            color: context.colors.primary,
          ),
        ),
        Gaps.hGap(6),
        Text(
          model.getDate,
          style: AppTextStyle.s14_w400(color: context.colors.primary),
        ),
        const Spacer(),
        Text(
          model.totalAmountPrice,
          style: AppTextStyle.s18_w400(color: context.colors.green3),
        ),
        Gaps.hGap4,
        Text(
          Translate.s.sar,
          style: AppTextStyle.s14_w400(color: context.colors.green3),
        )
      ],
    );
  }
}
