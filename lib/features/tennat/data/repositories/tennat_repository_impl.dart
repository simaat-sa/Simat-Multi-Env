import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/http/models/result.dart';
import 'package:flutter_tdd/core/models/model_to_domain/model_to_domain.dart';
import 'package:flutter_tdd/features/tennat/data/data_source/tennat_data_source.dart';
import 'package:flutter_tdd/features/tennat/data/models/props_model/prop_model.dart';
import 'package:flutter_tdd/features/tennat/data/models/tennat_model/tennat_model.dart';
import 'package:flutter_tdd/features/tennat/domain/repositories/tennat_repository.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: TenantRepository)
class TenantRepositoryImpl extends TenantRepository with ModelToDomainResult {
  final dataSource = getIt.get<TenantDataSource>();

  @override
  Future<MyResult<List<TenantModel>>> getTenant(bool params) async {
    return await dataSource.getTenant(params);
  }

  @override
  Future<MyResult<List<PropModel>>> getProps(bool params) async {
    return await dataSource.getProps(params);
  }

  @override
  Future<MyResult<List<PropModel>>> getPropsUnites() async {
    return await dataSource.getPropsUnites();
  }
}
