import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/http/models/result.dart';
import 'package:flutter_tdd/core/models/model_to_domain/model_to_domain.dart';
import 'package:flutter_tdd/core/usecases/use_case.dart';
import 'package:flutter_tdd/features/slide_menu/data/data_source/slide_menu_data_source.dart';
import 'package:flutter_tdd/features/slide_menu/domain/repositories/slide_menu_repository.dart';
import 'package:injectable/injectable.dart';
@Injectable(as: SlideMenuRepository)
class SlideMenuRepositoryImpl extends SlideMenuRepository with ModelToDomainResult{
  var dataSource = getIt<SlideMenuDataSource>();
  @override
  Future<MyResult<String>> setLogOut(NoParams params)async {
    return await dataSource.setLogOut(params);
  }
  
}