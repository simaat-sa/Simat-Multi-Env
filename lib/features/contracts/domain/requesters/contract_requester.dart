import 'package:flutter_tdd/core/enums/contract_status.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/requester/requester.dart';
import 'package:flutter_tdd/features/contracts/data/models/tennat_model/contract_model.dart';
import 'package:flutter_tdd/features/contracts/domain/repositories/contract_repository.dart';

class ContractRequester extends Requester<List<ContractModel>> {

  List<ContractModel> _listContract = [];

  void setLoadingState() {
    loadingState();
  }

  @override
  Future<void> request({bool fromRemote = true}) async {
    var result = await getIt.get<ContractRepository>().getContracts(fromRemote);
    result.when(
      isSuccess: (data) {
        successState(data ?? []);
        _listContract = data ?? [];
      },
      isError: (error) {
        failedState(error, () {
          request(fromRemote: fromRemote);
        });
      },
    );
  }


  void applyContractFilter(ContractStatus status, String searchText) {
    final list = _listContract.where((element) {
      final textSearch = element.code.contains(searchText.trim()) || element.unitName.contains(searchText.trim());
      final statusCheck = status == ContractStatus.non ? true : element.status == status;
      return statusCheck && textSearch;
    }).toList();
    successState(list);
  }


  void resetFilter() {
    successState(_listContract);
  }

}
