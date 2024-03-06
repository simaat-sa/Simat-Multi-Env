part of'login_widgets_imports.dart';


class CreateAccountButtonWidget extends StatelessWidget {
  const CreateAccountButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: AppTextButton.maxCustom(
        onPressed: () =>AutoRouter.of(context).push(const RegisterRoute()),
        bgColor: context.colors.primary,
        txtColor: context.colors.white,
        textSize: 14,
        maxHeight: 45,
        text: "انشاء حساب جديد",
      ),
    );
  }
}
