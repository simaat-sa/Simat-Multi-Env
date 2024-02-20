part of 'notices_screen_widgets_imports.dart';

class NoticesEmptyItemWidget extends StatelessWidget {
  const NoticesEmptyItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50,vertical: 150),
      child: Column(
        children: [
          SvgPicture.asset(
            Res.noticesEmpty,
            height: 100,
            width: 100,
          ),
          Gaps.vGap32,
          Text(
            'لا إشعارات',
            style: AppTextStyle.s30_w400(color: context.colors.primaryText),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 13),
            child: Text(
              textAlign: TextAlign.center,
              'لا يوجد لديك إشعارات الآن، برجاء معاودة التحقق لاحقا',
              style: AppTextStyle.s16_w500(color: context.colors.primaryText),
            ),
          ),
          Text(
            textAlign: TextAlign.center,
            'عودة الى الرئيسية',
            style: AppTextStyle.s16_w500(color: context.colors.secondary),
          ),
        ],
      ),
    );
  }
}
