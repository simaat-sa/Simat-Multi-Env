import 'package:flutter_tdd/core/enums/contract_status.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/requester/requester.dart';
import 'package:flutter_tdd/features/maintenance/data/models/maintenance_model/maintenance_model.dart';
import 'package:flutter_tdd/features/maintenance/domain/repositories/maintenance_repository.dart';

class MaintenanceRequester extends Requester<List<MaintenanceModel>> {
  List<MaintenanceModel> _listContract = [];

  void setLoadingState() {
    loadingState();
  }

  @override
  Future<void> request({bool fromRemote = true}) async {
    var result = await getIt.get<MaintenanceRepository>().getContracts(fromRemote);
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
      final textSearch =
          element.code.toLowerCase().contains(searchText.toLowerCase().trim()) || element.unitName.toLowerCase().contains(searchText.toLowerCase().trim());
      final statusCheck = status == ContractStatus.non ? true : element.status == status;
      return statusCheck && textSearch;
    }).toList();
    successState(list);
  }

  void resetFilter() {
    successState(_listContract);
  }
}
