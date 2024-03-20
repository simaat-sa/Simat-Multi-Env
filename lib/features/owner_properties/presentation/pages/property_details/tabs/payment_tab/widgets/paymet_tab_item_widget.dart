part of 'payment_tab_widgets_imports.dart';

class PaymentTabItemWidget extends StatelessWidget {
  final PropertiesExpensesModel model;
  const PaymentTabItemWidget({super.key, required this.model, });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10).r,
      margin: const EdgeInsets.only(bottom: 12).r,
      decoration:BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        color: context.colors.white
      ),
      child:  Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          PaymentTypeWidget(model:model ,),
          Gaps.vGap10,
          PaymentDateAndCostWidget(model: model,),
          Gaps.vGap8,
          /// if there describe return in Api show widgets below..else..hide them
          // Divider(color: context.colors.greyWhite,),
          // Gaps.vGap13,
          // Text("تفاصيل",style: AppTextStyle.s14_w500(color: context.colors.primary),),
          // Gaps.vGap12,
          // Text("عمل الصيانة المحددة وعمل فحص لمحتويات الوحدة ..عمل الصيانة المحددة وعمل فحص لمحتوياتعمل الصيانة المحددة وعمل فحص لمحتويات الوحدة .. الوحدة ..",
          //   style: AppTextStyle.s13_w400(color: context.colors.darkTextColor),
          //   overflow: TextOverflow.ellipsis,
          // )
        ],
      ),
    );
  }
}
