part of 'add_contract_status_widgets_imports.dart';

class CompleteAddFormWidget extends StatelessWidget {
  final ContractModel? model;

  const CompleteAddFormWidget({super.key, this.model});

  @override
  Widget build(BuildContext context) {
    final bool isSuccess = model != null;
    return Column(
      children: [
        SvgPicture.asset(
          isSuccess ? Res.successLogo : Res.failLogo,
          height: 100,
          width: 100,
        ),
        Gaps.vGap32,
        Text(
          isSuccess ? 'تم طلب الصيانة' : 'حدث خطأ ما',
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
        Gaps.vGap16,
        const NewMaintenanceRequestButtonWidget(),
        InkWell(
          onTap: () => AutoRouter.of(context).pop(),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 20),
            child: Text(
              isSuccess ? 'عودة لطلبات الصيانة' : 'ربما لاحقا، عودة الى الرئيسية',
              style: AppTextStyle.s14_w500(color: context.colors.secondary),
            ),
          ),
        ),
      ],
    );
  }

  String _data(bool isSuccess) {
    return isSuccess
        ? 'لقد قمنا بإرسال رسالة جوال تحتوي على رمز ضمان الجودة لطلبكم رقم ${model!.code}'
        : "لم يتم طلب الصيانة لخطأ ما، برجاء اعادة المحاولة";
  }
}
