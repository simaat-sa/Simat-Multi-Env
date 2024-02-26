part of 'payment_widgets_imports.dart';

class PaymentButtonWidget extends StatelessWidget {
  final ContractDetailsController controller;

  const PaymentButtonWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return DisableWidget(
      disable: !(controller.getTotalPrice() > 0),
      child: Container(
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
              controller.getTotalPrice().toStringAsFixed(2),
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
      ),
    );
  }
}
