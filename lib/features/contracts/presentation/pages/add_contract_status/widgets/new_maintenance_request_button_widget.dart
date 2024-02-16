part of 'add_contract_status_widgets_imports.dart';

class NewMaintenanceRequestButtonWidget extends StatelessWidget {
  const NewMaintenanceRequestButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AppTextButton.maxCustom(
      onPressed: () => AutoRouter.of(context).popAndPush(const AddContractRoute()),
      bgColor: context.colors.primary,
      txtColor: context.colors.white,
      textSize: 14,
      maxHeight: 45,
      text: ' طلب صيانة جديد ',
    );
  }
}
