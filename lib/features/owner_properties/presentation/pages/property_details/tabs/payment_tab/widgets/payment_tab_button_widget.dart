part of'payment_tab_widgets_imports.dart';


class PaymentTabButtonWidget extends StatelessWidget {
  const PaymentTabButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 12),
      padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 13),
      decoration: BoxDecoration(
        color: context.colors.primary,
        borderRadius: BorderRadius.circular(7),
      ),
      child: Row(
        children: [
          Text(
            Translate.of(context).required,
            style: AppTextStyle.s16_w500(color: context.colors.white),
          ),
          Gaps.hGap5,
          Text(
            "50.000",
            style: AppTextStyle.s20_w500(color: context.colors.white),
          ),
          Text(
            Translate.of(context).sar,
            style: AppTextStyle.s14_w400(color: context.colors.white),
          ),
          const Spacer(),
          Text(
            Translate.of(context).confirm_payment,
            style: AppTextStyle.s16_w500(color: context.colors.white),
          ),
        ],
      ),
    );
  }
}
