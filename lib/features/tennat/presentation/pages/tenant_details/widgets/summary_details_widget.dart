part of'tenant_details_widgets_imports.dart';


class SummaryDetailsWidget extends StatelessWidget {
  final TenantModel model;
  const SummaryDetailsWidget({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DetailsItemWidget(image: Res.unitLocationLogo,title: 'الحي . المنطقة',value: "${model.propRegion} . ${model.propCity}"),
        DetailsItemWidget(image: Res.calendarIcon,title: 'تاريخ نهاية العقد',value: model.expireDate,color: context.colors.bgLight),
        DetailsItemWidget(image: Res.coinLogo,title: 'إجمالي العقد',value: model.price),
        DetailsItemWidget(image: Res.coinLogo,title: 'صافي العقد',value: model.priceWithoutTax,color: context.colors.bgLight),
        DetailsItemWidget(image: Res.coinLogo,title: 'تأمين',value: model.price),
        DetailsItemWidget(image: Res.coinLogo,title: 'مبالغ إضافية',value: model.price,color: context.colors.bgLight),
        DetailsItemWidget(image: Res.coinLogo,title: 'محصل',value: model.price),
      ],
    );
  }
}
