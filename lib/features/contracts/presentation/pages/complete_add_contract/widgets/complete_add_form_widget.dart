part of 'complete_add_widgets_imports.dart';

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
          style: AppTextStyle.s30_w400(color: context.colors.darkTextColor),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16,horizontal: 30),
          child: Text(
            _data(isSuccess),
            textAlign: TextAlign.center,
            style: AppTextStyle.s16_w500(color: context.colors.primaryText),
          ),
        ),
        Gaps.vGap16,
        const CompleteAddButtonWidget(),
        Gaps.vGap24,
        Text(
          isSuccess ? 'عودة لطلبات الصيانة' : 'ربما لاحقا، عودة الى الرئيسية',
          style: AppTextStyle.s14_w400(color: context.colors.secondary),
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
