import 'package:flutter_tdd/core/http/models/result.dart';
import 'package:flutter_tdd/features/tennat/domain/models/tennat.dart';

abstract class TenantRepository{
  Future<MyResult<List<Tenant>>> getTenant(bool params);
}