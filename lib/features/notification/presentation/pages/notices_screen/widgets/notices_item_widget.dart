part of 'notices_screen_widgets_imports.dart';

class NoticesItemWidget extends StatelessWidget {
  const NoticesItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 12),
      decoration: BoxDecoration(
        color: context.colors.white,
        border:Border(bottom: BorderSide(color: context.colors.background)),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 8,
            width: 8,
            decoration: BoxDecoration(
              color: context.colors.secondary,
              shape: BoxShape.circle,
            ),
          ),
          Gaps.hGap12,
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'طلب صيانة جديد',
                  style: AppTextStyle.s16_w400(color: context.colors.primary),
                ),
                Gaps.vGap5,
                Text(
                  'لقد قمنا بإرسال رسالة جوال تحتوي على رمز ضمان الجودة لطلبكم رقم S00052',
                  style: AppTextStyle.s14_w400(color: context.colors.darkTextColor).copyWith(height: 1.5),
                ),
              ],
            ),
          ),
          Text(
            'أمس 11:33',
            style: AppTextStyle.s16_w400(color: context.colors.primaryText),
          ),
        ],
      ),
    );
  }
}