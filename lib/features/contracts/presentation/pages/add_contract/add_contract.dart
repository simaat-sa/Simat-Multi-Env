part of 'add_contract_imports.dart';

@RoutePage(name: 'AddContractRoute')
class AddContract extends StatefulWidget {
  const AddContract({super.key});

  @override
  State<AddContract> createState() => _AddContractState();
}

class _AddContractState extends State<AddContract> {
  late AddContractController controller;

  @override
  void initState() {
    controller = AddContractController(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.background,
      appBar: SheetAppBar(title: Translate.s.add_new_contact),
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
