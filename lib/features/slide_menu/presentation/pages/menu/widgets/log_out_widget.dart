part of 'menu_widgets_imports.dart';

class LogOutWidget extends StatelessWidget {
  final MenuControllerTap controller;
  const LogOutWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => controller.onLogOut(context),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 20),
        color: context.colors.white,
        child: Row(
          children: [
            Text(
              Translate.of(context).label_logout,
              style: AppTextStyle.s16_w400(color: context.colors.errorColor),
            ),
          ],
        ),
      ),
    );
  }
}
