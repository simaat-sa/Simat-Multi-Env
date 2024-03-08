import 'package:flutter_tdd/core/http/generic_http/api_names.dart';
import 'package:flutter_tdd/core/http/generic_http/generic_http.dart';
import 'package:flutter_tdd/core/http/models/http_request_model.dart';
import 'package:flutter_tdd/core/http/models/result.dart';
import 'package:flutter_tdd/core/models/paging_model/paging_model.dart';
import 'package:flutter_tdd/features/contract/data/models/props_model/prop_model.dart';
import 'package:flutter_tdd/features/owner_properties/domain/entity/owner_properties_params.dart';
import 'package:injectable/injectable.dart';

import 'property_data_source.dart';

@Injectable(as: PropertyDataSource)
class PropertyDataSourceImpl extends PropertyDataSource {
  @override
  Future<MyResult<PagingModel<PropModel>>> getProperties(OwnerPropertiesParams params) async {
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.ownerPropUnits(params.header()),
      responseType: ResType.model,
      requestMethod: RequestMethod.get,
      refresh: params.refresh,
      responseKey: (data) => data,
      toJsonFunc: (json) {
        return PagingModel<PropModel>.fromJson(
          json,
          (obj) => PropModel.fromJson(obj),
        );
      },
    );
    var result = await GenericHttpImpl<PagingModel<PropModel>>()(model);
    return result;
  }
}
