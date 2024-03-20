part of 'maintenance_tab_widgets_imports.dart';

class MaintenanceTabHeaderWidget extends StatelessWidget {
  final MaintenanceTabController controller;
  final String maintCount;

  const MaintenanceTabHeaderWidget({
    super.key,
    required this.controller,
    required this.maintCount,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ObsValueConsumer(
                observable: controller.maintenanceCount,
                builder: (context, val) {
                  return Text(
                    Translate.s.main_number(_maintenanceCount(val)),
                    style: AppTextStyle.s16_w400(color: context.colors.blackOpacity),
                  );
                }),
          ],
        ),
        Row(
          children: [
            ObsValueConsumer(
              observable: controller.applyFilterObs,
              builder: (context,value) {
                return Visibility(
                  visible: value,
                  child: GestureDetector(
                    onTap: () => controller.onResetFilter(context),
                    child: Text(
                      'الغاء التصفية',
                      style: AppTextStyle.s14_w400(color: context.colors.secondary),
                    ),
                  ),
                );
              }
            ),
            Gaps.hGap10,
            FilterIconWidget(
              filterApply: controller.applyFilterObs,
              onTap: () => controller.filterSheet(context),
            ),
          ],
        ),
      ],
    );
  }

  Object _maintenanceCount(int val) => controller.applyFilterObs.getValue()==true?"$val/$maintCount":val;
}
