import 'package:flutter_tdd/core/http/models/result.dart';
import 'package:flutter_tdd/features/maintenance/data/models/maintenance_model/maintenance_model.dart';
import 'package:flutter_tdd/features/maintenance/data/models/maintenance_services_model/maintenance_services_model.dart';
import 'package:flutter_tdd/features/maintenance/domain/entity/add_maintenance_params.dart';
import 'package:flutter_tdd/features/maintenance/domain/entity/maintenance_params.dart';

abstract class MaintenanceRepository {
  Future<MyResult<List<MaintenanceModel>>> getContracts(MaintenanceParams params);

  Future<MyResult<List<MaintenanceServicesModel>>> getMaintenanceServices(bool params);

  Future<MyResult<MaintenanceModel>> addMaintenance(AddMaintenanceParams params);
}
