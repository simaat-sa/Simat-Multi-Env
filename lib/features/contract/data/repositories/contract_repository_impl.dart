import 'package:flutter_tdd/core/enums/user_types.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/http/models/result.dart';
import 'package:flutter_tdd/core/models/model_to_domain/model_to_domain.dart';
import 'package:flutter_tdd/core/models/paging_model/paging_model.dart';
import 'package:flutter_tdd/features/contract/data/data_source/contract_data_source.dart';
import 'package:flutter_tdd/features/contract/data/models/contract_model/contract_model.dart';
import 'package:flutter_tdd/features/contract/data/models/payment_model/payment_model.dart';
import 'package:flutter_tdd/features/contract/data/models/props_model/prop_model.dart';
import 'package:flutter_tdd/features/contract/domain/entities/contract_params.dart';
import 'package:flutter_tdd/features/contract/domain/entities/payment_entity.dart';
import 'package:flutter_tdd/features/contract/domain/repositories/contract_repository.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: ContractRepository)
class ContractRepositoryImpl extends ContractRepository with ModelToDomainResult {
  final dataSource = getIt.get<ContractDataSource>();

  @override
  Future<MyResult<PagingModel<ContractModel>>> getContract(ContractParams params) async {
    return await dataSource.getContract(params);
  }

  @override
  Future<MyResult<List<PropModel>>> getProps(bool params) async {
    return await dataSource.getProps(params);
  }

  @override
  Future<MyResult<List<PropModel>>> getPropsUnites(UserTypes userType) async {
    return await dataSource.getPropsUnites(userType);
  }

  @override
  Future<MyResult<ContractModel>> renewContract(String contractId) async {
    return await dataSource.renewContract(contractId);
  }

  @override
  Future<MyResult<List<PaymentModel>>> getContractPayment(PaymentEntity params) async {
    return await dataSource.getContractPayment(params);
  }
}
