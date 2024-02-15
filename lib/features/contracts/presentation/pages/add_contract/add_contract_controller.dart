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

  Future<void> addContract(BuildContext context) async {
    final params = addMaintenanceParams();
    var result = await getIt.get<ContractRepository>().addMaintenance(params);
    result.whenOrNull(
      isSuccess: (data) {
          AutoRouter.of(context).push(CompleteAddContractRoute(model: data));
      },
    );
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