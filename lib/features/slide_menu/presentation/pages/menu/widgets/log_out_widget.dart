part of 'menu_widgets_imports.dart';

class LogOutWidget extends StatelessWidget {
  const LogOutWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 20),
      color: context.colors.white,
      child: Row(
        children: [
          Text(
            'تسجيل الخروج',
            style: AppTextStyle.s16_w400(color: context.colors.errorColor),
          ),
        ],
      ),
    );
  }
}
