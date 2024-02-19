part of'tenant_details_widgets_imports.dart';

class SummaryViewWidget extends StatelessWidget {
   final TenantDetailsController controller;
  const SummaryViewWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 18),
      child: Column(
        children: [
          SummaryViewHeaderWidget(model: controller.model),
          Gaps.vGap16,
          SummaryDetailsWidget(model: controller.model),
          Gaps.vGap16,
          const SummaryCostTitleWidget(),
          Gaps.vGap12,
          RequiredCostWidget(model: controller.model),
          const UnitMaintenanceItemWidget(),
          RenewContractItemWidget(controller: controller),
        ],
      ),
    );
  }
}
