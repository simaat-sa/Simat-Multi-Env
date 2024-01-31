part of 'login_widgets_imports.dart';

class LoginButtonWidget extends StatelessWidget {
  final LoginController controller;

  const LoginButtonWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: AppTextButton.maxCustom(
        onPressed: () =>  controller.onSubmit(context),
        bgColor: context.colors.primary,
        txtColor: context.colors.white,
        textSize: 14,
        maxHeight: 45, text: Translate.of(context).Sign_In,
      ),
    );
  }
}
