part of 'notices_screen_imports.dart';

class NoticesScreenController {
  final NoticesRequester requester = NoticesRequester();

  void requestData() {
    requester.request(fromRemote: false);
    requester.request();
  }
}
