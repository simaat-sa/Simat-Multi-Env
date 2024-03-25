part of 'login_widgets_imports.dart';

class ActiveFingerPrintAlert extends StatelessWidget {
  final LoginController controller;

  const ActiveFingerPrintAlert({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(
        Translate.s.active_fingerprint,
        style: AppTextStyle.s18_w500(color: context.colors.primary),
      ),
      content: Text(
        Translate.s.do_you_want_to_activate_fingerprint,
        style: AppTextStyle.s15_w500(color: context.colors.primary),
      ),
      actions: [
        Row(
          children: [
            Expanded(
              child: AppTextButton.maxCustom(
                maxHeight: 45,
                onPressed: () {
                  Navigator.pop(context);
                  controller.loginWithBiometric(context);
                },
                text: Translate.s.confirm,
              ),
            ),
            Gaps.hGap16,
            Expanded(
              child: AppTextButton.maxCustom(
                maxHeight: 45,
                onPressed: () {
                  Navigator.pop(context);
                  controller.callLogin(context);
                },
                text: Translate.s.cancel,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
