part of 'add_contract_widgets_imports.dart';

class AddContractFormWidget extends StatelessWidget {
  const AddContractFormWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // BaseFormOption(
        //   hintText: 'العقار الرئيسي',
        //   bottomSheetTitle: 'العقار الرئيسي',
        //   showSearch: true,
        //   showDecoration: false,
        //   isMultiple: true,
        //   onClearPressed: () {},
        //   onSaveValue: (values, iMultiple) {},
        //   optionsRequester: BaseOptionsRequester(
        //     isRemotelySearch: true,
        //     immediatelyRequestOptions: true,
        //     valueMainTitleGetter: (p0) {},
        //     fetcher: fetcher,
        //   ),
        //   selectedItems: [],
        //   selectedOptionBuilder: (p0) {},
        //   optionItemBuilder: (p0, p1) {},
        //   valueIdGetter: (p0) {},
        //   valueMainTitleGetter: (p0) {},
        // ),
        GenericTextField(
          fillColor: context.colors.white,
          hint: 'جوال العميل',
          contentPadding: const EdgeInsets.symmetric(vertical: 0,horizontal: 10),
          fieldTypes: FieldTypes.normal,
          type: TextInputType.phone,
          action: TextInputAction.done,
          validate: (value) => value?.validatePhone(),
          margin: const EdgeInsets.symmetric(vertical: 16),
          radius: BorderRadius.circular(5),
          prefixIcon: Icon(Icons.phone_android_outlined,color: context.colors.primaryText,),
        ),
      ],
    );
  }
}
