part of 'register_imports.dart';

@RoutePage(name: 'RegisterRoute')
class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final RegisterController controller = RegisterController();

  @override
  Widget build(BuildContext context) {
    return AuthScaffoldWidget(
      scaffoldKey: controller.drawerKey,
      appBar: AuthAppBarWidget(showBack: false, scaffoldkey: controller.drawerKey),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus,
        child: Column(
          children: [
            const SizedBox(height: 50),
            const RegisterHeaderWidget(),
            Flexible(
              child: ListView(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                children: [
                  RegisterFormWidget(controller: controller),
                  Gaps.vGap32,
                  RegisterButtonWidget(controller: controller),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
