part of 'verify_widgets_imports.dart';

class VerifyHeaderWidget extends StatelessWidget {
  const VerifyHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      "Enter the OTP code sent to your Email",
      style: AppTextStyle.s16_w400(color: context.colors.black),
    );
  }
}
