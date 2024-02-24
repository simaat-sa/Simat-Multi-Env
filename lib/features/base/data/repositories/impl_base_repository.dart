import 'package:flutter_tdd/core/http/models/result.dart';
import 'package:flutter_tdd/core/models/model_to_domain/model_to_domain.dart';
import 'package:flutter_tdd/features/auth/data/models/user_model/user_model.dart';
import 'package:flutter_tdd/features/base/domain/repositories/base_repository.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: BaseRepository)
class ImplBaseRepository extends BaseRepository with ModelToDomainResult {
  @override
  Future<MyResult<UserModel>> setLogin(bool param) {
    // TODO: implement setLogin
    throw UnimplementedError();
  }
}
