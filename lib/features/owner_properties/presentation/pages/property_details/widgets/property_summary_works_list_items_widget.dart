part of'property_details_widgets_imports.dart';


class PropertySummaryWorksLisItemsWidget extends StatelessWidget {
  final PropDetailsModel model;

  const PropertySummaryWorksLisItemsWidget({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        PropertySummaryWorksItemWidget(
          model: model,
          title: 'الإشغال',
          visiblePercent: true,
          allRented: model.propChildOcc,
          allProp: model.propChildTot,
        ),
        PropertySummaryWorksItemWidget(
          model: model,
          title: 'تجاري مؤجر',
          allRented: model.commercialRented,
          allProp: model.commercialRentedTotal,
        ),
        PropertySummaryWorksItemWidget(
          model: model,
          title: 'سكني مؤجر',
          allRented: model.residentialRented,
          allProp: model.residentialRentedTotal,
        ),
      ],
    );
  }
}
