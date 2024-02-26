import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tdd/core/enums/notify_status.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/helpers/global_context.dart';
import 'package:flutter_tdd/core/requester/requester.dart';
import 'package:flutter_tdd/features/notification/data/models/notices_model/notices_model.dart';
import 'package:flutter_tdd/features/notification/domain/repositories/notices_repository.dart';
import 'package:flutter_tdd/features/notification/presentation/manager/notify_cubit/notify_cubit.dart';

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
        successState(data?.reversed.toList() ?? []);
        var count = data?.where((e) => e.isRead == NotifyStatus.unRead).length??"";
        var context = getIt<GlobalContext>().context();
        context.read<NotifyCubit>().onUpdateNotifyData( '$count');
      },
      isError: (error) {
        failedState(error, () {
          request(fromRemote: fromRemote);
        });
      },
    );
  }
}
