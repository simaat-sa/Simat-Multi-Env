part of 'property_details_widgets_imports.dart';

class PropertySummaryView extends StatelessWidget {
  final PropModel propModel;
  final PropertyDetailsController controller;

  const PropertySummaryView({super.key, required this.propModel, required this.controller});

  @override
  Widget build(BuildContext context) {
    return RequesterConsumer(
      requester: controller.requester,
      successBuilder: (context, data) {
        return ListView(
          children: [
            PropertySummaryHeaderWidget(model: data!, propModel: propModel),
            Gaps.vGap18,
            PropertySummaryWorksLisItemsWidget(model: data),
            Gaps.vGap12,
            PropertySummaryCostItemWidget(model: data),
            Gaps.vGap12,
            PropertySummaryAddRequestWidget(model: propModel),
          ],
        );
      },
      failureBuilder: (context, error, callback) {
        return FailureViewWidget(onTap: callback);
      },
      loadingBuilder: (context) {
        return const PropDetailsLoadingWidget();
      },
    );
  }
}
