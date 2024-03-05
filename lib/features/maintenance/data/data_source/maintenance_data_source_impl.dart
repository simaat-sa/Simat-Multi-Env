import 'package:flutter_tdd/core/http/generic_http/api_names.dart';
import 'package:flutter_tdd/core/http/generic_http/generic_http.dart';
import 'package:flutter_tdd/core/http/models/http_request_model.dart';
import 'package:flutter_tdd/core/http/models/result.dart';
import 'package:flutter_tdd/features/maintenance/data/data_source/maintenance_data_source.dart';
import 'package:flutter_tdd/features/maintenance/data/models/maintenance_model/maintenance_model.dart';
import 'package:flutter_tdd/features/maintenance/data/models/maintenance_services_model/maintenance_services_model.dart';
import 'package:flutter_tdd/features/maintenance/domain/entity/add_maintenance_params.dart';
import 'package:flutter_tdd/features/maintenance/domain/entity/maintenance_params.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: MaintenanceDataSource)
class MaintenanceDataSourceImpl extends MaintenanceDataSource {
  @override
  Future<MyResult<List<MaintenanceModel>>> getContracts(MaintenanceParams params) async {
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.maintenanceRequests(params.header()),
      responseType: ResType.list,
      requestMethod: RequestMethod.get,
      refresh: params.refresh,
      responseKey: (data) => data['data'],
      toJsonFunc: (data) {
        return List<MaintenanceModel>.from(data.map((e) => MaintenanceModel.fromJson(e)));
      },
    );
    return GenericHttpImpl<List<MaintenanceModel>>()(model);
  }

  @override
  Future<MyResult<List<MaintenanceServicesModel>>> getMaintenanceServices(bool params) async {
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.maintenanceServices,
      responseType: ResType.list,
      requestMethod: RequestMethod.get,
      refresh: params,
      responseKey: (data) => data['data'],
      toJsonFunc: (data) {
        return List<MaintenanceServicesModel>.from(data.map((e) => MaintenanceServicesModel.fromJson(e)));
      },
    );
    return GenericHttpImpl<List<MaintenanceServicesModel>>()(model);
  }

  @override
  Future<MyResult<MaintenanceModel>> addMaintenance(AddMaintenanceParams params) async {
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.maintenanceAdd,
      responseType: ResType.model,
      requestMethod: RequestMethod.post,
      responseKey: (data) => data['data'],
      requestBody: params.toJson(),
      showLoader: true,
      isFormData: true,
      toJsonFunc: (data) => MaintenanceModel.fromJson(data),
    );
    return GenericHttpImpl<MaintenanceModel>()(model);
  }
}
