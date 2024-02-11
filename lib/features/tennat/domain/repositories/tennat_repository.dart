import 'package:flutter_tdd/core/http/models/result.dart';
import 'package:flutter_tdd/features/tennat/domain/models/tennat.dart';

abstract class TennatRepository{
  Future<MyResult<List<Tennat>>> getTennat(bool params);
}