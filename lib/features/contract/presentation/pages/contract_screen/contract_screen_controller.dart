part of 'contract_screen_imports.dart';

class ContractScreenController {
  final ObsValue<ContractTypes> selectTypeObs = ObsValue<ContractTypes>.withInit(ContractTypes.non);
  ObsValue<bool> filterAppliedObs = ObsValue<bool>.withInit(false);
  final ObsValue<TenantVisibility> selectStatusObs = ObsValue<TenantVisibility>.withInit(TenantVisibility.non);
  final ObsValue<int> contractsCount = ObsValue<int>.withInit(0);

  final PagingController<int, ContractModel> pagingController = PagingController(firstPageKey: 1);

  String searchText = '';

  ContractScreenController() {
    initPaginationController();
  }

  void initPaginationController() {
    pagingController.addPageRequestListener((pageKey) {
      fetchContractData(pageKey);
    });
  }

  void filterSheet(BuildContext context) {
    AppBottomSheets.showScrollableBody(
      context: context,
      builder: (context) {
        return FilterContract(controller: this);
      },
    );
  }

  Future<void> fetchContractData(int pageIndex) async {
    var params = _contractParams(pageIndex);
    getIt<ContractRepository>().getContract(params).then((result) {
      final data = result.data?.data ?? [];
      contractsCount.setValue(result.data?.total ?? 0);
      final isLastPage = data.length < 10;
      if (pageIndex == 1) {
        pagingController.itemList = [];
      }
      if (isLastPage) {
        pagingController.appendLastPage(data);
      } else {
        final nextPageKey = pageIndex + 1;
        pagingController.appendPage(data, nextPageKey);
      }
    });
  }

  ContractParams _contractParams(int pageIndex) {
    return ContractParams(
      page: pageIndex,
      search: searchText,
      statusFilter: selectStatusObs.getValue().value,
      typeFilter: selectTypeObs.getValue().value,
    );
  }

  void onFilter() {
    if (selectTypeObs.getValue() != ContractTypes.non || selectStatusObs.getValue() != TenantVisibility.non) {
      pagingController.refresh();
      fetchContractData(1);
      filterAppliedObs.setValue(true);
    }
  }

  void onResetFilter() {
    selectStatusObs.setValue(TenantVisibility.non);
    selectTypeObs.setValue(ContractTypes.non);
    pagingController.refresh();
    fetchContractData(1);
    filterAppliedObs.setValue(false);
  }
}
