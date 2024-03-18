import 'package:flutter_tdd/core/http/models/result.dart';
import 'package:flutter_tdd/core/models/paging_model/paging_model.dart';
import 'package:flutter_tdd/features/contract/data/models/props_model/prop_model.dart';
import 'package:flutter_tdd/features/owner_properties/data/models/filter_property_model/filter_property_model.dart';
import 'package:flutter_tdd/features/owner_properties/domain/entity/owner_properties_params.dart';


abstract class PropertyDataSource {
  Future<MyResult<PagingModel<PropModel>>> getProperties(OwnerPropertiesParams params);
  Future<MyResult<FilterPropertyModel>> getFilterProperties(bool params);
}