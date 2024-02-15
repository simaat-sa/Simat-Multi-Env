part of'add_contract_imports.dart';


class AddContractController {
  final ObsValue<bool> switchObs = ObsValue.withInit(false);

  void onChanged(bool value) {
    switchObs.setValue(value);
    switchObs.refresh();
  }
}