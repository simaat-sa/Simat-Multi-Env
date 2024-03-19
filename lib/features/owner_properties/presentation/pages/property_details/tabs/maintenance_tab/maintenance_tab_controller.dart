part of 'maintenance_tab_imports.dart';

class MaintenanceTabController {
  final PagingController<int, MaintenanceModel> pagingController = PagingController(firstPageKey: 1);
  ObsValue<ContractStatus> filterContractObs = ObsValue<ContractStatus>.withInit(ContractStatus.non);
  final ObsValue<int> maintenanceCount = ObsValue<int>.withInit(0);
  final ObsValue<bool> applyFilterObs = ObsValue<bool>.withInit(false);
  late String areaId;

  MaintenanceTabController(this.areaId) {
    initPaginationController();
  }

  void initPaginationController() {
    pagingController.addPageRequestListener((pageKey) {
      fetchPropertyData(pageKey);
    });
  }

  void maintenanceDialog(BuildContext context, MaintenanceModel model) {
    showDialog(
      context: context,
      builder: (context) {
        return MaintenanceDialog(
          model: model,
        );
      },
    );
  }

  void filterSheet(BuildContext context) {
    AppBottomSheets.showScrollableBody(
      context: context,
      builder: (context) {
        return MaintenanceTabFilterWidget(controller: this);
      },
    );
  }

  Future<void> fetchPropertyData(int pageIndex) async {
    var params = _maintenanceListParams(pageIndex);
    getIt<MaintenanceRepository>().getContracts(params).then((result) {
      final data = result.data?.data ?? [];
      maintenanceCount.setValue(result.data?.total ?? 0);
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

  void onFilter(BuildContext context) {
    pagingController.refresh();
    fetchPropertyData(1);
    if (filterContractObs.getValue() != ContractStatus.non) {
      applyFilterObs.setValue(true);
    }
  }

  void onResetFilter(BuildContext context) {
    pagingController.refresh();
    filterContractObs.setValue(ContractStatus.non);
    fetchPropertyData(1);
    applyFilterObs.setValue(false);
  }

  MaintenanceParams _maintenanceListParams(int pageCode) {
    return MaintenanceParams(
      page: pageCode,
      areId: areaId,
      filter: filterContractObs.getValue().value,
    );
  }
}
