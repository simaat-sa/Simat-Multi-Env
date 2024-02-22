import 'package:flutter_tdd/core/http/models/result.dart';
import 'package:flutter_tdd/features/notification/data/models/notices_model/notices_model.dart';

abstract class NoticesRepository{
  Future<MyResult<List<NoticesModel>>> getNotices (bool params);
}