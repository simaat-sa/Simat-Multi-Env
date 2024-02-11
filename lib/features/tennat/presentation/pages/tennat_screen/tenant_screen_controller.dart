part of 'tenant_screen_imports.dart';



class TenantScreenController{
  final TenantRequester requester = TenantRequester();

  void initRequester(){
    requester.request(fromRemote: true);
    requester.request(fromRemote: false);
  }

}