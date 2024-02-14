part of 'tenant_screen_imports.dart';



class TenantScreenController {
  final ObsValue<ContractTypes> selectTypeObs = ObsValue<ContractTypes>.withInit(ContractTypes.non);
  final ObsValue<TenantVisibility> selectStatusObs = ObsValue<TenantVisibility>.withInit(TenantVisibility.non);

  final TenantRequester requester = TenantRequester();
   String searchText ='';

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


  Future<void> requestData() async {
    await requester.request();
  }

  void onFilter(){
    requester.applyTenantFilter(selectStatusObs.getValue(), selectTypeObs.getValue(), searchText);
  }


  void onResetFilter() {
    selectStatusObs.setValue(TenantVisibility.non);
    selectTypeObs.setValue(ContractTypes.non);
    requester.resetFilter();
  }
}