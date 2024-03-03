import 'package:flutter_tdd/core/http/generic_http/api_names.dart';
import 'package:flutter_tdd/core/http/generic_http/generic_http.dart';
import 'package:flutter_tdd/core/http/models/http_request_model.dart';
import 'package:flutter_tdd/core/http/models/result.dart';
import 'package:flutter_tdd/features/contract/data/models/contract_model/contract_model.dart';
import 'package:flutter_tdd/features/contract/data/models/props_model/prop_model.dart';
import 'package:injectable/injectable.dart';

import 'property_data_source.dart';

@Injectable(as: PropertyDataSource)
class PropertyDataSourceImpl extends PropertyDataSource {
  @override
  Future<MyResult<List<PropModel>>> getProperties(bool params) async {
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.getProperties,
      responseType: ResType.list,
      requestMethod: RequestMethod.get,
      refresh: params,
      responseKey: (data) => data['data'][0][0],
      toJsonFunc: (json) {
        return List<PropModel>.from(json.map((e) => PropModel.fromJson(e)));
      },
    );
    var result = await GenericHttpImpl<List<PropModel>>()(model);
    print(">>>>>>>vvvvv>>>>>>>>>$result");
    return result;

  }
}
