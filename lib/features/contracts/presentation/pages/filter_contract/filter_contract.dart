part of 'filter_contract_imports.dart';

@RoutePage(name: "FilterContractRoute")
class FilterContract extends StatelessWidget {
  final ContractController controller;

  const FilterContract({super.key, required this.controller});

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
                const FilterContractTitleHeaderWidget(),
                Gaps.vGap10,
                FilterSelectContractWidget(controller: controller),
              ]),
            ),
            FilterContractButtons(controller: controller),
          ],
        ),
      ),
    );
  }
}
