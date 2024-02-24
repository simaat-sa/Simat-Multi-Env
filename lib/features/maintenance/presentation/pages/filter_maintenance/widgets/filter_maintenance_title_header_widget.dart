part of 'filter_maintenance_widgets_imports.dart';

class FilterMaintenanceTitleHeaderWidget extends StatelessWidget {
  const FilterMaintenanceTitleHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          Translate.s.maintenance_request_status,
          style: AppTextStyle.s18_w500(color: context.colors.darkTextColor),
        ),
      ],
    );
  }
}
