part of 'property_details_imports.dart';

class PropertyDetailsController {
  late  PropDetailsRequester requester;
  final  PropModel  model;



  PropertyDetailsController(this.model){
    requester = PropDetailsRequester(_propEntity());
    getPropDetails();
  }
  PropertyDetailsParams _propEntity() => PropertyDetailsParams( propId: model.areId);

  Future<void> getPropDetails()async {
    requester.request();
  }
}
