import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/widgets/base_form_option/base_form_option.dart';
import 'package:flutter_tdd/core/widgets/base_form_option/base_options_requester.dart';
import 'package:flutter_tdd/core/widgets/base_form_option/widgets/base_options_display_widget.dart';
import 'package:flutter_tdd/core/widgets/base_form_option/widgets/option_item_widget.dart';
import 'package:flutter_tdd/core/widgets/base_form_option/widgets/selectable_option_item_widget.dart';
import 'package:flutter_tdd/features/contracts/data/models/maintenance_services_model/maintenance_services_model.dart';
import 'package:flutter_tdd/features/contracts/domain/repositories/contract_repository.dart';
import 'package:flutter_tdd/features/contracts/presentation/pages/add_contract/add_contract_imports.dart';
import 'package:flutter_tdd/res.dart';

class MaintenanceServiceFormOption extends StatelessWidget {
  final AddContractController controller;
  const MaintenanceServiceFormOption({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return BaseFormOption<MaintenanceServicesModel>(
      hintText: 'الوحدة العقارية',
      bottomSheetTitle: 'الوحدة العقارية',
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
        valueMainTitleGetter: (value) => value?.name,
        fetcher: (c) => getIt<ContractRepository>().getMaintenanceServices(true),
      ),
      selectedItems: controller.selectedServices,
      valueIdGetter: (service) => service?.id,
      valueMainTitleGetter: (service) => service?.name,
      selectedOptionBuilder: (list) {
        return BaseOptionsDisplayWidget<MaintenanceServicesModel>(
          selectedOptions: list,
          titleGetter: (value) => value.name,
        );
      },
      optionItemBuilder: (item, isSelected) {
        return SelectableOptionItemWidget(
          isSelected: isSelected,
          optionItemWidget: OptionItemWidget(
            title: item.name,
          ),
        );
      },
    );
  }
}
