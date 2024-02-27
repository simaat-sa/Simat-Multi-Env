part of 'filter_maintenance_widgets_imports.dart';

class FilterSelectMaintenanceWidget extends StatelessWidget {
  final MaintenanceController controller;
  const FilterSelectMaintenanceWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return ObsValueConsumer<ContractStatus>(
        observable: controller.filterContractObs,
        builder: (context, value) {
          return Column(
            children: ContractStatus.values.map((e) {
              return Visibility(
                visible: e != ContractStatus.non,
                child: FilterMaintenanceSelectItemWidget(
                  onTap: () => controller.filterContractObs.setValue(e),
                  changeValue: value.index,
                  title: e.getLocalizedName(),
                  value: e.index,
                ),
              );
            }).toList(),
          );
        });
  }

}
