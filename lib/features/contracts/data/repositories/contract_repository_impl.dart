import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/http/models/result.dart';
import 'package:flutter_tdd/core/models/model_to_domain/model_to_domain.dart';
import 'package:flutter_tdd/features/contracts/data/data_source/contract_data_source.dart';
import 'package:flutter_tdd/features/contracts/data/models/tennat_model/contract_model.dart';
import 'package:flutter_tdd/features/contracts/domain/repositories/contract_repository.dart';
import 'package:injectable/injectable.dart';


@Injectable(as:ContractRepository)
class ContractRepositoryImpl extends ContractRepository with ModelToDomainResult{
  @override
  Future<MyResult<List<ContractModel>>> getContracts(bool params)async {
    return await getIt.get<ContractDataSource>().getContracts(params);
  }

}