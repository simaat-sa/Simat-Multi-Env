part of 'login_imports.dart';

@RoutePage()
class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<StatefulWidget> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final LoginController controller = LoginController();

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: SafeArea(
        top: true,
        child: AuthScaffoldWidget(
          scaffoldKey: controller.drawerKey,
          appBar: AuthAppBarWidget(
            showBack: false,
            scaffoldkey: controller.drawerKey,
          ),
          body: GestureDetector(
            onTap: FocusScope.of(context).unfocus,
            child: Column(
              children: [
                const LoginHeaderWidget(),
                Flexible(
                  child: ListView(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 25,
                    ),
                    children: [
                      LoginFormWidget(controller: controller),
                      LoginButtonWidget(controller: controller),
                       ForgetPasswordViewWidget(controller: controller,),
                      Gaps.vGap32,
                      const LoginFingerPrintWidget(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
