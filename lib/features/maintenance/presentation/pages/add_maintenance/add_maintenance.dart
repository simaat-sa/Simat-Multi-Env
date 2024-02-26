part of 'add_maintenance_imports.dart';

@RoutePage(name: 'AddMaintenanceRoute')
class AddMaintenance extends StatefulWidget {
  const AddMaintenance({super.key});

  @override
  State<AddMaintenance> createState() => _AddMaintenanceState();
}

class _AddMaintenanceState extends State<AddMaintenance> {
  late AddMaintenanceController controller;

  @override
  void initState() {
    controller = AddMaintenanceController(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.background,
      appBar: SheetAppBar(title: Translate.of(context).add_new_contact),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Form(
          key: controller.formKey,
          child: ListView(
            padding: const EdgeInsets.symmetric(horizontal: 22),
            children: [
              Gaps.vGap24,
              AddMaintenanceFormWidget(controller: controller),
              AddMaintenanceSwitchCoastWidget(controller: controller),
              Gaps.vGap12,
              AddMaintenanceDescWidget(controller: controller),
              AddMaintenanceButtonWidget(controller: controller),
            ],
          ),
        ),
      ),
    );
  }
}
