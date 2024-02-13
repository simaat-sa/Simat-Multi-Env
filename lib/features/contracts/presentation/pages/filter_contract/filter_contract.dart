part of 'filter_contract_imports.dart';

@RoutePage(name: "FilterContractRoute")
class FilterContract extends StatefulWidget {
  const FilterContract({super.key});

  @override
  State<FilterContract> createState() => _FilterContractState();
}

class _FilterContractState extends State<FilterContract> {
  final FilterContractController controller = FilterContractController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.background,
      appBar: DefaultAppBar(
        title: 'تصفية',
        showBack: false,
        actions: [
          IconButton(
            icon: const Icon(Icons.close),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 22),
        child: Column(
          children: [
            const FilterContractTitleHeaderWidget(),
            Gaps.vGap10,
            FilterSelectContractWidget(controller: controller,),
            const Spacer(),
            const FilterContractButtons()
          ],
        ),
      ),
    );
  }
}
