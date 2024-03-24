part of 'add_maintenance_widgets_imports.dart';

class MaintenanceServiceFormOption extends StatelessWidget {
  final AddMaintenanceController controller;
  const MaintenanceServiceFormOption({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return BaseFormOption<MaintenanceServicesModel>(
      hintText: Translate.of(context).maintenance_type,
      bottomSheetTitle: Translate.of(context).maintenance_type,
      showSearch: true,
      showDecoration: true,
      isMultiple: true,
      suffixIconPath: Res.maintenanceIcon,
      onClearPressed: () => controller.selectedServices = [],
      onSaveValue: (values, iMultiple) {
        controller.selectedServices = values ?? [];
      },
      optionsRequester: BaseOptionsRequester(
        isRemotelySearch: false,
        immediatelyRequestOptions: true,
        valueMainTitleGetter: (value) => value?.getLocalizedName(),
        fetcher: (c) => getIt<MaintenanceRepository>().getMaintenanceServices(true),
      ),
      selectedItems: controller.selectedServices,
      valueIdGetter: (service) => service?.id,
      valueMainTitleGetter: (service) => service?.getLocalizedName(),
      selectedOptionBuilder: (list) {
        return BaseOptionsDisplayWidget<MaintenanceServicesModel>(
          selectedOptions: list,
          titleGetter: (value) => value.getLocalizedName(),
        );
      },
      optionItemBuilder: (item, isSelected) {
        return SelectableOptionItemWidget(
          isSelected: isSelected,
          optionItemWidget: OptionItemWidget(
            title: item.getLocalizedName(),
          ),
        );
      },
    );
  }
}
