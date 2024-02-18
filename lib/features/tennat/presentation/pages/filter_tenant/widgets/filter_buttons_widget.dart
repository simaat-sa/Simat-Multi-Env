part of 'filter_widgets_imports.dart';

class FilterButtonsWidget extends StatelessWidget {
  final TenantScreenController controller;

  const FilterButtonsWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30),
      child: Row(
        children: [
          Expanded(
            child: InkWell(
              onTap: () {
                controller.onFilter();
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
                  'تطبيق',
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
                  Translate.s.reset,
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
