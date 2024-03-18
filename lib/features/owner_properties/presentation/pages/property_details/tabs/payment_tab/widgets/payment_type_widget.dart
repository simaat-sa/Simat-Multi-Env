part of 'payment_tab_widgets_imports.dart';


class PaymentTypeWidget extends StatelessWidget {
  const PaymentTypeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text("كهرباء الخدمات",style: AppTextStyle.s14_w400(color: context.colors.darkTextColor),),
        Gaps.hGap4,
        Text(".",style: AppTextStyle.s16_w500(color: context.colors.primary),),
        Gaps.hGap4,
        Text("شقة 1",style: AppTextStyle.s14_w400(color: context.colors.darkTextColor),)
      ],
    );
  }
}
