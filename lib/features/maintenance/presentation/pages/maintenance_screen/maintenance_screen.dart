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
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: RequesterConsumer(
        requester: controller.requester,
        successBuilder: (context, data) {
          return RefreshIndicator(
            onRefresh: () => controller.requestData(),
            child: ListView(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
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
                  title: Translate.of(context).maintenanceCount([data.length]),
                ),
                Gaps.vGap10,
                Visibility(
                  visible: controller.requester.data!.isNotEmpty,
                  replacement: const EmptyListItemWidget(),
                  child: Column(
                    children: [
                      ...List.generate(
                        data.length,
                        (index) {
                          return MaintenanceItemWidget(
                            model: data[index],
                            controller: controller,
                          );
                        },
                      )
                    ],
                  ),
                ),
              ],
            ),
          );
        },
        failureBuilder: (context, error, callback) {
          return const FailureItemWidget();
        },
        loadingBuilder: (context) {
          return const UnitLoadingListWidget();
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      floatingActionButton: FloatingActionButton(
        shape: const CircleBorder(),
        onPressed: () =>AutoRouter.of(context).push(const AddMaintenanceRoute()),
        child: Icon(
          Icons.add,
          color: context.colors.white,
          size: 40,
        ),
      ),
    );
  }
}
