part of 'units_imports.dart';

class UnitController {
  late PropUnitsRequester requester;
  final PropModel model;

  UnitController(this.model) {
    requester = PropUnitsRequester(_propEntity());
  }

  PropertyDetailsParams _propEntity() => PropertyDetailsParams(propId: model.areId);

  Future<void> requestPropUnitData()async{
    requester.request();
  }
}
