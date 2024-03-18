import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/requester/requester.dart';
import 'package:flutter_tdd/features/contract/data/models/contract_model/contract_model.dart';
import 'package:flutter_tdd/features/contract/data/models/props_model/prop_model.dart';
import 'package:flutter_tdd/features/owner_properties/domain/entity/property_details_params.dart';
import 'package:flutter_tdd/features/owner_properties/domain/repositories/property_repository.dart';

class PropUnitsRequester extends Requester<List<ContractModel>> {
  late PropertyDetailsParams params;

  void setLoadingState() {
    loadingState();
  }

  PropUnitsRequester(this.params) {
    request();
    request();
  }

  @override
  Future<void> request({bool fromRemote = true}) async {
    loadingState();
    params.refresh = fromRemote;
    var result = await getIt<PropertyRepository>().getPropDetailsUnit(params);
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
