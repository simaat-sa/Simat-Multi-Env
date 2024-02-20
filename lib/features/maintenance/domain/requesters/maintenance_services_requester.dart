import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/requester/requester.dart';
import 'package:flutter_tdd/features/maintenance/data/models/maintenance_services_model/maintenance_services_model.dart';
import 'package:flutter_tdd/features/maintenance/domain/repositories/maintenance_repository.dart';

class MaintenanceServicesRequester extends Requester<List<MaintenanceServicesModel>> {
  void setLoadingState() {
    loadingState();
  }

  @override
  Future<void> request({bool fromRemote = true}) async {
    var result = await getIt.get<MaintenanceRepository>().getMaintenanceServices(fromRemote);
    result.when(
      isSuccess: (data) {
        successState(data ?? []);
      },
      isError: (error) {
        failedState(error, () {
          request(fromRemote: fromRemote);
        });
      },
    );
  }
}
