part of 'forget_password_imports.dart';

@RoutePage()
class ForgetPassword extends StatefulWidget {
  const ForgetPassword({super.key});

  @override
  State<StatefulWidget> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  final ForgetPasswordController controller = ForgetPasswordController();

  @override
  Widget build(BuildContext context) {
    return AuthScaffoldWidget(
      scaffoldKey: controller.drawerKey,
      appBar: AuthAppBarWidget(
        title: "Forgot Password",
        scaffoldkey: controller.drawerKey,
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
        children: [
          ForgetPasswordFormWidget(
            controller: controller,
          ),
          ForgetPasswordButtonWidget(
            controller: controller,
          ),
        ],
      ),
    );
  }
}
