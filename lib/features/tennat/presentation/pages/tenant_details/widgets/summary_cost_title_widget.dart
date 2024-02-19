part of'tenant_details_widgets_imports.dart';


class SummaryCostTitleWidget extends StatelessWidget {
  const SummaryCostTitleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('المبلغ المستحق',style: AppTextStyle.s14_w400(color: context.colors.darkTextColor),),
        Text('عرض المدفوعات',style: AppTextStyle.s14_w400(color: context.colors.primaryText),),
      ],
    );
  }
}
