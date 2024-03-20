part of 'units_imports.dart';

class UnitController {
  final ObsValue<PropDetailsStatus> selectStatusObs = ObsValue<PropDetailsStatus>.withInit(PropDetailsStatus.non);
  final ObsValue<bool> applyFilterObs = ObsValue<bool>.withInit(false);
  late PropUnitsRequester requester;
  final PropModel model;

  UnitController(this.model) {
    requester = PropUnitsRequester(_propEntity());
  }

  void onFilter() {
    if (selectStatusObs.getValue() != PropDetailsStatus.non) {
      requester.onFilter(selectStatusObs.getValue().value);
      applyFilterObs.setValue(true);
    }
  }

  void onResetFilter() {
    requester.onReset();
    applyFilterObs.setValue(false);
  }

  void filterSheet(BuildContext context) {
    AppBottomSheets.showScrollableBody(
      context: context,
      builder: (context) {
        return UnitFilterWidget(controller: this);
      },
    );
  }

  PropertyDetailsParams _propEntity() {
    return PropertyDetailsParams(propId: model.areId);
  }

  Future<void> requestPropUnitData() async {
    requester.request();
  }
}
