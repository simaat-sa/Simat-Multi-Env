part of 'splash_widgets_imports.dart';

class SplashBottomItemWidget extends StatelessWidget {
  const SplashBottomItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.only(bottom: 30, start: 20, end: 20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
              textAlign: TextAlign.center,
              Translate.s.splash_first_title,
              style: AppTextStyle.s12_w400(
                color: context.colors.black,
              )),
          Gaps.vGap5,
          Text(
              textAlign: TextAlign.center,
              Translate.s.splash_desc_title,
              style: AppTextStyle.s12_w400(
                color: context.colors.black,
              )),
          Gaps.vGap5,
          Text(
              textAlign: TextAlign.center,
              'اصدار 35.1.2',
              style: AppTextStyle.s12_w400(
                color: context.colors.black,
              )),
          Gaps.vGap24,
          LinearPercentIndicator(
            barRadius: Radius.circular(50.r),
            lineHeight: 3.r,
            percent: 1,
            backgroundColor: context.colors.filedColor,
            progressColor: context.colors.primary,
            animation: true,
            animationDuration: 4000,
          )
        ],
      ),
    );
  }
}
