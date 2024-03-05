import 'package:flutter_tdd/core/http/models/result.dart';
import 'package:flutter_tdd/features/contract/data/models/contract_model/contract_model.dart';
import 'package:flutter_tdd/features/contract/data/models/props_model/prop_model.dart';

abstract class PropertyRepository{
  Future<MyResult<List<PropModel>>> getProperties(bool params);
}