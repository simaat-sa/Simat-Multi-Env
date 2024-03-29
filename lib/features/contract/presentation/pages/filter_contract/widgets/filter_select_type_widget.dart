part of 'filter_widgets_imports.dart';

class FilterSelectTypeWidget extends StatelessWidget {
  final ContractScreenController controller;

  const FilterSelectTypeWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return ObsValueConsumer<ContractTypes>(
      observable: controller.selectTypeObs,
      builder: (context, value) {
        return Column(children: [
          FilterHeaderTitle(title: Translate.s.contract_type),
          Gaps.vGap10,
          ...ContractTypes.values.map((e) {
            return Visibility(
              visible: e != ContractTypes.non,
              child: FilterSelectItemWidget(
                onTap: () => controller.selectTypeObs.setValue(e),
                title: title(e),
                value: e.index,
                changeValue: value.index,
              ),
            );
          }),
        ]);
      },
    );
  }

  String title(ContractTypes contractTypes) {
    switch (contractTypes) {
      case ContractTypes.commercial:
        return Translate.s.commercial;
      case ContractTypes.residential:
        return Translate.s.residential;
      default:
        return "";
    }
  }
}
