import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/requester/requester.dart';
import 'package:flutter_tdd/features/tennat/domain/models/tennat.dart';
import 'package:flutter_tdd/features/tennat/domain/repositories/tennat_repository.dart';

class TennatRequester extends Requester<List<Tennat>> {
  @override
  Future<void> request({bool fromRemote = true}) async {
    var result = await getIt.get<TennatRepository>().getTennat(fromRemote);
    result.when(
      isSuccess: (data) {
        return data;
      },
      isError: (error) {
        return error.message;
      },
    );
  }
}
