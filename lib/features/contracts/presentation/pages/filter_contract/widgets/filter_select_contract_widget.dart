part of'filter_contract_widgets_imports.dart';


class FilterSelectContractWidget extends StatelessWidget {
  final ContractController controller;
  const FilterSelectContractWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return ObsValueConsumer<ContractStatus>(
      observable: controller.filterContractObs,
      builder: (context,value) {
        return Column(
          children: ContractStatus.values.map((e) {
            return Visibility(
              visible:  e != ContractStatus.non,
              child: FilterContractSelectItemWidget(
                onTap: () =>controller.filterContractObs.setValue(e),
                changeValue: value.index,
                title: title(e),
                value: e.index,
              ),
            );
          }).toList(),
        );
      }
    );
  }
  String title(ContractStatus contractTypes) {
    switch (contractTypes) {
      case ContractStatus.posted:
        return Translate.s.posted;
      case ContractStatus.paused:
        return Translate.s.paused;
      case ContractStatus.owner:
        return Translate.s.owner;
      case ContractStatus.implemented:
        return Translate.s.implemented;
      case ContractStatus.completed:
        return Translate.s.completed;
      case ContractStatus.canceled:
        return Translate.s.canceled;
      case ContractStatus.attribution:
        return Translate.s.attribution;
      case ContractStatus.supervisorIdentifications:
        return Translate.s.supervisor_identifications;
      case ContractStatus.supervisorApproved:
        return Translate.s.supervisor_approved;
      case ContractStatus.rejectedByTheSupervisor:
        return Translate.s.rejected_by_the_supervisor;
      case ContractStatus.rejectedByTheOwner:
        return Translate.s.rejected_by_the_owner;
      case ContractStatus.applicationApproval:
        return Translate.s.application_approval;
      default:
        return "";
    }
  }
}
