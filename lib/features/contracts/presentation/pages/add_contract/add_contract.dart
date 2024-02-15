part of'add_contract_imports.dart';

@RoutePage(name: 'AddContractRoute')
class AddContract extends StatefulWidget {
  const AddContract({super.key});

  @override
  State<AddContract> createState() => _AddContractState();
}

class _AddContractState extends State<AddContract> {
  final AddContractController controller =  AddContractController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.background,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 22),
        child: Column(
          children: [
            const AddContractAppBarWidget(),
            Gaps.vGap24,
            AddContractFormWidget(controller: controller),
            AddContractSwitchCoastWidget(controller: controller),
            Gaps.vGap12,
            const AddContractDescWidget(),
             AddContractButtonWidget(controller: controller),
          ],
        ),
      ),
    );
  }
}
