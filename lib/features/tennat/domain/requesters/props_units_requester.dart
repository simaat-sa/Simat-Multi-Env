import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/requester/requester.dart';
import 'package:flutter_tdd/features/tennat/data/models/tennat_model/tennat_model.dart';
import 'package:flutter_tdd/features/tennat/domain/repositories/tennat_repository.dart';

class PropsRequester extends Requester<List<TenantModel>> {
  final int id;

  void setLoadingState() {
    loadingState();
  }

  PropsRequester(this.id);

  @override
  Future<void> request({bool fromRemote = true}) async {
    var result = await getIt.get<TenantRepository>().getPropsUnites(id);
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
