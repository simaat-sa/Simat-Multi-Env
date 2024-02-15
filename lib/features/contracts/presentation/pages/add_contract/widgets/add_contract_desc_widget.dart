part of 'add_contract_widgets_imports.dart';

class AddContractDescWidget extends StatelessWidget {
  final AddContractController controller;

  const AddContractDescWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return GenericTextField(
      controller: controller.desc,
      fieldTypes: FieldTypes.rich,
      type: TextInputType.multiline,
      action: TextInputAction.newline,
      hint: 'وصف الصيانة',
      max: 6,
      validate: (value) => value?.validateEmpty(),
      fillColor: context.colors.white,
      prefixIcon: Container(
        height: 120,
        width: 30,
        padding: const EdgeInsets.only(top: 10),
        alignment: Alignment.topCenter,
        child: SvgPicture.asset(
          Res.detailsLogo,
          color: context.colors.primaryText,
          height: 30,
          width: 30,
        ),
      ),
    );
  }
}
