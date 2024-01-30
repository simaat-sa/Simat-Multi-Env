import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/requester/requester.dart';
import 'package:flutter_tdd/features/auth/data/models/user_model/user_model.dart';
// import 'package:flutter_tdd/features/auth/domain/repositories/auth_repository.dart';
//
// class ProfileRequester extends Requester<UserModel> {
//   final int userId;
//
//   ProfileRequester({required this.userId});
//   @override
//   Future<void> request({bool fromRemote = true}) async {
//     if (hasNoData) {
//       loadingState();
//     }
//     var result = await getIt.get<AuthRepository>().setLogin(fromRemote);
//     result.when(
//       isSuccess: (data) {
//         successState(data!);
//       },
//       isError: (error) {
//         failedState(error, () => request(fromRemote: fromRemote));
//       },
//     );
//   }
//
//
//
//
// }
