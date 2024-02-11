part of 'login_widgets_imports.dart';

class GetCodeTextWidget extends StatelessWidget {
  const GetCodeTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(
          Translate.of(context).how_get_code,
          style: AppTextStyle.s14_w400(color: context.colors.secondary),
        ),
      ],
    );
  }
}
