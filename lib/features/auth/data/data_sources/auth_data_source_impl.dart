// ignore_for_file: avoid_dynamic_calls

import 'package:flutter_tdd/core/http/generic_http/api_names.dart';
import 'package:flutter_tdd/core/http/generic_http/generic_http.dart';
import 'package:flutter_tdd/core/http/models/http_request_model.dart';
import 'package:flutter_tdd/core/http/models/result.dart';
import 'package:flutter_tdd/features/auth/data/data_sources/auth_data_source.dart';
import 'package:flutter_tdd/features/auth/data/models/user_model/user_model.dart';
import 'package:flutter_tdd/features/auth/domain/entity/login_params.dart';
import 'package:flutter_tdd/features/auth/domain/entity/qr_login_params.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: AuthDataSource)
class AuthDataSourceImpl extends AuthDataSource {
  @override
  Future<MyResult<UserModel>> login(LoginParams param) async {
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.login,
      requestMethod: RequestMethod.post,
      responseType: ResType.model,
      isFormData: true,
      requestBody: param.toJson(),
      responseKey: (data) => data['data'],
      showLoader: true,
      toJsonFunc: (json) => UserModel.fromJson(json),
    );
    return await GenericHttpImpl<UserModel>()(model);
  }

  @override
  Future<MyResult<UserModel>> loginWithQr(QrLoginParams param) async {
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.login,
      requestMethod: RequestMethod.post,
      responseType: ResType.model,
      requestBody: param.toJson(),
      responseKey: (data) => data['data'],
      isFormData: true,
      showLoader: true,
      toJsonFunc: (json) => UserModel.fromJson(json),
    );
    return await GenericHttpImpl<UserModel>()(model);
  }

  @override
  Future<MyResult<bool>> getBoolean(bool param) async {
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.getBoolean,
      responseType: ResType.type,
      requestMethod: RequestMethod.get,
      responseKey: (data) => data['data'],
      refresh: param,
    );
    return await GenericHttpImpl<bool>()(model);
  }
}
