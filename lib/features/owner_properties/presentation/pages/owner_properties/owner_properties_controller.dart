part of 'owner_properties_imports.dart';

class OwnerPropertyController {
  final PropertyRequester requester = PropertyRequester();

  void requestPropertyData() {
    requester.request(fromRemote: false);
    requester.request();
  }
}
