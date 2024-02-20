part of 'maintenance_screen_imports.dart';



class MaintenanceController{
  ObsValue<ContractStatus> filterContractObs = ObsValue<ContractStatus>.withInit(ContractStatus.non);
  final MaintenanceRequester requester = MaintenanceRequester();

  String searchText = "";

  MaintenanceController() {
    requester.setLoadingState();
    requestData();
  }

  void filterSheet(BuildContext context) {
    AppBottomSheets.showScrollableBody(
      context: context,
      builder: (context) {
        return FilterMaintenance(controller: this);
      },
    );
  }

  void contractDialog(BuildContext context, MaintenanceModel model) {
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