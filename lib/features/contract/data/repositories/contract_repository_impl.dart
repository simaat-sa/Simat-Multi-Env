import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/http/models/result.dart';
import 'package:flutter_tdd/core/models/model_to_domain/model_to_domain.dart';
import 'package:flutter_tdd/features/contract/data/data_source/contract_data_source.dart';
import 'package:flutter_tdd/features/contract/data/models/contract_model/contract_model.dart';
import 'package:flutter_tdd/features/contract/data/models/props_model/prop_model.dart';
import 'package:flutter_tdd/features/contract/domain/repositories/contract_repository.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: ContractRepository)
class ContractRepositoryImpl extends ContractRepository with ModelToDomainResult {
  final dataSource = getIt.get<ContractDataSource>();

  @override
  Future<MyResult<List<ContractModel>>> getTenant(bool params) async {
    return await dataSource.getTenant(params);
  }

  @override
  Future<MyResult<List<PropModel>>> getProps(bool params) async {
    return await dataSource.getProps(params);
  }

  @override
  Future<MyResult<List<PropModel>>> getPropsUnites() async {
    return await dataSource.getPropsUnites();
  }

  @override
  Future<MyResult<ContractModel>> renewContract(String contractId)async {
  return await dataSource.renewContract(contractId);
  }
}
