import 'package:flutter_tdd/core/http/models/result.dart';
import 'package:flutter_tdd/features/contract/data/models/contract_model/contract_model.dart';
import 'package:flutter_tdd/features/contract/data/models/props_model/prop_model.dart';

abstract class ContractRepository{
  Future<MyResult<List<ContractModel>>> getTenant(bool params);

  Future<MyResult<List<PropModel>>> getProps (bool params);

  Future<MyResult<List<PropModel>>> getPropsUnites ();

  Future<MyResult<ContractModel>> renewContract(String contractId);

}