part of 'payment_filter_widgets_imports.dart';


class PaymentFilterItemWidget extends StatelessWidget {
  final String text;
  const PaymentFilterItemWidget({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){},
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8).r,
        child: Row(
          children: [
            SvgPicture.asset(Res.checkmarkEmpty),
            Gaps.hGap10,
            Text(text,style: AppTextStyle.s16_w400(color: context.colors.darkTextColor),)
          ],
        ),
      ),
    );
  }
}
