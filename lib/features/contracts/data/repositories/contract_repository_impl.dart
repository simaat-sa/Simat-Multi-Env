import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/http/models/result.dart';
import 'package:flutter_tdd/core/models/model_to_domain/model_to_domain.dart';
import 'package:flutter_tdd/features/contracts/data/data_source/contract_data_source.dart';
import 'package:flutter_tdd/features/contracts/data/models/maintenance_services_model/maintenance_services_model.dart';
import 'package:flutter_tdd/features/contracts/data/models/tennat_model/contract_model.dart';
import 'package:flutter_tdd/features/contracts/domain/entity/add_maintenance_params.dart';
import 'package:flutter_tdd/features/contracts/domain/repositories/contract_repository.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: ContractRepository)
class ContractRepositoryImpl extends ContractRepository with ModelToDomainResult {
  final dataSource = getIt.get<ContractDataSource>();

  @override
  Future<MyResult<List<ContractModel>>> getContracts(bool params) async {
    return await dataSource.getContracts(params);
  }

  @override
  Future<MyResult<List<MaintenanceServicesModel>>> getMaintenanceServices(bool params) async {
    return await dataSource.getMaintenanceServices(params);
  }

  @override
  Future<MyResult<ContractModel>> addMaintenance(AddMaintenanceParams params) async {
    return await dataSource.addMaintenance(params);
  }
}
