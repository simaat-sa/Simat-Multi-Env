part of 'maintenance_tab_widgets_imports.dart';

class MaintenanceTabHeaderWidget extends StatelessWidget {
  final MaintenanceTabController controller;

  const MaintenanceTabHeaderWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ObsValueConsumer(
            observable: controller.maintenanceCount,
            builder: (context, val) {
              return Text(
                Translate.s.maintenance(val),
                style: AppTextStyle.s16_w400(color: context.colors.blackOpacity),
              );
            }),
        FilterIconWidget(
          filterApply: controller.applyFilterObs,
          onTap: () => controller.filterSheet(context),
        ),
      ],
    );
  }
}
