

import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/requester/requester.dart';
import 'package:flutter_tdd/features/owner_properties/data/models/filter_property_model/filter_property_model.dart';
import 'package:flutter_tdd/features/owner_properties/domain/repositories/property_repository.dart';

class FilterPropertyRequester extends Requester<FilterPropertyModel>{
  @override
  Future<void> request({bool fromRemote = true}) async {
   if(hasNoData){
     loadingState();
   }
   var result = await getIt.get<PropertyRepository>().getFilterProperties(fromRemote);

   result.when(
       isSuccess: (data) {
         return successState(data!);
       },
       isError: (error) {
         return failedState(
           error,() => request() ,
         );
       },);
  }

  void refresh(){
    successState(data!,false);
  }

}