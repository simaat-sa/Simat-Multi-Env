part of 'tenant_screen_imports.dart';



class TenantScreenController{
  final TenantRequester requester = TenantRequester();

  TenantScreenController(){
    requester.setLoadingState();
    requestData();
  }


  Future<void> requestData() async {
   await requester.request();
  }

}