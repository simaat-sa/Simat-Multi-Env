part of 'tenant_details_widgets_imports.dart';

class SummaryDetailsWidget extends StatelessWidget {
  final ContractModel model;

  const SummaryDetailsWidget({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DetailsItemWidget(
            image: Res.unitLocationLogo,
            title: Translate.of(context).district_region,
            value: "${model.propRegion} . ${model.propCity}"),
        DetailsItemWidget(
          image: Res.calendarIcon,
          title: Translate.of(context).contract_end_date,
          value: model.date,
          color: context.colors.bgLight,
        ),
        DetailsItemWidget(
          image: Res.coinLogo,
          title: Translate.of(context).total_contract,
          value: model.duePrice,
        ),
        DetailsItemWidget(
          image: Res.coinLogo,
          title: Translate.of(context).net_contract,
          value: model.netPrice,
          color: context.colors.bgLight,
        ),
        DetailsItemWidget(
          image: Res.coinLogo,
          title: Translate.of(context).insurance,
          value: model.insurancePrice,
        ),
        DetailsItemWidget(
          image: Res.coinLogo,
          title: Translate.of(context).additional_amounts,
          value: model.additionalPrice,
          color: context.colors.bgLight,
        ),
        DetailsItemWidget(
          image: Res.coinLogo,
          title: Translate.of(context).collector,
          value: model.collectPrice,
        ),
      ],
    );
  }
}
