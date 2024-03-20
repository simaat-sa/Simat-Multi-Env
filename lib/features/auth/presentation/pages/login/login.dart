part of 'login_imports.dart';

@RoutePage()
class Login extends StatefulWidget {
  final bool checkRegisterButton;

  const Login({super.key, required this.checkRegisterButton});

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
                      // Visibility(
                      //   visible: widget.checkRegisterButton && Platform.isIOS,
                      //   child: const CreateAccountButtonWidget(),
                      // ),
                      Gaps.vGap16,
                      LoginWithQrButtonWidget(controller: controller),
                      Gaps.vGap16,
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          GetCodeTextWidget(),
                        ],
                      ),
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
