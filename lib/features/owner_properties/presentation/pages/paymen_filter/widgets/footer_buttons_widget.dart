part of 'payment_filter_widgets_imports.dart';

class FooterButtonsWidget extends StatelessWidget {
  const FooterButtonsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: InkWell(
            onTap: () {},
            child: Container(
              alignment: Alignment.center,
              height: 40,
              decoration: BoxDecoration(
                color: context.colors.primary,
                borderRadius: BorderRadius.circular(6),
              ),
              child: Text(
                'تطبيق',
                style: AppTextStyle.s16_w400(color: context.colors.white),
              ),
            ),
          ),
        ),
        Gaps.hGap10,
        Expanded(
          child: InkWell(
            onTap: () {},
            child: Container(
              alignment: Alignment.center,
              height: 40,
              decoration: BoxDecoration(
                color: context.colors.background,
                border: Border.all(color: context.colors.primary),
                borderRadius: BorderRadius.circular(6),
              ),
              child: Text(
                Translate.of(context).reset,
                style: AppTextStyle.s16_w400(color: context.colors.primary),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
