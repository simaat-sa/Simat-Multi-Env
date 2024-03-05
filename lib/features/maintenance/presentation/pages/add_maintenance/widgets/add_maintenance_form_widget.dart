part of 'add_maintenance_widgets_imports.dart';

class AddMaintenanceFormWidget extends StatelessWidget {
  final AddMaintenanceController controller;

  const AddMaintenanceFormWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        UnitFormOption(controller: controller),
        Gaps.vGap16,
        MaintenanceServiceFormOption(controller: controller),
        GenericTextField(
          controller: controller.phone,
          fillColor: context.colors.white,
          hint: Translate.of(context).customer_mobile,
          contentPadding: const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
          fieldTypes: FieldTypes.normal,
          type: TextInputType.phone,
          action: TextInputAction.done,
          validate: (value) => value?.validateEmpty(),
          margin: const EdgeInsets.symmetric(vertical: 16),
          radius: BorderRadius.circular(5),
          prefixIcon: Icon(
            Icons.phone_android_outlined,
            color: context.colors.primaryText,
          ),
        ),
      ],
    );
  }
}
