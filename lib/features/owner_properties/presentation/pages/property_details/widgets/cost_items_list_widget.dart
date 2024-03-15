part of 'property_details_widgets_imports.dart';

class CostItemsListWidget extends StatelessWidget {
  final PropModel model;

  const CostItemsListWidget({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CostItemWidget(title: 'محصل', value: model.collectPrice, color: context.colors.bgLight),
        CostItemWidget(title: 'مطلوب', value: model.collectPrice),
        CostItemWidget(title: 'عمولات', value: model.collectPrice, color: context.colors.bgLight),
        CostItemWidget(title: 'مدفوعات', value: model.collectPrice),
        CostItemWidget(title: 'تأمينات', value: model.collectPrice, color: context.colors.bgLight),
      ],
    );
  }
}
