part of 'maintenance_tab_imports.dart';

class MaintenanceTab extends StatefulWidget {
  final String areaId;

  const MaintenanceTab({super.key, required this.areaId});

  @override
  State<MaintenanceTab> createState() => _MaintenanceTabState();
}

class _MaintenanceTabState extends State<MaintenanceTab> {
  late MaintenanceTabController controller;

  @override
  void initState() {
    controller = MaintenanceTabController(widget.areaId);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return PagedListView(
      pagingController: controller.pagingController,
      builderDelegate: PagedChildBuilderDelegate<MaintenanceModel>(
        itemBuilder: (context, item, index) {
          return MaintenanceTabItemWidget(
            model: item,
          );
        },
        firstPageErrorIndicatorBuilder: (context) {
          return const UnitLoadingListWidget();
        },
        noItemsFoundIndicatorBuilder: (context) {
          return const EmptyListItemWidget();
        },
      ),
    );
  }
}
