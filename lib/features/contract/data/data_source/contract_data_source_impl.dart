import 'package:flutter_tdd/core/enums/user_types.dart';
import 'package:flutter_tdd/core/http/generic_http/api_names.dart';
import 'package:flutter_tdd/core/http/generic_http/generic_http.dart';
import 'package:flutter_tdd/core/http/models/http_request_model.dart';
import 'package:flutter_tdd/core/http/models/result.dart';
import 'package:flutter_tdd/core/models/paging_model/paging_model.dart';
import 'package:flutter_tdd/features/contract/data/data_source/contract_data_source.dart';
import 'package:flutter_tdd/features/contract/data/models/contract_model/contract_model.dart';
import 'package:flutter_tdd/features/contract/data/models/payment_model/payment_model.dart';
import 'package:flutter_tdd/features/contract/data/models/props_model/prop_model.dart';
import 'package:flutter_tdd/features/contract/domain/entities/contract_params.dart';
import 'package:flutter_tdd/features/contract/domain/entities/payment_entity.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: ContractDataSource)
class ContractDataSourceImpl extends ContractDataSource {
  @override
  Future<MyResult<PagingModel<ContractModel>>> getContract(ContractParams params) async {
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.getContract(params.header()),
      responseType: ResType.model,
      requestMethod: RequestMethod.get,
      refresh: params.refresh,
      responseKey: (data) => data,
      toJsonFunc: (data) {
        return PagingModel<ContractModel>.fromJson(
          data,
          (obj) => ContractModel.fromJson(obj),
        );
      },
    );
    return await GenericHttpImpl<PagingModel<ContractModel>>()(model);
  }

  @override
  Future<MyResult<List<PropModel>>> getProps(bool params) async {
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.properties,
      responseType: ResType.list,
      requestMethod: RequestMethod.get,
      refresh: params,
      responseKey: (data) => data['data'],
      toJsonFunc: (data) {
        return List<PropModel>.from(data.map((e) => PropModel.fromJson(e)));
      },
    );
    return await GenericHttpImpl<List<PropModel>>()(model);
  }

  @override
  Future<MyResult<List<PropModel>>> getPropsUnites(UserTypes userType) async {
    HttpRequestModel model = HttpRequestModel(
      url: userType == UserTypes.owner? ApiNames.ownerPropUnits : ApiNames.tenantPropUnits,
      responseType: ResType.list,
      requestMethod: RequestMethod.get,
      responseKey: (data) => data['data'],
      toJsonFunc: (data) {
        return List<PropModel>.from(data.map((e) => PropModel.fromJson(e)));
      },
    );
    return await GenericHttpImpl<List<PropModel>>()(model);
  }

  @override
  Future<MyResult<ContractModel>> renewContract(String contractId) async {
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.renewContract(contractId),
      responseType: ResType.model,
      requestMethod: RequestMethod.post,
      showLoader: true,
      responseKey: (data) => data['data'],
      errorFunc: (data) => data['data']["status"],
      toJsonFunc: (data) => ContractModel.fromJson(data),
    );
    return await GenericHttpImpl<ContractModel>()(model);
  }

  @override
  Future<MyResult<List<PaymentModel>>> getContractPayment(PaymentEntity params) async {
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.contractPayment(params.id),
      responseType: ResType.list,
      requestMethod: RequestMethod.get,
      refresh: params.refresh,
      responseKey: (data) => data['data'],
      toJsonFunc: (json) {
        return List<PaymentModel>.from(json.map((e) => PaymentModel.fromJson(e)));
      },
    );
    return await GenericHttpImpl<List<PaymentModel>>()(model);
  }
}
