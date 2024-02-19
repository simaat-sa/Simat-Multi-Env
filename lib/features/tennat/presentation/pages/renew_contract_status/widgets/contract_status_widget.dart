part of 'renew_contract_status_widgets_imports.dart';


class ContractStatusWidget extends StatelessWidget {
  final bool success;

  const ContractStatusWidget({super.key, required this.success});

  @override
  Widget build(BuildContext context) {
    final bool isSuccess = success;
    return Column(
      children: [
        SvgPicture.asset(
          isSuccess ? Res.successLogo : Res.failLogo,
          height: 100,
          width: 100,
        ),
        Gaps.vGap32,
        Text(
          textAlign: TextAlign.center,
          isSuccess ? "تم طلب التجديد بنجاح ": "خطأ في طلب التجديد",
          style: AppTextStyle.s30_w400(color: context.colors.green4),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16,horizontal: 30),
          child: Text(
            _data(isSuccess),
            textAlign: TextAlign.center,
            style: AppTextStyle.s16_w500(color: context.colors.textColor).copyWith(
              height: 1.6,
            ),
          ),
        ),
        InkWell(
          onTap: () => AutoRouter.of(context).pop(),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 20),
            child: Text(
              "عودة إلى العقود",
              style: AppTextStyle.s14_w500(color: context.colors.secondary),
            ),
          ),
        ),
      ],
    );
  }

  String _data(bool isSuccess) {
    return isSuccess
        ? "تم استلام الطلب، وسنقوم بتحديثك قريبًا"
        : "الايام المتبقيه على انتهاء العقد اكثر من الايام المسموحه للتجديد";
  }
}
