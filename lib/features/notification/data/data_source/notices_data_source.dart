import 'package:flutter_tdd/core/http/models/result.dart';
import 'package:flutter_tdd/features/notification/data/models/notices_model/notices_model.dart';
import 'package:flutter_tdd/features/notification/domain/entity/notification_params.dart';

abstract class NoticesDataSource {
  Future<MyResult<List<NoticesModel>>> getNotices(bool params);
  Future<MyResult<String>> getCountNotices(bool params);
  Future<MyResult<bool>> setMarksNotifications(NotificationsParams params);
}
