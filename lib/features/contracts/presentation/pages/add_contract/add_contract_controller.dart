part of'add_contract_imports.dart';


class AddContractController {
  final ObsValue<bool> switchObs = ObsValue.withInit(false);
  List<PropsModel> selectedProps = [];
  List<PropsModel> selectedPropUnits = [];
  List<MaintenanceServicesModel> selectedServices = [];

  void onChanged(bool value) {
    switchObs.setValue(value);
    switchObs.refresh();
  }

  Future<void> addContract() async {
    final params = addMaintenanceParams();
    var result = getIt.get<ContractRepository>().addMaintenance(params);

  }

  AddMaintenanceParams addMaintenanceParams() {
    final prop = selectedProps.first;
    return AddMaintenanceParams(
      areAreId: prop.areAreId,
      areId: prop.areId,
      contactName:prop.contactName,
      contactMobile: prop.contactMobile,
      maintDesc:"",
      dtCreated:prop. dtCreated,
      createBy:prop. createBy,
      dtDue:prop.dtUpdated,
      paymentByClient: switchObs.getValue(),
      maintType: selectedServices.map((e) => e.value).toList(),
      creatorPay: "1",
    );
  }
}