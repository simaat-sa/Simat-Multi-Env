part of 'notices_screen_widgets_imports.dart';

class NoticesItemWidget extends StatelessWidget {
  final NoticesModel model;
  const NoticesItemWidget({super.key, required this.model});

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
          if(false)
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
                  model.alertSubject,
                  style: AppTextStyle.s16_w400(color: context.colors.primary),
                ),
                Gaps.vGap5,
                Text(
                  model.alertBody,
                  style: AppTextStyle.s14_w400(color: context.colors.darkTextColor).copyWith(height: 1.5),
                ),
              ],
            ),
          ),
          Text(
            model.date,
            style: AppTextStyle.s16_w400(color: context.colors.primaryText),
          ),
        ],
      ),
    );
  }
}
