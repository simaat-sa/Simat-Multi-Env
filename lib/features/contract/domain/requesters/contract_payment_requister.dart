import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/requester/requester.dart';
import 'package:flutter_tdd/features/contract/data/models/payment_model/payment_model.dart';
import 'package:flutter_tdd/features/contract/domain/entities/payment_entity.dart';
import 'package:flutter_tdd/features/contract/domain/repositories/contract_repository.dart';

class ContractPaymentRequester extends Requester<List<PaymentModel>> {
  late PaymentEntity paymentEntity;

  ContractPaymentRequester(this.paymentEntity) {
    request(fromRemote: false);
    request();
  }

  void setLoadingState() {
    loadingState();
  }

  @override
  Future<void> request({bool fromRemote = true}) async {
    paymentEntity.refresh = fromRemote;
    var result = await getIt.get<ContractRepository>().getContractPayment(paymentEntity);
    result.when(
      isSuccess: (data) {
        successState(data ?? []);
      },
      isError: (error) {
        failedState(error, () {
          request(fromRemote: fromRemote);
        });
      },
    );
  }

  void onSelectedItem(PaymentModel item) {
    item.selected = !(item.selected ?? false);
    successState(data ?? []);
  }
}
