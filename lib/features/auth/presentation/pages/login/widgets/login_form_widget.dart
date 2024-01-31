part of 'login_widgets_imports.dart';

class LoginFormWidget extends StatelessWidget {
  final LoginController controller;

  const LoginFormWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Form(
      key: controller.formKey,
      child: Column(
        children: [
          GenericTextField(
            radius: BorderRadius.circular(5.r),
            controller: controller.email,
            enableBorderColor: context.colors.inputBorder,
            fillColor: context.colors.white,
            contentPadding: const EdgeInsets.all(10),
            fieldTypes: FieldTypes.normal,
            type: TextInputType.emailAddress,
            action: TextInputAction.next,
            validate: (value) => value?.noValidate(),
            hint: "Email",
            textColor: context.colors.secondary,
            margin: const EdgeInsets.only(top: 40),
            prefixIcon: Padding(
              padding: const EdgeInsets.all(12.0),
              child: SvgPicture.asset(
                Res.emailIcon,
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
          ObsValueConsumer(
            observable: controller.visableObs,
            builder: (context, state) {
              return GenericTextField(
                radius: BorderRadius.circular(5.r),
                controller: controller.password,
                onTab: () => state,
                enableBorderColor: context.colors.inputBorder,
                fillColor: context.colors.white,
                fieldTypes: state ? FieldTypes.normal : FieldTypes.password,
                type: TextInputType.text,
                action: TextInputAction.done,
                validate: (value) => value?.noValidate(),
                hint: "Password",
                contentPadding: const EdgeInsets.all(10),
                textColor: context.colors.secondary,
                margin: const EdgeInsets.only(top: 15),
                prefixIcon: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: SvgPicture.asset(
                    Res.passwordIcon,
                    height: 24,
                    width: 24,
                  ),
                ),
                suffixIcon: InkWell(
                  onTap: () => controller.visableObs.setValue(!state),
                  child: Icon(
                    state == true
                        ? Icons.visibility_outlined
                        : Icons.visibility_off_outlined,
                    size: 20,
                    color: context.colors.textColor,
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
