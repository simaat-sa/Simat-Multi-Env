import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/requester/requester.dart';
import 'package:flutter_tdd/features/tennat/domain/models/tennat.dart';
import 'package:flutter_tdd/features/tennat/domain/repositories/tennat_repository.dart';

class TenantRequester extends Requester<List<Tenant>> {
  @override
  Future<void> request({bool fromRemote = true}) async {
    var result = await getIt.get<TenantRepository>().getTenant(fromRemote);
    result.when(
      isSuccess: (data) {
        successState(data??[]);
      },
      isError: (error) {
        failedState(error, () {
          request(fromRemote: fromRemote);
        });
      },
    );
  }
}
