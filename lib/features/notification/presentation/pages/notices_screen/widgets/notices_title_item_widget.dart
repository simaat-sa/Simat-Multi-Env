part of 'notices_screen_widgets_imports.dart';

class NoticesTitleItemWidget extends StatelessWidget {
  const NoticesTitleItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.only(start: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            Translate.of(context).new_notices,
            style: AppTextStyle.s16_w500(color: context.colors.noticesTextColor),
          ),
        ],
      ),
    );
  }
}
