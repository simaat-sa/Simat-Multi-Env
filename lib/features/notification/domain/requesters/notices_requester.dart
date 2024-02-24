import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/requester/requester.dart';
import 'package:flutter_tdd/features/notification/data/models/notices_model/notices_model.dart';
import 'package:flutter_tdd/features/notification/domain/repositories/notices_repository.dart';

class NoticesRequester extends Requester<List<NoticesModel>> {
  void setLoadingState() {
    loadingState();
  }

  @override
  Future<void> request({bool fromRemote = true}) async {
    if (fromRemote) {
      loadingState();
    }
    var result = await getIt.get<NoticesRepository>().getNotices(fromRemote);
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
