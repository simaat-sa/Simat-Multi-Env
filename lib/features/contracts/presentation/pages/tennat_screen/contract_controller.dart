part of 'contract_screen_imports.dart';



class ContractController{
  final ContractRequester requester = ContractRequester();

  ContractController(){
    requester.setLoadingState();
    requestData();
  }


  Future<void> requestData() async {
   await requester.request();
  }

}