import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/requester/requester.dart';
import 'package:flutter_tdd/features/contract/data/models/contract_model/contract_model.dart';
import 'package:flutter_tdd/features/contract/data/models/props_model/prop_model.dart';
import 'package:flutter_tdd/features/owner_properties/domain/repositories/property_repository.dart';

class PropertyRequester extends Requester<List<PropModel>> {
  List<PropModel> _listTenant = [];

  void setLoadingState() {
    loadingState();
  }

  @override
  Future<void> request({bool fromRemote = true}) async {
    var result = await getIt.get<PropertyRepository>().getProperties(fromRemote);
    print("<<<<<<<<<<<<${result.data?.length}");
    result.when(
      isSuccess: (data) {
        successState(data ?? []);
        _listTenant = data??[];
      },
      isError: (error) {
        failedState(error, () {
          request(fromRemote: fromRemote);
        });
      },
    );
  }

  void propertyFilter(String searchText) {
    final list = _listTenant.where((element) {
      final textSearch = element.areCode.toLowerCase().contains(searchText.toLowerCase().trim()) ||
          element.unitName.toLowerCase().contains(searchText.toLowerCase().trim());
      return textSearch;
    }).toList();
    successState(list);
  }
}
