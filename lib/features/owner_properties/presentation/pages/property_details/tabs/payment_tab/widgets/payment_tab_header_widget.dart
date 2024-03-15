part of'payment_tab_widgets_imports.dart';


class PaymentTabHeaderWidget extends StatelessWidget {
  const PaymentTabHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(Translate.of(context).contract,
            style: AppTextStyle.s16_w400(color: context.colors.darkTextColor)),
        Gaps.hGap12,
        Container(
          alignment: Alignment.center,
          height: 26,
          padding: const EdgeInsets.symmetric(horizontal: 5),
          decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(5),
              border: Border.all(color: context.colors.primary)),
          child: Text(
            "#1002",
            style: AppTextStyle.s14_w500(color: context.colors.primary).copyWith(height: 2),
          ),
        ),
        const Spacer(),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          decoration: BoxDecoration(
            color: context.colors.green3,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Text(
            "فعال",
            style: AppTextStyle.s13_w500(color: context.colors.white),
          ),
        ),
      ],
    );
  }
}
