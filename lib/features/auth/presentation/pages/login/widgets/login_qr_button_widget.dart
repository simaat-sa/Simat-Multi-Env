part of 'login_widgets_imports.dart';

class LoginWithQrButtonWidget extends StatelessWidget {
  final LoginController controller;

  const LoginWithQrButtonWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => controller.qrScan(context),
      child: Container(
        padding: const EdgeInsetsDirectional.only(start: 20),
        height: 45,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: context.colors.secondary),
        ),
        child: Row(
          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(
              Icons.qr_code_2,
              color: context.colors.secondary,
              size: 30,
            ),
            Gaps.hGap10,
            Expanded(
              child: Text(
                Translate.of(context).login_with_qr,
                style: AppTextStyle.s15_w500(color: context.colors.secondary).copyWith(overflow: TextOverflow.ellipsis),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
