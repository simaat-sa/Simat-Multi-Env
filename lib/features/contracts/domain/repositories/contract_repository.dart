import 'package:flutter_tdd/core/http/models/result.dart';
import 'package:flutter_tdd/features/contracts/data/models/tennat_model/contract_model.dart';


abstract class ContractRepository{
  Future<MyResult<List<ContractModel>>> getContracts(bool params);
}