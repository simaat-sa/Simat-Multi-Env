part of 'notices_screen_widgets_imports.dart';

class NoticesEmptyItemWidget extends StatelessWidget {
  const NoticesEmptyItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 150),
      child: Column(
        children: [
          SvgPicture.asset(
            Res.noticesEmpty,
            height: 100,
            width: 100,
          ),
          Gaps.vGap32,
          Text(
            Translate.s.no_notices,
            style: AppTextStyle.s30_w400(color: context.colors.primaryText),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 13),
            child: Text(
              textAlign: TextAlign.center,
              Translate.s.no_notices_now,
              style: AppTextStyle.s16_w500(color: context.colors.primaryText),
            ),
          ),
          Text(
            textAlign: TextAlign.center,
            Translate.s.back_to_main_page,
            style: AppTextStyle.s16_w500(color: context.colors.secondary),
          ),
        ],
      ),
    );
  }
}
