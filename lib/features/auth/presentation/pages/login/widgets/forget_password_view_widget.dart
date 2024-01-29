part of 'login_widgets_imports.dart';

class ForgetPasswordViewWidget extends StatelessWidget {
  const ForgetPasswordViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        InkWell(
          onTap: () {

          },
          // onTap: () => AutoRouter.of(context).push(const ForgetPassword()),
          child: Text(
            "Forget password?",
            style: AppTextStyle.s14_w400(color: context.colors.secondary),
          ),
        ),
      ],
    );
  }
}
