part of 'menu_tap_imports.dart';

class MenuControllerTap {

  final ObsValue<bool> langObs = ObsValue.withInit(false);
  final ObsValue<bool> switchObs = ObsValue.withInit(false);


  void onChanged(bool value) {
    switchObs.setValue(value);
    switchObs.refresh();
  }
}
