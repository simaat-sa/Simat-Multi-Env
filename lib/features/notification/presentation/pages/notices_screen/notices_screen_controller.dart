part of'notices_screen_imports.dart';


class NoticesScreenController{
  final NoticesRequester requester = NoticesRequester();


  void requestNotifyData(){
    requester.request(fromRemote: false);
    requester.request();
  }
}