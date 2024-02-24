part of 'add_maintenance_imports.dart';

class AddMaintenanceController {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController desc = TextEditingController();
  final TextEditingController phone = TextEditingController();
  final ObsValue<bool> switchObs = ObsValue.withInit(false);

  List<PropModel> selectedProps = [];
  List<PropModel> selectedPropUnits = [];
  List<MaintenanceServicesModel> selectedServices = [];

  AddMaintenanceController(BuildContext context) {
    var user = context.read<UserCubit>().state.model!;
    phone.text = user.userMobile;
  }

  void onChanged(bool value) {
    switchObs.setValue(value);
    switchObs.refresh();
  }

  Future<void> addContract(BuildContext context) async {
    if (formKey.currentState!.validate()) {
      final params = addMaintenanceParams(context);
      var result = await getIt.get<MaintenanceRepository>().addMaintenance(params);
      result.when(
        isSuccess: (data) {
          AutoRouter.of(context).popAndPush(CompleteAddMaintenanceRoute(model: data));
        },
        isError: (error) {
          AutoRouter.of(context).popAndPush(CompleteAddMaintenanceRoute(model: null));
        },
      );
    }
  }

  AddMaintenanceParams addMaintenanceParams(BuildContext context) {
    var user = context.read<UserCubit>().state.model!;
    final prop = selectedPropUnits.first;
    return AddMaintenanceParams(
      areAreId: prop.areAreId,
      areId: prop.areId,
      contactName: prop.contactName,
      contactMobile: phone.text,
      maintDesc: desc.text,
      dtCreated: DateTime.now().toFormattedEnString(),
      createBy: user.userid,
      paymentByClient: switchObs.getValue(),
      maintType: selectedServices.map((e) => e.value).toList(),
      creatorPay: "1",
    );
  }
}
