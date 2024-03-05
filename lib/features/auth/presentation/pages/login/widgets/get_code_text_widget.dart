part of 'login_widgets_imports.dart';

class GetCodeTextWidget extends StatelessWidget {
  final LoginController controller;
  const GetCodeTextWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        InkWell(
          onTap: () =>controller.getCode(context),
          child: Text(
            Translate.of(context).how_get_code,
            style: AppTextStyle.s14_w400(color: context.colors.secondary),
          ),
        ),
      ],
    );
  }
}
