part of 'units_widgets_imports.dart';

class UnitFilterHeaderWidget extends StatelessWidget {
  final List<ContractModel> listModel;
  final PropModel model;
  final UnitController controller;

  const UnitFilterHeaderWidget({
    super.key,
    required this.listModel,
    required this.controller,
    required this.model,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              Translate.s.unit_number(_unitsCount()),
              style: AppTextStyle.s16_w400(color: context.colors.blackOpacity),
            ),
          ],
        ),
        Row(
          children: [
            ObsValueConsumer<bool>(
                observable: controller.applyFilterObs,
                builder: (context, val) {
                  return Visibility(
                    visible: val,
                    child: GestureDetector(
                      onTap: () => controller.onResetFilter(),
                      child: Text(
                        Translate.s.cancel_filter,
                        style: AppTextStyle.s14_w400(color: context.colors.secondary),
                      ),
                    ),
                  );
                }),
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

  Object _unitsCount() =>
      controller.applyFilterObs.getValue() == true ? "${model.propChildTot}/${listModel.length}" : listModel.length;
}
