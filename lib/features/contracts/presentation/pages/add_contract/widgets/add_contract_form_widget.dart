part of 'add_contract_widgets_imports.dart';

class AddContractFormWidget extends StatelessWidget {
  final AddContractController controller;

  const AddContractFormWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        PropertyFormOption(controller: controller),

        Gaps.vGap16,

        UnitFormOption(controller: controller),

        Gaps.vGap16,

        MaintenanceServiceFormOption(controller: controller),

        GenericTextField(
          fillColor: context.colors.white,
          hint: 'جوال العميل',
          contentPadding: const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
          fieldTypes: FieldTypes.normal,
          type: TextInputType.phone,
          action: TextInputAction.done,
          validate: (value) => value?.validatePhone(),
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
