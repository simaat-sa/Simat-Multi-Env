import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/requester/requester.dart';
import 'package:flutter_tdd/features/owner_properties/data/models/prop_details_model.dart';
import 'package:flutter_tdd/features/owner_properties/domain/entity/property_details_params.dart';
import 'package:flutter_tdd/features/owner_properties/domain/repositories/property_repository.dart';

class PropDetailsRequester extends Requester<PropDetailsModel?> {
  late PropertyDetailsParams params;

  PropDetailsRequester(this.params){
    request(fromRemote: false);
    request();
  }

  void setLoadingState() {
    loadingState();
  }

  @override
  Future<void> request({bool fromRemote = true}) async {
    loadingState();
    params.refresh = fromRemote;
    var result = await getIt<PropertyRepository>().getPropDetailsModel(params);
    result.when(
      isSuccess: (data) {
        successState(data);
      },
      isError: (error) {
        failedState(error, () {
          request(fromRemote: fromRemote);
        });
      },
    );
  }
}
