part of 'tenant_details_widgets_imports.dart';

class SummaryViewWidget extends StatelessWidget {
  final ContractDetailsController controller;
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
          Gaps.vGap20,
          RequiredCostWidget(model: controller.model),
          UnitMaintenanceItemWidget(contractModel: controller.model),
          RenewContractItemWidget(controller: controller),
        ],
      ),
    );
  }
}
