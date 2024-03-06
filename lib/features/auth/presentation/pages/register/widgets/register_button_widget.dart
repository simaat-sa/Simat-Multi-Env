part of'register_widgets_imports.dart';


class RegisterButtonWidget extends StatelessWidget {
  final RegisterController controller;
  const RegisterButtonWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return AppTextButton.maxCustom(
      onPressed: () => controller.callCreateAccount(context),
      bgColor: context.colors.primary,
      txtColor: context.colors.white,
      textSize: 14,
      maxHeight: 45,
      text: "انشاء حساب جديد",
    );
  }
}
