part of 'filter_widgets_imports.dart';

class FilterSelectTypeWidget extends StatelessWidget {
  final FilterTenantController controller;

  const FilterSelectTypeWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return ObsValueConsumer<ContractTypes>(
      observable:controller.selectTypeObs,
      builder: (context, value) {
        return Column(
          children: ContractTypes.values.map((e) {
            return Visibility(
              visible: e != ContractTypes.non,
              child: FilterSelectItemWidget(
                controller: controller,
                onTap: () =>
                    controller.selectTypeObs.setValue(e),
                title: title(e),
                value: e.index,
                changeValue: value.index,
              ),
            );
          }).toList(),
        );
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
