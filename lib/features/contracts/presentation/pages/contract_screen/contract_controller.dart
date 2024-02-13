part of 'contract_screen_imports.dart';



class ContractController{
  ObsValue<ContractStatus> filterContractObs = ObsValue<ContractStatus>.withInit(ContractStatus.non);
  final ContractRequester requester = ContractRequester();
  late List<ContractModel> listContract;

  ContractController() {
    requester.setLoadingState();
    requestData();
  }

  void filterSheet(BuildContext context) {
    AppBottomSheets.showScrollableBody(
      context: context,
      builder: (context) {
        return FilterContract(controller: this);
      },
    );
  }

  void contractDialog(BuildContext context, ContractModel model) {
    showDialog(
      context: context,
      builder: (context) {
        return ContractDialog(
          model: model,
        );
      },
    );
  }

  Future<void> requestData() async {
    await requester.request();
    listContract = requester.data ?? [];
  }

  void onSubmitFilter() {
    final list = listContract.where((element) {
      return element.status == filterContractObs.getValue();
    }).toList();
    requester.successState(list ?? []);
  }

  void onSearch(String value) {
    final list = listContract.where((element) {
      return element.code.contains(value.trim())||element.unitName.contains(value.trim());
    }).toList();
    requester.successState(list ?? []);
  }
  void onResetFilter() {
    filterContractObs.setValue(ContractStatus.non);
    requester.successState(listContract);
  }
}