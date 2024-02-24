part of 'forget_password_widgets_imports.dart';

class ForgetPasswordButtonWidget extends StatelessWidget {
  final ForgetPasswordController controller;

  const ForgetPasswordButtonWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: AppTextButton.maxCustom(
        onPressed: () => AutoRouter.of(context).push(const VerifyOTP()),
        bgColor: context.colors.secondary,
        txtColor: context.colors.white,
        textSize: 14,
        maxHeight: 45,
        text: 'SEND OTP',
      ),
    );
  }
}
