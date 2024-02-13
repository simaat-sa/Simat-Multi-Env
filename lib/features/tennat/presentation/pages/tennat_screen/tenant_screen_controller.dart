part of 'tenant_screen_imports.dart';



class TenantScreenController {
  final ObsValue<ContractTypes> selectTypeObs = ObsValue<ContractTypes>.withInit(ContractTypes.non);
  final ObsValue<TenantVisibility> selectStatusObs = ObsValue<TenantVisibility>.withInit(TenantVisibility.non);

  final TenantRequester requester = TenantRequester();

  TenantScreenController() {
    requester.setLoadingState();
    requestData();
  }

  void filterSheet(BuildContext context) {
    AppBottomSheets.showScrollableBody(
      context: context,
      builder: (context) {
        return FilterTenant(controller: this);
      },
    );
  }

  late List<TenantModel> listTenant;

  Future<void> requestData() async {
    await requester.request();
    listTenant = requester.data ?? [];
  }

  void onSubmitFilter() {
    final list = listTenant.where((element) {
      return element.status == selectStatusObs.getValue() && element.type == selectTypeObs.getValue();
    }).toList();
    requester.successState(list ?? []);
  }
  void onChangeSearch(String value) {
    final list = listTenant.where((element) {
      return element.unitName.contains(value.trim()) || element.code.contains(value.trim());
    }).toList();
    requester.successState(list ?? []);
  }

  void onResetFilter() {
    selectStatusObs.setValue(TenantVisibility.non);
    selectTypeObs.setValue(ContractTypes.non);
    requester.successState(listTenant);
  }
}