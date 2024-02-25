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
  void initState() {
    controller.checkBiometric();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: SafeArea(
        top: true,
        child: AuthScaffoldWidget(
          scaffoldKey: controller.drawerKey,
          appBar:  AuthAppBarWidget(
            showBack: false, scaffoldkey: controller.drawerKey,
          ),
          body: GestureDetector(
            onTap: FocusScope.of(context).unfocus,
            child: Column(
              children: [
                const SizedBox(height: 50),
                const LoginHeaderWidget(),
                Flexible(
                  child: ListView(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 25,
                    ),
                    children: [
                      LoginFormWidget(controller: controller),
                      LoginButtonWidget(controller: controller),
                      Gaps.vGap16,
                      LoginWithQrButtonWidget(controller: controller),
                      Gaps.vGap10,
                      const GetCodeTextWidget(),
                      // ForgetPasswordViewWidget(controller: controller,),
                      Gaps.vGap32,
                      LoginFingerPrintWidget(
                        controller: controller,
                      ),
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
