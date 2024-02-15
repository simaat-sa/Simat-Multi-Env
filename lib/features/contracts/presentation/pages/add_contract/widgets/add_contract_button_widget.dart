part of 'add_contract_widgets_imports.dart';

class AddContractButtonWidget extends StatelessWidget {
  const AddContractButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: AppTextButton.maxCustom(
        onPressed: () {},
        bgColor: context.colors.primary,
        txtColor: context.colors.white,
        textSize: 14,
        maxHeight: 45,
        text: 'طلب الصيانة',
      ),
    );
  }
}
