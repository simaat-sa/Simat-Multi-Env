part of 'payment_tab_imports.dart';

class PaymentTabController {
  late String propId;

  PaymentTabController(this.propId) {
    initPaginationController();
  }

  ObsValue<bool> applyFilterObs = ObsValue<bool>.withInit(false);
  ObsValue<int> expensesCount = ObsValue<int>.withInit(0);
  final PagingController<int,PropertiesExpensesModel> pagingController = PagingController(firstPageKey: 1);

  void initPaginationController() {
    pagingController.addPageRequestListener((pageKey) {
      fetchPropertiesExpensesData(pageKey);
    }
    );
  }

  PropertiesExpensesParams _expensesParams(int page) {
    return PropertiesExpensesParams(
        propId: propId,
        page: page
    );
  }

  Future<void> fetchPropertiesExpensesData(int page) async {
    var params = _expensesParams(page);
    getIt<PropertyRepository>().getPropertiesExpenses(params).then((result) {
      final data = result.data?.data ?? [];
      expensesCount.setValue(result.data?.total??0);
      final lastPage = data.length < 10;
      if (page == 1) {
        pagingController.itemList = [];
      }
      if (lastPage) {
        pagingController.appendLastPage(data);
      } else {
        final nextPage = page + 1;
        pagingController.appendPage(data, nextPage);
      }
    });
  }
}