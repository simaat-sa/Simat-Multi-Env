part of 'property_details_widgets_imports.dart';

class CostItemsListWidget extends StatelessWidget {
  final PropDetailsModel model;

  const CostItemsListWidget({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CostItemWidget(title: 'محصل', value: model.amtCollectPrice, color: context.colors.bgLight),
        CostItemWidget(title: 'مطلوب', value: model.amtPayablePrice),
        CostItemWidget(title: 'عمولات', value: model.amtCommTotPrice, color: context.colors.bgLight),
        CostItemWidget(title: 'مدفوعات', value: model.amtPaidPrice),
        CostItemWidget(title: 'تأمينات', value: model.amtInsurPrice, color: context.colors.bgLight),
      ],
    );
  }
}
