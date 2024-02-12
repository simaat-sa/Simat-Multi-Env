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
      appBar: const TenantAppBar(),
      body: RequesterConsumer(
        requester: controller.requester,
        successBuilder: (context, data) {
          return RefreshIndicator(
            onRefresh: () => controller.requestData(),
            child: ListView(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              children: [
                HeaderTextWidget(listTenant: data,),
                Gaps.vGap10,
                ...List.generate(data.length, (index) {
                  return TenantItemWidget(model: data[index],);
                },)
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
