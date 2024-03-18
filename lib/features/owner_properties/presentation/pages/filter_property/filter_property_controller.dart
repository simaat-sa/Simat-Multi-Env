part of 'filter_property_imports.dart';

class FilterPropertyController {
  final FilterPropertyRequester requester = FilterPropertyRequester();
  final ObsValue<bool> refresh = ObsValue<bool>.withInit(false);

  late OwnerPropertyController ownerController;

  FilterPropertyController(OwnerPropertyController propController) {
    requester.request();
    ownerController = propController;
  }

  void onFilter() {
    final selectedCat = requester.data?.categories.firstWhereOrNull((e) => e.selected == true);
    final selectedType = requester.data?.types.firstWhereOrNull((e) => e.selected == true);
    ownerController.categoryFilter = selectedCat?.code;
    ownerController.typeFilter = selectedType?.code;
    ownerController.pagingController.refresh();
    ownerController.fetchPropertyData(1);
  }


  void onReset() {
    requester.data?.categories.map((e) => e.selected = false).toList();
    requester.data?.types.map((e) => e.selected = false).toList();
    ownerController.categoryFilter = null;
    ownerController.typeFilter = null;
    ownerController.pagingController.refresh();
    ownerController.fetchPropertyData(1);
    refresh.refresh();
  }
}
