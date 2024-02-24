part of'notices_screen_imports.dart';


class NoticesScreenController{
  final NoticesRequester requester = NoticesRequester();


  void requestData(){
    requester.request();
    requester.request(fromRemote: false);

  }
}