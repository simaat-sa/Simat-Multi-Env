import 'package:flutter_tdd/core/enums/contract_types.dart';
import 'package:flutter_tdd/core/enums/tenant_visibility.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/requester/requester.dart';
import 'package:flutter_tdd/features/contract/data/models/contract_model/contract_model.dart';
import 'package:flutter_tdd/features/contract/domain/repositories/contract_repository.dart';

class ContractRequester extends Requester<List<ContractModel>> {
  List<ContractModel> _listTenant = [];

  void setLoadingState() {
    loadingState();
  }

  @override
  Future<void> request({bool fromRemote = true}) async {
    var result = await getIt.get<ContractRepository>().getTenant(fromRemote);
    result.when(
      isSuccess: (data) {
        successState(data ?? []);
        _listTenant = data ?? [];
      },
      isError: (error) {
        failedState(error, () {
          request(fromRemote: fromRemote);
        });
      },
    );
  }

  void applyTenantFilter(TenantVisibility status, ContractTypes types, String searchText) {
    final list = _listTenant.where((element) {
      final textSearch = element.code.toLowerCase().contains(searchText.toLowerCase().trim()) ||
          element.unitName.toLowerCase().contains(searchText.toLowerCase().trim());
      final statusCheck = status == TenantVisibility.non ? true : element.status == status;
      final typeCheck = types == ContractTypes.non ? true : element.type == types;
      return statusCheck && textSearch && typeCheck;
    }).toList();
    successState(list);
  }

  void resetFilter() {
    successState(_listTenant);
  }
}
