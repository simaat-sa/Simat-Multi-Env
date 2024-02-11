part of 'tenant_screen_widgets_imports.dart';

class HeaderTextWidget extends StatelessWidget {
  const HeaderTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          Translate.of(context).rented_units([4]),
          style: AppTextStyle.s16_w500(color: context.colors.blackOpacity),
        ),
      ],
    );
  }
}
