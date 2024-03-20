part of 'payment_tab_widgets_imports.dart';

class PaymentTypeWidget extends StatelessWidget {
  final PropertiesExpensesModel model;

  const PaymentTypeWidget({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          model.type,
          style: AppTextStyle.s14_w400(color: context.colors.darkTextColor),
        ),
        Gaps.hGap4,
        Text(
          ".",
          style: AppTextStyle.s16_w500(color: context.colors.primary),
        ),
        Gaps.hGap4,
        Text(
          model.area,
          style: AppTextStyle.s14_w400(color: context.colors.darkTextColor),
        )
      ],
    );
  }
}
