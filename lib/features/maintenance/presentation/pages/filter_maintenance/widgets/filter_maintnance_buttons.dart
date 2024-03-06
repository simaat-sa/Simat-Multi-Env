part of 'filter_maintenance_widgets_imports.dart';

class FilterMaintenanceButtons extends StatelessWidget {
  final MaintenanceController controller;

  const FilterMaintenanceButtons({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30),
      child: Row(
        children: [
          Expanded(
            child: InkWell(
              onTap: () {
                controller.onFilter(context);
                AutoRouter.of(context).pop();
              },
              child: Container(
                alignment: Alignment.center,
                height: 40,
                decoration: BoxDecoration(
                  color: context.colors.primary,
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Text(
                  Translate.of(context).apply,
                  style: AppTextStyle.s16_w400(color: context.colors.white),
                ),
              ),
            ),
          ),
          Gaps.hGap10,
          Expanded(
            child: InkWell(
              onTap: () {
                controller.onResetFilter();
                AutoRouter.of(context).pop();
              },
              child: Container(
                alignment: Alignment.center,
                height: 40,
                decoration: BoxDecoration(
                  color: context.colors.white,
                  border: Border.all(color: context.colors.primary),
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Text(
                  Translate.of(context).reset,
                  style: AppTextStyle.s16_w400(color: context.colors.primary),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
