
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

class PropertyFormOption extends StatelessWidget {
  final AddContractController controller;
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
        controller.unitRequester.request();

      },
      optionsRequester: BaseOptionsRequester(
        isRemotelySearch: false,
        immediatelyRequestOptions: true,
        valueMainTitleGetter: (value) => value?.propName,
        fetcher: (c) => getIt<TenantRepository>().getProps(true),
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
