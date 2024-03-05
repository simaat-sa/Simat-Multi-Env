import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/requester/requester.dart';
import 'package:flutter_tdd/features/contract/data/models/props_model/prop_model.dart';
import 'package:flutter_tdd/features/contract/domain/repositories/contract_repository.dart';

class PropsRequester extends Requester<List<PropModel>> {
  void setLoadingState() {
    loadingState();
  }

  @override
  Future<void> request({bool fromRemote = true}) async {
    var result = await getIt.get<ContractRepository>().getPropsUnites();
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
