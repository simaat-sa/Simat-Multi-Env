part of 'add_contract_widgets_imports.dart';

class AddContractFormWidget extends StatelessWidget {
  final AddContractController controller;

  const AddContractFormWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BaseFormOption<PropsModel>(
          hintText: 'العقار الرئيسي',
          bottomSheetTitle: 'العقار الرئيسي',
          showSearch: true,
          showDecoration: true,
          isMultiple: false,
          onClearPressed: () => controller.selectedProps = [],
          onSaveValue: (values, iMultiple) => controller.selectedProps = values ?? [],
          optionsRequester: BaseOptionsRequester(
            isRemotelySearch: false,
            immediatelyRequestOptions: true,
            valueMainTitleGetter: (value) => value?.areCode,
            fetcher: (c) => getIt<TenantRepository>().getProps(true),
          ),
          selectedItems: controller.selectedProps,
          valueIdGetter: (p0) => p0?.propId,
          valueMainTitleGetter: (p0) => p0?.areCode,
          selectedOptionBuilder: (list) {
            return BaseOptionsDisplayWidget<PropsModel>(
              selectedOptions: list,
              titleGetter: (value) => value.areCode,
            );
          },
          optionItemBuilder: (item, isSelected) {
            return SelectableOptionItemWidget(
              isSelected: isSelected,
              optionItemWidget: OptionItemWidget(
                title: item.areCode,
              ),
            );
          },
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: BaseFormOption<PropsModel>(
            hintText: 'الوحدة العقارية',
            bottomSheetTitle: 'الوحدة العقارية',
            showSearch: true,
            showDecoration: true,
            isMultiple: false,
            onClearPressed: () => controller.selectedPropUnits = [],
            onSaveValue: (values, iMultiple) => controller.selectedPropUnits = values ?? [],
            optionsRequester: BaseOptionsRequester(
              isRemotelySearch: false,
              immediatelyRequestOptions: true,
              valueMainTitleGetter: (value) => value?.areDescFo,
              fetcher: (c) => getIt<TenantRepository>().getPropsUnites(controller.selectedProps.first.areId),
            ),
            selectedItems: controller.selectedPropUnits,
            valueIdGetter: (p0) => p0?.propId,
            valueMainTitleGetter: (p0) => p0?.areDescFo,
            selectedOptionBuilder: (list) {
              return BaseOptionsDisplayWidget<PropsModel>(
                selectedOptions: list,
                titleGetter: (value) => value.areDescFo,
              );
            },
            optionItemBuilder: (item, isSelected) {
              return SelectableOptionItemWidget(
                isSelected: isSelected,
                optionItemWidget: OptionItemWidget(
                  title: item.areDescFo,
                ),
              );
            },
          ),
        ),
        BaseFormOption<MaintenanceServicesModel>(
          hintText: 'الوحدة العقارية',
          bottomSheetTitle: 'الوحدة العقارية',
          showSearch: true,
          showDecoration: true,
          isMultiple: true,
          onClearPressed: () => controller.selectedServices = [],
          onSaveValue: (values, iMultiple) => controller.selectedServices = values ?? [],
          optionsRequester: BaseOptionsRequester(
            isRemotelySearch: false,
            immediatelyRequestOptions: true,
            valueMainTitleGetter: (value) => value?.ar,
            fetcher: (c) => getIt<ContractRepository>().getMaintenanceServices(true),
          ),
          selectedItems: controller.selectedServices,
          valueIdGetter: (p0) => p0?.id,
          valueMainTitleGetter: (p0) => p0?.ar,
          selectedOptionBuilder: (list) {
            return BaseOptionsDisplayWidget<MaintenanceServicesModel>(
              selectedOptions: list,
              titleGetter: (value) => value.ar,
            );
          },
          optionItemBuilder: (item, isSelected) {
            return SelectableOptionItemWidget(
              isSelected: isSelected,
              optionItemWidget: OptionItemWidget(
                title: item.ar,
              ),
            );
          },
        ),
        GenericTextField(
          fillColor: context.colors.white,
          hint: 'جوال العميل',
          contentPadding: const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
          fieldTypes: FieldTypes.normal,
          type: TextInputType.phone,
          action: TextInputAction.done,
          validate: (value) => value?.validatePhone(),
          margin: const EdgeInsets.symmetric(vertical: 16),
          radius: BorderRadius.circular(5),
          prefixIcon: Icon(
            Icons.phone_android_outlined,
            color: context.colors.primaryText,
          ),
        ),
      ],
    );
  }
}
