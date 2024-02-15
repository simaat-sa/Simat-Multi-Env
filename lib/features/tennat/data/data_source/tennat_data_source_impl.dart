import 'package:flutter_tdd/core/http/generic_http/api_names.dart';
import 'package:flutter_tdd/core/http/generic_http/generic_http.dart';
import 'package:flutter_tdd/core/http/models/http_request_model.dart';
import 'package:flutter_tdd/core/http/models/result.dart';
import 'package:flutter_tdd/features/tennat/data/data_source/tennat_data_source.dart';
import 'package:flutter_tdd/features/tennat/data/models/tennat_model/tennat_model.dart';
import 'package:injectable/injectable.dart';
@Injectable(as: TenantDataSource)
class TenantDataSourceImpl extends TenantDataSource {
  @override
  Future<MyResult<List<TenantModel>>> getTenant(bool params) async {
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.getTenant,
      responseType: ResType.list,
      requestMethod: RequestMethod.get,
      refresh: params,
      responseKey: (data) => data['data'],
      toJsonFunc: (data) {
        return List<TenantModel>.from(data.map((e)=>TenantModel.fromJson(e)));
      },
    );
        return GenericHttpImpl<List<TenantModel>>()(model);
  }
}