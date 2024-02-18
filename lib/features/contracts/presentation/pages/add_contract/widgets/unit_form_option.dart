
import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/localization/translate.dart';
import 'package:flutter_tdd/core/widgets/base_form_option/base_form_option.dart';
import 'package:flutter_tdd/core/widgets/base_form_option/base_options_requester.dart';
import 'package:flutter_tdd/core/widgets/base_form_option/widgets/base_options_display_widget.dart';
import 'package:flutter_tdd/core/widgets/base_form_option/widgets/option_item_widget.dart';
import 'package:flutter_tdd/core/widgets/base_form_option/widgets/selectable_option_item_widget.dart';
import 'package:flutter_tdd/features/contracts/presentation/pages/add_contract/add_contract_imports.dart';
import 'package:flutter_tdd/features/tennat/data/models/props_model/prop_model.dart';
import 'package:flutter_tdd/features/tennat/domain/repositories/tennat_repository.dart';
import 'package:flutter_tdd/res.dart';

class UnitFormOption extends StatelessWidget {
  final AddContractController controller;
  const UnitFormOption({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return BaseFormOption<PropModel>(
      hintText: Translate.s.real_estate_unit,
      bottomSheetTitle: Translate.s.real_estate_unit,
      showSearch: true,
      showDecoration: true,
      isMultiple: false,
      suffixIconPath: Res.unitLogo,
      onClearPressed: () => controller.selectedPropUnits = [],
      onSaveValue: (values, iMultiple) => controller.selectedPropUnits = values ?? [],
      optionsRequester: controller.unitRequester,
      selectedItems: controller.selectedPropUnits,
      valueIdGetter: (unit) => unit?.unitNo,
      valueMainTitleGetter: (unit) => unit?.unitName,
      selectedOptionBuilder: (list) {
        return BaseOptionsDisplayWidget<PropModel>(
          selectedOptions: list,
          titleGetter: (value) => value.unitName,
        );
      },
      optionItemBuilder: (item, isSelected) {
        return SelectableOptionItemWidget(
          isSelected: isSelected,
          optionItemWidget: OptionItemWidget(
            title: item.unitName,
          ),
        );
      },
    );
  }
}
