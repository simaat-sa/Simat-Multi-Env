import 'package:flutter_tdd/core/http/models/result.dart';
import 'package:flutter_tdd/features/tennat/data/models/props_model/prop_model.dart';
import 'package:flutter_tdd/features/tennat/data/models/tennat_model/tennat_model.dart';

abstract class TenantDataSource{
  Future<MyResult<List<TenantModel>>> getTenant (bool params);

  Future<MyResult<List<PropModel>>> getProps (bool params);

  Future<MyResult<List<PropModel>>> getPropsUnites ();
}