part of 'add_contract_imports.dart';

@RoutePage(name: 'AddContractRoute')
class AddContract extends StatefulWidget {
  const AddContract({super.key});

  @override
  State<AddContract> createState() => _AddContractState();
}

class _AddContractState extends State<AddContract> {
  final AddContractController controller = AddContractController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.background,
      appBar: const SheetAppBar(title: 'طلب صيانة جديد'),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Form(
          key: controller.formKey,
          child: ListView(
            padding: const EdgeInsets.symmetric(horizontal: 22),
            children: [
              Gaps.vGap24,
              AddContractFormWidget(controller: controller),
              AddContractSwitchCoastWidget(controller: controller),
              Gaps.vGap12,
              AddContractDescWidget(controller: controller),
              AddContractButtonWidget(controller: controller),
            ],
          ),
        ),
      ),
    );
  }
}
