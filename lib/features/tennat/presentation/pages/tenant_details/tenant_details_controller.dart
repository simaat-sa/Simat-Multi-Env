part of 'tenant_details_imports.dart';

class TenantDetailsController {
  final ObsValue<int> navigationBarObs = ObsValue<int>.withInit(0);

  final TenantModel model;

  TenantDetailsController(this.model);

  Future<void> renewContract(BuildContext context) async {
    try{
      var result = await getIt.get<TenantRepository>().renewContract(model.id);
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
