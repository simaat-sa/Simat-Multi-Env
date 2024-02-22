import 'package:flutter_tdd/core/http/generic_http/api_names.dart';
import 'package:flutter_tdd/core/http/generic_http/generic_http.dart';
import 'package:flutter_tdd/core/http/models/http_request_model.dart';
import 'package:flutter_tdd/core/http/models/result.dart';
import 'package:flutter_tdd/features/notification/data/models/notices_model/notices_model.dart';
import 'package:injectable/injectable.dart';

import 'notices_data_source.dart';

@Injectable(as: NoticesDataSource)
class NoticesDataSourceImpl extends NoticesDataSource {
  @override
  Future<MyResult<List<NoticesModel>>> getNotices(bool params) async {
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.getNotices,
      responseType: ResType.list,
      requestMethod: RequestMethod.get,
      refresh: params,
      responseKey: (data) => data['data'],
      toJsonFunc: (data) {
        return List<NoticesModel>.from(data.map((e) => NoticesModel.fromJson(e)));
      },
    );
    return await GenericHttpImpl<List<NoticesModel>>()(model);
  }
}
