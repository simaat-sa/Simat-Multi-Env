import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/helpers/global_context.dart';
import 'package:flutter_tdd/core/requester/requester.dart';
import 'package:flutter_tdd/features/notification/domain/repositories/notices_repository.dart';
import 'package:flutter_tdd/features/notification/presentation/manager/notify_cubit/notify_cubit.dart';

class NoticesCountRequester extends Requester<String> {
  void setLoadingState() {
    loadingState();
  }

  @override
  Future<void> request({bool fromRemote = true}) async {
    if (fromRemote) {
      loadingState();
    }
    var result = await getIt.get<NoticesRepository>().getCountNotices(fromRemote);
    result.when(
      isSuccess: (data) {
        successState(data ?? "");
        var context = getIt<GlobalContext>().context();
        context.read<NotifyCubit>().onUpdateNotifyData(data ?? '');
      },
      isError: (error) {
        failedState(error, () {
          request(fromRemote: fromRemote);
        });
      },
    );
  }
}
