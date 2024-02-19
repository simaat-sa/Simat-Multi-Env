import 'package:flutter_tdd/core/http/generic_http/api_names.dart';
import 'package:flutter_tdd/core/http/generic_http/generic_http.dart';
import 'package:flutter_tdd/core/http/models/http_request_model.dart';
import 'package:flutter_tdd/core/http/models/result.dart';
import 'package:flutter_tdd/features/contracts/data/data_source/contract_data_source.dart';
import 'package:flutter_tdd/features/contracts/data/models/maintenance_services_model/maintenance_services_model.dart';
import 'package:flutter_tdd/features/contracts/data/models/tennat_model/contract_model.dart';
import 'package:flutter_tdd/features/contracts/domain/entity/add_maintenance_params.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: ContractDataSource)
class ContractDataSourceImpl extends ContractDataSource {
  @override
  Future<MyResult<List<ContractModel>>> getContracts(bool params) async {
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.maintenanceRequests,
      responseType: ResType.list,
      requestMethod: RequestMethod.get,
      refresh: params,
      responseKey: (data) => data['data'],
      toJsonFunc: (data) {
        return List<ContractModel>.from(data.map((e) => ContractModel.fromJson(e)));
      },
    );
    return GenericHttpImpl<List<ContractModel>>()(model);
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
  Future<MyResult<ContractModel>> addMaintenance(AddMaintenanceParams params) async {
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.maintenanceAdd,
      responseType: ResType.model,
      requestMethod: RequestMethod.post,
      responseKey: (data) => data['data'],
      requestBody: params.toJson(),
      showLoader: true,
      isFormData: true,
      toJsonFunc: (data) => ContractModel.fromJson(data),
    );
    return GenericHttpImpl<ContractModel>()(model);
  }
}
