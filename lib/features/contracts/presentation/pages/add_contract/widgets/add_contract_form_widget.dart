part of 'add_contract_widgets_imports.dart';

class AddContractFormWidget extends StatelessWidget {
  final AddContractController controller;

  const AddContractFormWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BaseFormOption<TenantModel>(
          hintText: 'العقار الرئيسي',
          bottomSheetTitle: 'العقار الرئيسي',
          showSearch: true,
          showDecoration: true,
          isMultiple: false,
          onClearPressed: () {},
          onSaveValue: (values, iMultiple) {},
          optionsRequester: BaseOptionsRequester(
            isRemotelySearch: false,
            immediatelyRequestOptions: true,
            valueMainTitleGetter:(value) => value?.unitName,
            fetcher: (c) =>getIt<TenantRepository>().getProps(true),
          ),
          selectedItems: [],
          valueIdGetter: (p0) {},
          valueMainTitleGetter: (p0) {},
          selectedOptionBuilder: (list) {
            return BaseOptionsDisplayWidget<TenantModel>(selectedOptions: list, titleGetter: (value) => value.unitName);
          },
          optionItemBuilder: (item, isSelected) {
            return SelectableOptionItemWidget(
              isSelected: isSelected,
              optionItemWidget: OptionItemWidget(
                title: item.unitName,
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
