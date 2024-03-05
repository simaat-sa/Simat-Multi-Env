part of 'add_maintenance_widgets_imports.dart';

class PropertyFormOption extends StatelessWidget {
  final AddMaintenanceController controller;
  const PropertyFormOption({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return BaseFormOption<PropModel>(
      hintText: Translate.of(context).main_property,
      bottomSheetTitle: Translate.of(context).main_property,
      showSearch: true,
      showDecoration: true,
      isMultiple: false,
      suffixIconPath: Res.propIcon,
      onClearPressed: () => [],
      onSaveValue: (values, iMultiple) {
        // controller.selectedProps = values ?? [];
      },
      optionsRequester: BaseOptionsRequester(
        isRemotelySearch: false,
        immediatelyRequestOptions: true,
        valueMainTitleGetter: (value) => value?.propTitle,
        fetcher: (c) => getIt<ContractRepository>().getProps(true),
      ),
      selectedItems: [],
      valueIdGetter: (p0) => p0?.propId,
      valueMainTitleGetter: (p0) => p0?.areCode,
      selectedOptionBuilder: (list) {
        return BaseOptionsDisplayWidget<PropModel>(
          selectedOptions: list,
          titleGetter: (value) => value.propTitle,
        );
      },
      optionItemBuilder: (item, isSelected) {
        return SelectableOptionItemWidget(
          isSelected: isSelected,
          optionItemWidget: OptionItemWidget(
            title: item.propTitle,
          ),
        );
      },
    );
  }
}
