part of'tennat_screen_imports.dart';


class TennatScreenController{
  TennatRequester requester =TennatRequester();

  void initRequester(){
    requester.request(fromRemote: true);
    requester.request(fromRemote: false);
  }

}