part of'payment_tab_widgets_imports.dart';


class PaymentTabHeaderWidget extends StatelessWidget {
  final PaymentTabController controller;
  const PaymentTabHeaderWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("مصروفات [5]",
            style: AppTextStyle.s16_w400(color: context.colors.darkTextColor)),
         FilterIconWidget(filterApply: controller.applyFilterObs,
         onTap: ()=>AutoRouter.of(context).push(const PaymentFilterRoute()),
         )
      ],
    );
  }
}
