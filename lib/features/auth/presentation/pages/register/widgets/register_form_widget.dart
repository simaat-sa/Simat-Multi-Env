part of'register_widgets_imports.dart';


class RegisterFormWidget extends StatelessWidget {
  final RegisterController controller;
  const RegisterFormWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Form(
      key: controller.formKey,
      child: Column(
        children: [
          GenericTextField(
            radius: BorderRadius.circular(5.r),
            controller: controller.name,
            enableBorderColor: context.colors.inputBorder,
            fillColor: context.colors.white,
            contentPadding: const EdgeInsets.all(10),
            fieldTypes: FieldTypes.normal,
            type: TextInputType.name,
            action: TextInputAction.next,
            validate: (value) => value?.validateEmpty(),
            hint: "اسم المستخدم",
            textColor: context.colors.secondary,
            margin: const EdgeInsets.only(top: 40),
            prefixIcon: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Icon(
                  Icons.person_outline_outlined,
                  color: context.colors.primaryText,
                )),
          ),
          GenericTextField(
            radius: BorderRadius.circular(5.r),
            controller: controller.email,
            enableBorderColor: context.colors.inputBorder,
            fillColor: context.colors.white,
            contentPadding: const EdgeInsets.all(10),
            fieldTypes: FieldTypes.normal,
            type: TextInputType.emailAddress,
            action: TextInputAction.next,
            validate: (value) => value?.validateEmail(),
            hint: "البريد الالكتروني",
            textColor: context.colors.secondary,
            margin: const EdgeInsets.only(top: 10),
            prefixIcon: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Icon(
                  Icons.email_outlined,
                  color: context.colors.primaryText,
                )),
          ),
          GenericTextField(
            radius: BorderRadius.circular(5.r),
            controller: controller.phone,
            enableBorderColor: context.colors.inputBorder,
            fillColor: context.colors.white,
            contentPadding: const EdgeInsets.all(10),
            fieldTypes: FieldTypes.normal,
            type: TextInputType.phone,
            action: TextInputAction.next,
            validate: (value) => value?.noValidate(),
            hint: "الجوال",
            textColor: context.colors.secondary,
            margin: const EdgeInsets.only(top: 10),
            prefixIcon: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Icon(
                  Icons.phone,
                  color: context.colors.primaryText,
                )),
          ),
          ObsValueConsumer(
            observable: controller.visiblePasObs,
            builder: (context, state) {
              return GenericTextField(
                radius: BorderRadius.circular(5.r),
                controller: controller.password,
                onTab: () => state,
                enableBorderColor: context.colors.inputBorder,
                fillColor: context.colors.white,
                fieldTypes: state ? FieldTypes.normal : FieldTypes.password,
                type: TextInputType.text,
                action: TextInputAction.next,
                validate: (value) => value?.validatePassword(),
                hint: Translate.of(context).label_password,
                contentPadding: const EdgeInsets.all(10),
                textColor: context.colors.secondary,
                margin: const EdgeInsets.only(top: 10),
                prefixIcon: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: SvgPicture.asset(
                    Res.passwordIcon,
                    height: 24,
                    width: 24,
                  ),
                ),
                suffixIcon: InkWell(
                  onTap: () => controller.visiblePasObs.setValue(!state),
                  child: Icon(
                    state == true ? Icons.visibility_outlined : Icons.visibility_off_outlined,
                    size: 20,
                    color: context.colors.textColor,
                  ),
                ),
              );
            },
          ),
          ObsValueConsumer(
            observable: controller.visibleConfirmPasObs,
            builder: (context, state) {
              return GenericTextField(
                radius: BorderRadius.circular(5.r),
                controller: controller.passwordConfirm,
                onTab: () => state,
                enableBorderColor: context.colors.inputBorder,
                fillColor: context.colors.white,
                fieldTypes: state ? FieldTypes.normal : FieldTypes.password,
                type: TextInputType.text,
                action: TextInputAction.done,
                validate: (value) => value?.validatePasswordConfirm(pass: controller.password.text),
                hint: "تأكيد كلمة المرور",
                contentPadding: const EdgeInsets.all(10),
                textColor: context.colors.secondary,
                margin: const EdgeInsets.only(top: 10),
                prefixIcon: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: SvgPicture.asset(
                    Res.passwordIcon,
                    height: 24,
                    width: 24,
                  ),
                ),
                suffixIcon: InkWell(
                  onTap: () => controller.visiblePasObs.setValue(!state),
                  child: Icon(
                    state == true ? Icons.visibility_outlined : Icons.visibility_off_outlined,
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
