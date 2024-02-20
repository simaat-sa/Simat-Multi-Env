part of 'notices_screen_widgets_imports.dart';

class NoticesAppBarWidget extends StatelessWidget {
  const NoticesAppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.only(start: 22, end: 22, top: 50),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'الإشعارات',
            style: AppTextStyle.s24_w500(color: context.colors.darkTextColor),
          ),
          InkWell(
              onTap: () => AutoRouter.of(context).pop(),
              child:  Icon(
                Icons.close,
                size: 30,
                color: context.colors.darkTextColor,
              ))
        ],
      ),
    );
  }
}
