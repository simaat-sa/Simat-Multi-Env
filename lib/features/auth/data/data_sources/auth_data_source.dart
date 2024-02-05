import 'package:flutter_tdd/core/http/models/result.dart';
import 'package:flutter_tdd/core/usecases/use_case.dart';
import 'package:flutter_tdd/features/auth/data/models/user_model/user_model.dart';
import 'package:flutter_tdd/features/auth/domain/entity/login_params.dart';

abstract class AuthDataSource {

  Future<MyResult<UserModel>> login(LoginParams param);
  Future<MyResult<UserModel>> loginWithQr(String param);


}