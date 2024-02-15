part of 'add_contract_imports.dart';

class AddContractController {

  final TextEditingController desc = TextEditingController();
  final ObsValue<bool> switchObs = ObsValue.withInit(false);

  late BaseOptionsRequester<PropModel> unitRequester;

  List<PropModel> selectedProps = [];
  List<PropModel> selectedPropUnits = [];
  List<MaintenanceServicesModel> selectedServices = [];

  AddContractController() {
    setUnitRequester();
  }

  void onChanged(bool value) {
    switchObs.setValue(value);
    switchObs.refresh();
  }

  void setUnitRequester(){
    unitRequester =  BaseOptionsRequester<PropModel>(
      isRemotelySearch: false,
      immediatelyRequestOptions: false,
      valueMainTitleGetter: (value) => value?.unitName,
      fetcher: (c) => getIt<TenantRepository>().getPropsUnites(selectedProps.first.areId),
    );
  }

  Future<void> addContract(BuildContext context) async {
    final params = addMaintenanceParams(context);
    var result = await getIt.get<ContractRepository>().addMaintenance(params);
    result.when(
      isSuccess: (data) {
        AutoRouter.of(context).push(CompleteAddContractRoute(model: data));
      },
      isError: (error) {
        print("Error");
      },
    );
  }

  AddMaintenanceParams addMaintenanceParams(BuildContext context) {
    var user = context.read<UserCubit>().state.model;
    final prop = selectedPropUnits.first;
    return AddMaintenanceParams(
      areAreId: prop.areAreId,
      areId: prop.areId,
      contactName: prop.contactName,
      contactMobile: prop.contactMobile,
      maintDesc: desc.text,
      dtCreated: DateTime.now().toFormattedEnString(),
      createBy:  user?.userid.toString() ?? "",
      dtDue: "2024-02-18",
      paymentByClient: switchObs.getValue(),
      maintType: selectedServices.map((e) => e.value).toList(),
      creatorPay: "1",
    );
  }
}
