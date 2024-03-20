part of 'units_widgets_imports.dart';

class UnitFilterHeaderWidget extends StatelessWidget {
  final List<ContractModel> listModel;
  final UnitController controller;

  const UnitFilterHeaderWidget({super.key, required this.listModel, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'الوحدات[${listModel.length}]',
          style: AppTextStyle.s16_w400(color: context.colors.blackOpacity),
        ),
        FilterIconWidget(
          filterApply: controller.applyFilterObs,
          onTap: ()=>controller.filterSheet(context),
        ),
      ],
    );
  }
}
