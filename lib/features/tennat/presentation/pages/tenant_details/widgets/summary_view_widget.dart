part of'tenant_details_widgets_imports.dart';

class SummaryViewWidget extends StatelessWidget {
  final TenantModel model;
  const SummaryViewWidget({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 18),
      child: Column(
        children: [
          SummaryViewHeaderWidget(model: model,),
          Gaps.vGap16,
          SummaryDetailsWidget(model: model,),
          Gaps.vGap16,
          const SummaryCostTitleWidget(),
          Gaps.vGap12,
          RequiredCostWidget(model: model,),
          const UnitMaintenanceItemWidget(),
          RenewContractItemWidget(model: model,),
        ],
      ),
    );
  }
}
