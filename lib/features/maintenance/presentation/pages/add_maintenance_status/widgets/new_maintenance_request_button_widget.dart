part of 'add_maintenance_status_widgets_imports.dart';

class NewMaintenanceRequestButtonWidget extends StatelessWidget {
  const NewMaintenanceRequestButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AppTextButton.maxCustom(
      onPressed: () => AutoRouter.of(context).popAndPush( AddMaintenanceRoute()),
      bgColor: context.colors.primary,
      txtColor: context.colors.white,
      textSize: 14,
      maxHeight: 45,
      text: Translate.s.new_maintenance_request,
    );
  }
}
