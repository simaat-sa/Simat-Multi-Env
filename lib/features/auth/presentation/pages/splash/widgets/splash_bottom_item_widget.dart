part of 'splash_widgets_imports.dart';

class SplashBottomItemWidget extends StatelessWidget {
  const SplashBottomItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.only(bottom:30,start: 20,end: 20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
              textAlign: TextAlign.center,
              'Version 01.04.23 ',
              style: AppTextStyle.s12_w400(
                color: context.colors.black,
              )),
          Gaps.vGap5,
          Text(
              textAlign: TextAlign.center,
              '© 2023 by Simaat',
              style: AppTextStyle.s12_w400(
                color: context.colors.black,
              )),
          Gaps.vGap15,
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
