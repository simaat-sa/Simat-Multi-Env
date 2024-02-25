import 'package:flutter_tdd/core/http/models/result.dart';
import 'package:flutter_tdd/core/usecases/use_case.dart';

abstract class SlideMenuRepository {
  Future<MyResult<String>> setLogOut (NoParams params);
}