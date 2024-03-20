part of 'property_details_widgets_imports.dart';

class CostItemsListWidget extends StatelessWidget {
  final PropDetailsModel model;

  const CostItemsListWidget({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CostItemWidget(title: Translate.s.collector, value: model.amtCollectPrice, color: context.colors.bgLight),
        CostItemWidget(title: Translate.s.required, value: model.amtPayablePrice),
        CostItemWidget(title: Translate.s.commissions, value: model.amtCommTotPrice, color: context.colors.bgLight),
        CostItemWidget(title: Translate.s.payments, value: model.amtPaidPrice),
        CostItemWidget(title: Translate.s.insurances, value: model.amtInsurPrice, color: context.colors.bgLight),
      ],
    );
  }
}
