part of 'add_maintenance_widgets_imports.dart';

class PropertyFormOption extends StatelessWidget {
  final AddMaintenanceController controller;
  const PropertyFormOption({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return BaseFormOption<PropModel>(
      hintText: Translate.s.main_property,
      bottomSheetTitle: Translate.s.main_property,
      showSearch: true,
      showDecoration: true,
      isMultiple: false,
      suffixIconPath: Res.propIcon,
      onClearPressed: () => controller.selectedProps = [],
      onSaveValue: (values, iMultiple) {
        controller.selectedProps = values ?? [];
      },
      optionsRequester: BaseOptionsRequester(
        isRemotelySearch: false,
        immediatelyRequestOptions: true,
        valueMainTitleGetter: (value) => value?.propName,
        fetcher: (c) => getIt<ContractRepository>().getProps(true),
      ),
      selectedItems: controller.selectedProps,
      valueIdGetter: (p0) => p0?.propId,
      valueMainTitleGetter: (p0) => p0?.areCode,
      selectedOptionBuilder: (list) {
        return BaseOptionsDisplayWidget<PropModel>(
          selectedOptions: list,
          titleGetter: (value) => value.propName,
        );
      },
      optionItemBuilder: (item, isSelected) {
        return SelectableOptionItemWidget(
          isSelected: isSelected,
          optionItemWidget: OptionItemWidget(
            title: item.propName,
          ),
        );
      },
    );
  }
}
