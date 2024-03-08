import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/http/models/result.dart';
import 'package:flutter_tdd/core/models/model_to_domain/model_to_domain.dart';
import 'package:flutter_tdd/core/models/paging_model/paging_model.dart';
import 'package:flutter_tdd/features/contract/data/models/contract_model/contract_model.dart';
import 'package:flutter_tdd/features/contract/data/models/props_model/prop_model.dart';
import 'package:flutter_tdd/features/owner_properties/data/data_source/property_data_source.dart';
import 'package:flutter_tdd/features/owner_properties/domain/entity/owner_properties_params.dart';
import 'package:flutter_tdd/features/owner_properties/domain/repositories/property_repository.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: PropertyRepository)
class PropertyRepositoryImpl extends PropertyRepository with ModelToDomainResult {
  var dataSource = getIt.get<PropertyDataSource>();
  @override
  Future<MyResult<PagingModel<PropModel>>> getProperties(OwnerPropertiesParams params) async {
    return await dataSource.getProperties(params);
  }
}
