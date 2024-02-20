part of 'contract_screen_imports.dart';

class ContractScreen extends StatefulWidget {
  const ContractScreen({super.key});

  @override
  State<ContractScreen> createState() => _ContractScreenState();
}

class _ContractScreenState extends State<ContractScreen> {
  final ContractScreenController controller = ContractScreenController();

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
                  onTap: () => AutoRouter.of(context).push(FilterContractRoute(controller: controller)),
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
                          return ContractItemWidget(
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
