part of'notify_cubit.dart';


abstract class NotifyState extends Equatable {
  final String count;
  const NotifyState({required this.count});
}

class NotifyInitial extends NotifyState {
  const NotifyInitial() : super(count: "");
  @override
  List<Object> get props => [count];
}

class NotifyUpdateState extends NotifyState {
  const NotifyUpdateState({required super.count});
  @override
  List<Object> get props => [count];
}
