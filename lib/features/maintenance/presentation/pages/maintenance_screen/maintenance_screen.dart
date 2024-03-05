part of 'maintenance_screen_imports.dart';

class MaintenanceScreen extends StatefulWidget {
  const MaintenanceScreen({super.key});

  @override
  State<MaintenanceScreen> createState() => _MaintenanceScreenState();
}

class _MaintenanceScreenState extends State<MaintenanceScreen> {
  final MaintenanceController controller = MaintenanceController();

  @override
  void initState() {
    super.initState();
    controller.initPaginationController(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        child: Column(
          children: [
            FilterItemWidget(
              onChange: (value) {
                controller.searchText = value;
                controller.onFilter();
              },
              onSubmit: (value) {
                controller.searchText = value;
                controller.onFilter();
              },
              onTap: () => AutoRouter.of(context).push(FilterMaintenanceRoute(controller: controller)),
            ),
            PageHeaderTitleWidget(
              title: Translate.of(context).maintenanceCount("5"),
            ),
            Gaps.vGap10,
            Flexible(
              child: PagedListView(
                pagingController: controller.pagingController,
                builderDelegate: PagedChildBuilderDelegate<MaintenanceModel>(
                  itemBuilder: (context, item, index) {
                    return MaintenanceItemWidget(
                      model: item,
                      controller: controller,
                    );
                  },
                  firstPageErrorIndicatorBuilder: (context) {
                    return const UnitLoadingListWidget();
                  },
                  noItemsFoundIndicatorBuilder: (context) {
                    return const EmptyListItemWidget();
                  },
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      floatingActionButton: FloatingActionButton(
        shape: const CircleBorder(),
        onPressed: () => AutoRouter.of(context).push(AddMaintenanceRoute()),
        child: Icon(
          Icons.add,
          color: context.colors.white,
          size: 40,
        ),
      ),
    );
  }
}
