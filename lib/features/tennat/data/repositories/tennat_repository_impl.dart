import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/http/models/result.dart';
import 'package:flutter_tdd/core/models/model_to_domain/model_to_domain.dart';
import 'package:flutter_tdd/features/tennat/data/data_source/tennat_data_source.dart';
import 'package:flutter_tdd/features/tennat/data/models/tennat_model/tennat_model.dart';
import 'package:flutter_tdd/features/tennat/domain/models/tennat.dart';
import 'package:flutter_tdd/features/tennat/domain/repositories/tennat_repository.dart';
import 'package:injectable/injectable.dart';
@Injectable(as:TenantRepository)
class TenantRepositoryImpl extends TenantRepository with ModelToDomainResult{
  @override
  Future<MyResult<List<Tenant>>> getTenant(bool params)async {
    var result = await getIt.get<TenantDataSource>().getTenant(params);
    return toDomainResultList<Tenant,TenantModel>(result);
  }

}