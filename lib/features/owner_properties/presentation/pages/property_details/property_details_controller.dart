part of 'property_details_imports.dart';

class PropertyDetailsController {
  ObsValue<PropDetailsTabsCount> tabsCountObs = ObsValue<PropDetailsTabsCount>.withInit(PropDetailsTabsCount());
  late PropDetailsRequester requester;
  final PropModel model;

  PropertyDetailsController(this.model) {
    requester = PropDetailsRequester(_propEntity());
    getPropDetails();
  }

  PropertyDetailsParams _propEntity() => PropertyDetailsParams(propId: model.areId);

  Future<void> getPropDetails() async {
    await requester.request();
    tabsCountObs.setValue(_propDetailsTabsCount());
  }

  PropDetailsTabsCount _propDetailsTabsCount() {
    final data = requester.data;
    return PropDetailsTabsCount(
      maintenanceCount: data?.maintenanceCount ?? "0",
      unitCount: data?.propChildTot ?? "0",
      paymentCount: data?.paymentCount ?? "0",
    );
  }
}
