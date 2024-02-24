part of 'contract_details_imports.dart';

class ContractDetailsController {
  final ObsValue<int> navigationBarObs = ObsValue<int>.withInit(0);
  final ContractModel model;
  late ContractPaymentRequester requester;

  ContractDetailsController(this.model) {
    requester = ContractPaymentRequester(_paymentEntity());
    getContractPayment();
  }

  PaymentEntity _paymentEntity() => PaymentEntity(id: model.propId);

  Future<void> renewContract(BuildContext context) async {
    try {
      var result = await getIt.get<ContractRepository>().renewContract(model.propId);
      result.when(
        isSuccess: (data) {
          AutoRouter.of(context).popAndPush(RenewContractStatusRoute(success: true));
        },
        isError: (error) {
          AutoRouter.of(context).popAndPush(RenewContractStatusRoute(success: false));
        },
      );
    } catch (e) {
      AutoRouter.of(context).popAndPush(RenewContractStatusRoute(success: false));
    }
  }

  Future<void> getContractPayment() async {
    await requester.request();
  }

  num getTax() {
    final list = requester.data!.where((element) => element.selected == true).toList();
    num value = list.fold(0, (previousValue, element) => previousValue + num.parse(element.amtTax));
    return value;
  }

  num getTotalPrice() {
    final list = requester.data!.where((element) => element.selected == true).toList();
    num value =
        list.fold(0, (previousValue, element) => previousValue + num.parse(element.duePrice));
    return value;
  }
}
