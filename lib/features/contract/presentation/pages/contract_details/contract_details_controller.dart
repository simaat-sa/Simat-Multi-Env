part of 'contract_details_imports.dart';

class ContractDetailsController {
  final ObsValue<int> navigationBarObs = ObsValue<int>.withInit(0);

  final ContractModel model;

  ContractDetailsController(this.model);

  Future<void> renewContract(BuildContext context) async {
    try{
      var result = await getIt.get<ContractRepository>().renewContract(model.propId);
      result.when(
        isSuccess: (data) {
          AutoRouter.of(context).popAndPush(RenewContractStatusRoute(success: true));
        },
        isError: (error) {
          AutoRouter.of(context).popAndPush(RenewContractStatusRoute(success: false));
        },
      );
    }catch(e){
      AutoRouter.of(context).popAndPush(RenewContractStatusRoute(success: false));
    }

  }
}
