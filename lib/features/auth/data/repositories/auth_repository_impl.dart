import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/http/models/result.dart';
import 'package:flutter_tdd/core/models/model_to_domain/model_to_domain.dart';
import 'package:flutter_tdd/core/usecases/use_case.dart';
import 'package:flutter_tdd/features/auth/data/data_sources/auth_data_source.dart';
import 'package:flutter_tdd/features/auth/data/models/user_model/user_model.dart';
import 'package:flutter_tdd/features/auth/domain/entity/login_params.dart';
import 'package:flutter_tdd/features/auth/domain/entity/qr_login_params.dart';
import 'package:flutter_tdd/features/auth/domain/repositories/auth_repository.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: AuthRepository)
class AuthRepositoryImpl extends AuthRepository with ModelToDomainResult {
  @override
  Future<MyResult<UserModel>> login(LoginParams param) async {
    return await getIt.get<AuthDataSource>().login(param);
  }

  @override
  Future<MyResult<UserModel>> loginWithQr(QrLoginParams param) async {
    return await getIt.get<AuthDataSource>().loginWithQr(param);
  }

  @override
  Future<MyResult<bool>> getBoolean(bool param)async {
    return await getIt.get<AuthDataSource>().getBoolean(param);
  }
}
