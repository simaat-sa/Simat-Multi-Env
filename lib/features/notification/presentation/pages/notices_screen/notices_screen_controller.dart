part of 'notices_screen_imports.dart';

class NoticesScreenController {
  final NoticesRequester requester = NoticesRequester();

  void requestNotifyData() {
    requester.request(fromRemote: false);
    requester.request();
  }

  Future<void> readAllNotifications() async {
    if (unReadListIds().isEmpty) return;
    NotificationsParams params = notificationsParams();
    await getIt<NoticesRepository>().setMarksNotifications(params).then((value) {
      value.when(
        isSuccess: (data) => requester.request(),
        isError: (error) => AppSnackBar.showSimpleToast(msg: error.message),
      );
    });
  }

  NotificationsParams notificationsParams() {
    return NotificationsParams(ids: unReadListIds());
  }

  List<String> unReadListIds() =>
      requester.data!.where((e) => e.isRead == NotifyStatus.unRead).map((e) => e.alertId).toList();
}
