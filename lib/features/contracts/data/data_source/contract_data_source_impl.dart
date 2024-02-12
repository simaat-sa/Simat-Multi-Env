import 'package:flutter_tdd/core/http/generic_http/api_names.dart';
import 'package:flutter_tdd/core/http/generic_http/generic_http.dart';
import 'package:flutter_tdd/core/http/models/http_request_model.dart';
import 'package:flutter_tdd/core/http/models/result.dart';
import 'package:flutter_tdd/features/contracts/data/data_source/contract_data_source.dart';
import 'package:flutter_tdd/features/contracts/data/models/tennat_model/contract_model.dart';
import 'package:injectable/injectable.dart';
@Injectable(as: ContractDataSource)
class ContractDataSourceImpl extends ContractDataSource {
  @override
  Future<MyResult<List<ContractModel>>> getContracts(bool params) async {
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.getContracts,
      responseType: ResType.list,
      requestMethod: RequestMethod.get,
      refresh: params,
      responseKey: (data) => data['data'],
      toJsonFunc: (data) {
        return List<ContractModel>.from(data.map((e)=>ContractModel.fromJson(e)));
      },
    );
        return GenericHttpImpl<List<ContractModel>>()(model);
  }
}
