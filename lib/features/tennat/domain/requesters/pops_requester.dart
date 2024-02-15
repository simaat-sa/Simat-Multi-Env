import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/requester/requester.dart';
import 'package:flutter_tdd/features/tennat/data/models/props_model/props_model.dart';
import 'package:flutter_tdd/features/tennat/domain/repositories/tennat_repository.dart';

class PropsRequester extends Requester<List<PropsModel>> {
  void setLoadingState() {
    loadingState();
  }

  @override
  Future<void> request({bool fromRemote = true}) async {
    var result = await getIt.get<TenantRepository>().getProps(fromRemote);
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
