import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/http/models/result.dart';
import 'package:flutter_tdd/core/models/model_to_domain/model_to_domain.dart';
import 'package:flutter_tdd/features/notification/data/data_source/notices_data_source.dart';
import 'package:flutter_tdd/features/notification/data/models/notices_model/notices_model.dart';
import 'package:flutter_tdd/features/notification/domain/repositories/notices_repository.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: NoticesRepository)
class NoticesRepositoryImpl extends NoticesRepository with ModelToDomainResult {
  var dataSource = getIt.get<NoticesDataSource>();
  @override
  Future<MyResult<List<NoticesModel>>> getNotices(bool params) async {
    return await dataSource.getNotices(params);
  }
}
