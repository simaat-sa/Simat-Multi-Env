part of 'contract_screen_imports.dart';



class ContractController{
  ObsValue<ContractStatus> filterContractObs = ObsValue<ContractStatus>.withInit(ContractStatus.non);
  final ContractRequester requester = ContractRequester();

  String searchText = "";

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
  }

  void onFilter() {
    requester.applyContractFilter(filterContractObs.getValue(), searchText);
  }

  void onResetFilter() {
    filterContractObs.setValue(ContractStatus.non);
    requester.resetFilter();
  }
}