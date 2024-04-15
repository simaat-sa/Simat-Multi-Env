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
          Gaps.vGap32,
          if(AppConfig.instance.isGeneralEnv)
          GenericTextField(
            radius: BorderRadius.circular(5.r),
            controller: controller.host,
            enableBorderColor: context.colors.inputBorder,
            fillColor: context.colors.white,
            contentPadding: const EdgeInsets.all(10),
            fieldTypes: FieldTypes.normal,
            type: TextInputType.url,
            action: TextInputAction.next,
            validate: (value) => value?.validateEmpty(),
            hint: Translate.of(context).host_name,
            textColor: context.colors.secondary,
            margin: const EdgeInsets.only(top: 15),
            prefixIcon: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Icon(
                  Icons.link,
                  color: context.colors.primaryText,
                )),
          ),
          GenericTextField(
            radius: BorderRadius.circular(5.r),
            controller: controller.name,
            enableBorderColor: context.colors.inputBorder,
            fillColor: context.colors.white,
            contentPadding: const EdgeInsets.all(10),
            fieldTypes: FieldTypes.normal,
            type: TextInputType.emailAddress,
            action: TextInputAction.next,
            validate: (value) => value?.validateEmpty(),
            hint: Translate.of(context).user_or_phone_hint,
            textColor: context.colors.secondary,
            margin: const EdgeInsets.only(top: 15),
            prefixIcon: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Icon(
                  Icons.person_outline_outlined,
                  color: context.colors.primaryText,
                )),
          ),
          ObsValueConsumer(
            observable: controller.visibleObs,
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
                validate: (value) => value?.validateEmpty(),
                hint: Translate.of(context).label_password,
                contentPadding: const EdgeInsets.all(10),
                textColor: context.colors.secondary,
                margin: const EdgeInsets.only(top: 15),
                prefixIcon: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: SvgPicture.asset(
                    Res.passwordIcon,
                    height: 24,
                    width: 24,
                    color: context.colors.textColor,
                  ),
                ),
                suffixIcon: InkWell(
                  onTap: () => controller.visibleObs.setValue(!state),
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
