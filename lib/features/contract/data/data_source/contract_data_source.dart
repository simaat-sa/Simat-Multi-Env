import 'package:flutter_tdd/core/http/models/result.dart';
import 'package:flutter_tdd/core/models/paging_model/paging_model.dart';
import 'package:flutter_tdd/features/contract/data/models/contract_model/contract_model.dart';
import 'package:flutter_tdd/features/contract/data/models/payment_model/payment_model.dart';
import 'package:flutter_tdd/features/contract/data/models/props_model/prop_model.dart';
import 'package:flutter_tdd/features/contract/domain/entities/contract_params.dart';
import 'package:flutter_tdd/features/contract/domain/entities/payment_entity.dart';

abstract class ContractDataSource {
  Future<MyResult<PagingModel<ContractModel>>> getContract(ContractParams params);

  Future<MyResult<List<PropModel>>> getProps(bool params);

  Future<MyResult<List<PropModel>>> getPropsUnites();

  Future<MyResult<ContractModel>> renewContract(String contractId);

  Future<MyResult<List<PaymentModel>>> getContractPayment(PaymentEntity params);
}
