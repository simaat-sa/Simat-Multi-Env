part of 'tenant_screen_imports.dart';

class TenantScreen extends StatefulWidget {
  const TenantScreen({super.key});

  @override
  State<TenantScreen> createState() => _TenantScreenState();
}

class _TenantScreenState extends State<TenantScreen> {
  final TenantScreenController controller = TenantScreenController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.background,
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
                  onChange: (val) {
                    controller.searchText = val;
                    controller.onFilter();
                  },
                  onSubmit: (value) {
                    controller.searchText = value;
                    controller.onFilter();
                  },
                  onTap: () => AutoRouter.of(context).push(FilterTenantRoute(controller: controller)),
                ),
                PageHeaderTitleWidget(
                  title: Translate.of(context).contractsCount([data.length]),
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
                          return TenantItemWidget(
                            model: data[index],
                          );
                        },
                      ),
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
    );
  }
}
