part of'forget_password_widgets_imports.dart';

class ForgetPasswordFormWidget extends StatelessWidget {
  final ForgetPasswordController controller;
  const ForgetPasswordFormWidget({super.key,required this.controller});

  @override
  Widget build(BuildContext context) {
    return Form(
      key: controller.formKey,
      child: GenericTextField(
        radius: BorderRadius.circular(5.r),
        controller: controller.email,
        enableBorderColor: context.colors.inputBorder,
        fillColor: context.colors.white,
        contentPadding: const EdgeInsets.all(10),
        fieldTypes: FieldTypes.normal,
        type: TextInputType.emailAddress,
        action: TextInputAction.next,
        validate: (value) => value?.validateEmail(),
        hint: "Email",
        textColor: context.colors.primary,
        margin: const EdgeInsets.only(top: 40),
        prefixIcon: Padding(
          padding: const EdgeInsets.all(12.0),
          child: SvgPicture.asset(
            Res.emailIcon,
            height: 20,
            width: 22,
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
