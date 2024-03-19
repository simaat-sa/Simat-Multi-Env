part of 'maintenance_tab_widgets_imports.dart';

class MaintenanceTabFilterWidget extends StatelessWidget {
  final MaintenanceTabController controller;

  const MaintenanceTabFilterWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 22),
      color: context.colors.background,
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          const FilterAppBarWidget(),
          Flexible(
            child: ListView(
              children: [
                Text(
                  Translate.of(context).maintenance_request_status,
                  style: AppTextStyle.s18_w500(color: context.colors.darkTextColor),
                ),
                Gaps.vGap10,
                ObsValueConsumer<ContractStatus>(
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
                    }),
              ],
            ),
          ),
          FilterButtonsWidget(
            onFilterTap: () {
              controller.onFilter(context);
              Navigator.pop(context);
            },
            onResetTap: () {
              controller.onResetFilter(context);
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
