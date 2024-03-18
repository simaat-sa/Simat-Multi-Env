part of 'owner_properties_imports.dart';

class OwnerPropertyController {
  final PagingController<int, PropModel> pagingController = PagingController(firstPageKey: 1);
  ObsValue<bool> filterAppliedObs = ObsValue<bool>.withInit(false);
  String searchText = '';
  String categoryFilter = '';
  String typeFilter = '';


  void initPaginationController() {
    pagingController.addPageRequestListener((pageKey) {
      fetchPropertyData(pageKey);
    });
  }

  Future<void> fetchPropertyData(int pageIndex) async {
    var params = _ownerPropertiesParams(pageIndex);
    getIt<PropertyRepository>().getProperties(params).then((result) {
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

  OwnerPropertiesParams _ownerPropertiesParams(int pageCode) {
    return OwnerPropertiesParams(
      page: pageCode,
      search: searchText,
      selectedFilter: "",
    );
  }

  void onFilter() {
    pagingController.refresh();
    fetchPropertyData(1);
    filterAppliedObs.setValue(true);
  }

}
