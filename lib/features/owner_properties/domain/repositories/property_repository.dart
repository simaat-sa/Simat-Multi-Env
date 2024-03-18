import 'package:flutter_tdd/core/http/models/result.dart';
import 'package:flutter_tdd/core/models/paging_model/paging_model.dart';
import 'package:flutter_tdd/features/contract/data/models/contract_model/contract_model.dart';
import 'package:flutter_tdd/features/contract/data/models/props_model/prop_model.dart';
import 'package:flutter_tdd/features/owner_properties/data/models/filter_property_model/filter_property_model.dart';
import 'package:flutter_tdd/features/owner_properties/data/models/prop_details_model.dart';
import 'package:flutter_tdd/features/owner_properties/domain/entity/owner_properties_params.dart';
import 'package:flutter_tdd/features/owner_properties/domain/entity/property_details_params.dart';

abstract class PropertyRepository{
  Future<MyResult<PagingModel<PropModel>>> getProperties(OwnerPropertiesParams params);
  Future<MyResult<FilterPropertyModel>> getFilterProperties(bool params);
  Future<MyResult<PropDetailsModel>> getPropDetailsModel(PropertyDetailsParams params);
  Future<MyResult<List<ContractModel>>> getPropDetailsUnit(PropertyDetailsParams params);
}