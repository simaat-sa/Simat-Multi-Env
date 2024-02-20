part of 'add_maintenance_widgets_imports.dart';

class AddMaintenanceButtonWidget extends StatelessWidget {
  final AddMaintenanceController controller;
  const AddMaintenanceButtonWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: AppTextButton.maxCustom(
        onPressed: () => controller.addContract(context),
        bgColor: context.colors.primary,
        txtColor: context.colors.white,
        textSize: 14,
        maxHeight: 45,
        text: Translate.s.maintenance_request,
      ),
    );
  }
}
