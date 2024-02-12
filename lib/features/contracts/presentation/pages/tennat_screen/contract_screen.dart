part of 'contract_screen_imports.dart';

class ContractScreen extends StatefulWidget {
  const ContractScreen({super.key});

  @override
  State<ContractScreen> createState() => _ContractScreenState();
}

class _ContractScreenState extends State<ContractScreen> {
  final ContractController controller = ContractController();

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
                PageHeaderTitleWidget(
                  title: Translate.of(context).maintenanceCount([data.length]),
                ),                Gaps.vGap10,
                ...List.generate(data.length, (index) {
                  return ContractItemWidget(model: data[index],);
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
