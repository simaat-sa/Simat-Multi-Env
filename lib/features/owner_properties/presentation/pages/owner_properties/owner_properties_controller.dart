part of 'owner_properties_imports.dart';

class OwnerPropertyController {
  final PropertyRequester requester = PropertyRequester();
  String searchText = '';

  void requestPropertyData() {
    requester.request(fromRemote: false);
    requester.request();
  }

  void onFilter() {
    requester.propertyFilter(searchText);
  }
}
