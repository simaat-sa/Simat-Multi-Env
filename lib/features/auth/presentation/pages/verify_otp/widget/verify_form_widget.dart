part of 'verify_widgets_imports.dart';

class VerifyFormWidget extends StatelessWidget {
  final VerifyOtpController controller;

  const VerifyFormWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Form(
      key: controller.formKey,
      child: GenericTextField(
        radius: BorderRadius.circular(5.r),
        controller: controller.verifyOTP,
        enableBorderColor: context.colors.inputBorder,
        fillColor: context.colors.white,
        contentPadding: const EdgeInsets.all(10),
        fieldTypes: FieldTypes.normal,
        type: TextInputType.emailAddress,
        action: TextInputAction.next,
        validate: (value) => value?.validateEmpty(),
        hint: "OTP Code",
        textColor: context.colors.primary,
        margin: const EdgeInsets.only(top: 20),
        prefixIcon: Padding(
          padding: const EdgeInsets.all(12.0),
          child: SvgPicture.asset(
            Res.otpIcon,
            height: 24,
            width: 24,
          ),
        ),
        suffixIcon: Padding(
          padding: const EdgeInsetsDirectional.only(end: 12, top: 15),
          child: Text(
            '@simaat.sa',
            style: AppTextStyle.s16_w400(color: context.colors.textColor),
          ),
        ),
      ),
    );
  }
}
