import 'package:flutter_tdd/core/http/models/result.dart';
import 'package:flutter_tdd/core/usecases/use_case.dart';
import 'package:flutter_tdd/features/tennat/data/models/tennat_model/tennat_model.dart';

abstract class TennatDataSource{
  Future<MyResult<List<TennatModel>>> getTennat (bool params);
}