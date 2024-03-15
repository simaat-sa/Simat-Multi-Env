part of'property_details_widgets_imports.dart';


class PropertySummaryWorksLisItemsWidget extends StatelessWidget {
  final PropModel model;
  const PropertySummaryWorksLisItemsWidget({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        PropertySummaryWorksItemWidget(model: model,title: 'الإشغال',visiblePercent: true),
        PropertySummaryWorksItemWidget(model: model,title: 'تجاري مؤجر'),
        PropertySummaryWorksItemWidget(model: model,title: 'سكني مؤجر'),
      ],
    );
  }
}
