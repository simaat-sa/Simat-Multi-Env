import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/http/models/result.dart';
import 'package:flutter_tdd/core/models/model_to_domain/model_to_domain.dart';
import 'package:flutter_tdd/features/maintenance/data/data_source/maintenance_data_source.dart';
import 'package:flutter_tdd/features/maintenance/data/models/maintenance_model/maintenance_model.dart';
import 'package:flutter_tdd/features/maintenance/data/models/maintenance_services_model/maintenance_services_model.dart';
import 'package:flutter_tdd/features/maintenance/domain/entity/add_maintenance_params.dart';
import 'package:flutter_tdd/features/maintenance/domain/repositories/maintenance_repository.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: MaintenanceRepository)
class ContractRepositoryImpl extends MaintenanceRepository with ModelToDomainResult {
  final dataSource = getIt.get<MaintenanceDataSource>();

  @override
  Future<MyResult<List<MaintenanceModel>>> getContracts(bool params) async {
    return await dataSource.getContracts(params);
  }

  @override
  Future<MyResult<List<MaintenanceServicesModel>>> getMaintenanceServices(bool params) async {
    return await dataSource.getMaintenanceServices(params);
  }

  @override
  Future<MyResult<MaintenanceModel>> addMaintenance(AddMaintenanceParams params) async {
    return await dataSource.addMaintenance(params);
  }
}
