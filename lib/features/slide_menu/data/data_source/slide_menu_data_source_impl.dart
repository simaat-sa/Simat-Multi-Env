import 'package:flutter_tdd/core/enums/log_out_enum.dart';
import 'package:flutter_tdd/core/http/generic_http/api_names.dart';
import 'package:flutter_tdd/core/http/generic_http/generic_http.dart';
import 'package:flutter_tdd/core/http/models/http_request_model.dart';
import 'package:flutter_tdd/core/http/models/result.dart';
import 'package:flutter_tdd/core/usecases/use_case.dart';
import 'package:flutter_tdd/features/slide_menu/data/data_source/slide_menu_data_source.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: SlideMenuDataSource)
class SlidMenuDataSourceImpl extends SlideMenuDataSource {
  @override
  Future<MyResult<String>> setLogOut(NoParams params) async {
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.logOut,
      responseType: ResType.type,
      requestMethod: RequestMethod.post,
      responseKey: (data) => data['status'],
      showLoader: true,
    );
    return await GenericHttpImpl<String>()(model);
  }
}
