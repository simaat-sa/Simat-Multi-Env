part of 'property_details_widgets_imports.dart';

class CostItemsListWidget extends StatelessWidget {
  final PropDetailsModel model;

  const CostItemsListWidget({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CostItemWidget(title: 'محصل', value: model.amtCollect, color: context.colors.bgLight),
        CostItemWidget(title: 'مطلوب', value: model.amtPayable),
        CostItemWidget(title: 'عمولات', value: model.amtCommTot, color: context.colors.bgLight),
        CostItemWidget(title: 'مدفوعات', value: model.amtPaid),
        CostItemWidget(title: 'تأمينات', value: model.amtInsur, color: context.colors.bgLight),
      ],
    );
  }
}
