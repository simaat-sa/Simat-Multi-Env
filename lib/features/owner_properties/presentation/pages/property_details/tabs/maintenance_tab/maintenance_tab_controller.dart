part of 'maintenance_tab_imports.dart';

class MaintenanceTabController {
  final PagingController<int, MaintenanceModel> pagingController = PagingController(firstPageKey: 1);
  late String areaId;

  MaintenanceTabController(this.areaId){
    initPaginationController();
  }

  void initPaginationController() {
    pagingController.addPageRequestListener((pageKey) {
      fetchPropertyData(pageKey);
    });
  }


  Future<void> fetchPropertyData( int pageIndex) async {
    var params = _maintenanceListParams(pageIndex);
    getIt<MaintenanceRepository>().getContracts(params).then((result) {
      final data = result.data?.data ?? [];
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

  MaintenanceParams _maintenanceListParams(int pageCode) {
    return MaintenanceParams(
      page: pageCode,
      areaId: areaId,
    );
  }
}
