part of'add_contract_imports.dart';


class AddContractController {
  final ObsValue<bool> switchObs = ObsValue.withInit(false);
  final PropsRequester propsRequester = PropsRequester();

  void onChanged(bool value) {
    switchObs.setValue(value);
    switchObs.refresh();
  }

 Future<void> requestData()async{
    propsRequester.request();
 }

}