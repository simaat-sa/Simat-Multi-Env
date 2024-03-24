import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tdd/core/bloc/device_cubit/device_cubit.dart';
import 'package:flutter_tdd/core/constants/app_config.dart';
import 'package:flutter_tdd/core/constants/app_constants.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/helpers/global_context.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class DioHeader {
  Map<String, String> call() {
    String? token = AppConfig.instance.token;
    BuildContext context = getIt<GlobalContext>().context();
    var lang = context.read<DeviceCubit>().state.model.locale.languageCode;
    return {
      "Content-Type": "application/json",
      'Accept': 'application/json',
      'Authorization': '${ApplicationConstants.headerBearer} $token',
      "Accept-Language": lang
    };
  }
}
