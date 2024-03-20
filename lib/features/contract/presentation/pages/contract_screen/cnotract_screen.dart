part of 'contract_screen_imports.dart';

class ContractScreen extends StatefulWidget {
  const ContractScreen({super.key});

  @override
  State<ContractScreen> createState() => _ContractScreenState();
}

class _ContractScreenState extends State<ContractScreen> {
  final ContractScreenController controller = ContractScreenController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.background,
      appBar: const CustomAppBar(),
      body: RefreshIndicator(
        onRefresh: () => controller.fetchContractData(1),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          child: Column(
            children: [
              FilterItemWidget(
                showFilterIcon: true,
                filterApply: controller.filterAppliedObs,
                onChange: (val) {
                  controller.searchText = val;
                  controller.onFilter();
                },
                onSubmit: (value) {
                  controller.searchText = value;
                  controller.onFilter();
                },
                onTap: () => AutoRouter.of(context).push(
                  FilterContractRoute(controller: controller),
                ),
              ),
              ObsValueConsumer(
                  observable: controller.contractsCount,
                  builder: (context, count) {
                    return PageHeaderTitleWidget(
                      title: Translate.of(context).contractsCount("$count"),
                    );
                  }),
              Gaps.vGap10,
              Flexible(
                child: PagedListView(
                  pagingController: controller.pagingController,
                  builderDelegate: PagedChildBuilderDelegate<ContractModel>(
                    itemBuilder: (context, item, index) {
                      return ContractItemWidget(model: item);
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
      ),
    );
  }
}
