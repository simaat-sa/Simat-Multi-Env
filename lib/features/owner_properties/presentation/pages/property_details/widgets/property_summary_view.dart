part of 'property_details_widgets_imports.dart';

class PropertySummaryView extends StatelessWidget {
  final PropModel model;

  const PropertySummaryView({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        PropertySummaryHeaderWidget(model: model),
        Gaps.vGap18,
        PropertySummaryWorksLisItemsWidget(model: model),
        Gaps.vGap12,
        PropertySummaryCostItemWidget(model: model),
        Gaps.vGap12,
        const PropertySummaryAddRequestWidget(),
      ],
    );
  }
}
