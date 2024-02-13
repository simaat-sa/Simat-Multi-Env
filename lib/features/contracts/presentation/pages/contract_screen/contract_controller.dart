part of 'contract_screen_imports.dart';



class ContractController{
  final ContractRequester requester = ContractRequester();

  ContractController() {
    requester.setLoadingState();
    requestData();
  }

  contractDialog(BuildContext context,ContractModel model) {
    showDialog(context: context, builder:
      (context) {
        return  ContractDialog(model:  model,);
      },);
  }


  Future<void> requestData() async {
    await requester.request();
  }

}