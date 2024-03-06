part of 'maintenance_screen_imports.dart';

class MaintenanceController {
  ObsValue<ContractStatus> filterContractObs = ObsValue<ContractStatus>.withInit(ContractStatus.non);
  final PagingController<int, MaintenanceModel> pagingController = PagingController(firstPageKey: 1);

  String searchText = "";

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

  void initPaginationController(BuildContext context) {
    pagingController.addPageRequestListener((pageKey) {
      fetchPropertyData(context, pageKey);
    });
  }

  Future<void> fetchPropertyData(BuildContext context, int pageIndex) async {
    var params = _maintenanceListParams(pageIndex);
    await getIt<MaintenanceRepository>().getContracts(params).then((result) {
      final data = result.data ?? [];
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
    fetchPropertyData(context, 1);
  }

  void onResetFilter() {
    filterContractObs.setValue(ContractStatus.non);
  }

  MaintenanceParams _maintenanceListParams(int pageCode) {
    return MaintenanceParams(
      page: pageCode,
      filters: filterContractObs.getValue().value,
      search: '',
    );
  }
}
