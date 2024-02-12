import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/requester/requester.dart';
import 'package:flutter_tdd/features/contracts/data/models/tennat_model/contract_model.dart';
import 'package:flutter_tdd/features/contracts/domain/repositories/contract_repository.dart';

class ContractRequester extends Requester<List<ContractModel>> {

  void setLoadingState() {
    loadingState();
  }

  @override
  Future<void> request({bool fromRemote = true}) async {
    var result = await getIt.get<ContractRepository>().getContracts(fromRemote);
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
}
