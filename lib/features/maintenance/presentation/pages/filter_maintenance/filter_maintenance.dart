part of 'filter_maintenance_imports.dart';

@RoutePage(name: "FilterMaintenanceRoute")
class FilterMaintenance extends StatelessWidget {
  final MaintenanceController controller;

  const FilterMaintenance({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 22),
      color: context.colors.white,
      width: MediaQuery.of(context).size.width,
      child: Container(
        color: context.colors.white,
        child: Column(
          children: [
            const FilterAppBarWidget(),
            Expanded(
              child: ListView(padding: EdgeInsets.zero, children: [
                const FilterMaintenanceTitleHeaderWidget(),
                Gaps.vGap10,
                FilterSelectMaintenanceWidget(controller: controller),
              ]),
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
      ),
    );
  }
}
