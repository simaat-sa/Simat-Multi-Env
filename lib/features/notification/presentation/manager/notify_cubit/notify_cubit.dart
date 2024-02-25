import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'notify_state.dart';


class NotifyCubit extends Cubit<NotifyState> {
  NotifyCubit() : super(const NotifyInitial());

  void onUpdateNotifyData(String count ) {
    emit(NotifyUpdateState(count: count));
  }
}
