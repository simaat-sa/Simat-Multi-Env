part of'add_maintenance_widgets_imports.dart';

class UnitFormOption extends StatelessWidget {
  final AddMaintenanceController controller;
  const UnitFormOption({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return BaseFormOption<PropModel>(
      hintText: Translate.s.real_estate_unit,
      bottomSheetTitle: Translate.s.real_estate_unit,
      showSearch: true,
      showDecoration: true,
      isMultiple: false,
      useFirstAsDefaultIfOneItem: true,
      suffixIconPath: Res.unitLogo,
      onClearPressed: () => controller.selectedPropUnits = [],
      onSaveValue: (values, iMultiple) => controller.selectedPropUnits = values ?? [],
      optionsRequester: BaseOptionsRequester<PropModel>(
        isRemotelySearch: false,
        immediatelyRequestOptions: true,
        valueMainTitleGetter: (value) => value?.unitFullName,
        fetcher: (c) => getIt<ContractRepository>().getPropsUnites(),
      ),
      selectedItems: controller.selectedPropUnits,
      valueIdGetter: (unit) => unit?.unitNo,
      valueMainTitleGetter: (unit) => unit?.unitFullName,
      selectedOptionBuilder: (list) {
        return BaseOptionsDisplayWidget<PropModel>(
          selectedOptions: list,
          titleGetter: (value) => value.unitFullName,
        );
      },
      optionItemBuilder: (item, isSelected) {
        return SelectableOptionItemWidget(
          isSelected: isSelected,
          optionItemWidget: OptionItemWidget(
            title: item.unitFullName,
          ),
        );
      },
    );
  }
}