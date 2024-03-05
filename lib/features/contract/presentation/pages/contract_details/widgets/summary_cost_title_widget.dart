part of 'tenant_details_widgets_imports.dart';

class SummaryCostTitleWidget extends StatelessWidget {
  const SummaryCostTitleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          Translate.of(context).deserved_amount,
          style: AppTextStyle.s14_w400(color: context.colors.darkTextColor),
        ),
        Text(
          Translate.of(context).view_payments,
          style: AppTextStyle.s14_w400(color: context.colors.primaryText),
        ),
      ],
    );
  }
}
