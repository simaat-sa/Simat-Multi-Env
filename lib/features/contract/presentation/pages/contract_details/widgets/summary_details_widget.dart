part of'tenant_details_widgets_imports.dart';


class SummaryDetailsWidget extends StatelessWidget {
  final ContractModel model;
  const SummaryDetailsWidget({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DetailsItemWidget(
            image: Res.unitLocationLogo,
            title: Translate.s.district_region,
            value: "${model.propRegion} . ${model.propCity}"),
        DetailsItemWidget(
            image: Res.calendarIcon,
            title: Translate.s.contract_end_date,
            value: model.date,
            color: context.colors.bgLight),
        DetailsItemWidget(image: Res.coinLogo, title: Translate.s.total_contract, value: model.price),
        DetailsItemWidget(
            image: Res.coinLogo, title: Translate.s.net_contract, value: model.price, color: context.colors.bgLight),
        DetailsItemWidget(image: Res.coinLogo, title: Translate.s.insurance, value: model.price),
        DetailsItemWidget(
            image: Res.coinLogo,
            title: Translate.s.additional_amounts,
            value: model.price,
            color: context.colors.bgLight),
        DetailsItemWidget(image: Res.coinLogo, title: Translate.s.collector, value: model.price),
      ],
    );
  }
}
