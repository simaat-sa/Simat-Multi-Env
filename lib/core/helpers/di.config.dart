// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter_tdd/core/helpers/file_service.dart' as _i3;
import 'package:flutter_tdd/core/helpers/firebase_analytics_helper.dart'
    as _i13;
import 'package:flutter_tdd/core/helpers/global_context.dart' as _i16;
import 'package:flutter_tdd/core/helpers/global_notification.dart' as _i17;
import 'package:flutter_tdd/core/helpers/loading_helper.dart' as _i23;
import 'package:flutter_tdd/core/helpers/location_service.dart' as _i24;
import 'package:flutter_tdd/core/helpers/psermission_services.dart' as _i27;
import 'package:flutter_tdd/core/helpers/share_services.dart' as _i30;
import 'package:flutter_tdd/core/helpers/shared_pref_service.dart' as _i31;
import 'package:flutter_tdd/core/helpers/utilities.dart' as _i36;
import 'package:flutter_tdd/core/http/dio_helper/actions/delete.dart' as _i10;
import 'package:flutter_tdd/core/http/dio_helper/actions/get.dart' as _i15;
import 'package:flutter_tdd/core/http/dio_helper/actions/patch.dart' as _i26;
import 'package:flutter_tdd/core/http/dio_helper/actions/post.dart' as _i28;
import 'package:flutter_tdd/core/http/dio_helper/actions/put.dart' as _i29;
import 'package:flutter_tdd/core/http/dio_helper/utils/dio_header.dart' as _i11;
import 'package:flutter_tdd/core/http/dio_helper/utils/dio_options.dart'
    as _i12;
import 'package:flutter_tdd/core/http/dio_helper/utils/handle_errors.dart'
    as _i18;
import 'package:flutter_tdd/core/http/dio_helper/utils/handle_json_response.dart'
    as _i19;
import 'package:flutter_tdd/core/http/dio_helper/utils/handle_request_body.dart'
    as _i20;
import 'package:flutter_tdd/core/http/generic_http/generic_http.dart' as _i14;
import 'package:flutter_tdd/core/network/network_info.dart' as _i25;
import 'package:flutter_tdd/features/auth/data/data_sources/auth_data_source.dart'
    as _i4;
import 'package:flutter_tdd/features/auth/data/data_sources/auth_data_source_impl.dart'
    as _i5;
import 'package:flutter_tdd/features/auth/data/repositories/auth_repository_impl.dart'
    as _i7;
import 'package:flutter_tdd/features/auth/domain/repositories/auth_repository.dart'
    as _i6;
import 'package:flutter_tdd/features/base/data/data_sources/home_remote_data_source.dart'
    as _i21;
import 'package:flutter_tdd/features/base/data/data_sources/impl_home_remote_data_source.dart'
    as _i22;
import 'package:flutter_tdd/features/base/data/repositories/impl_base_repository.dart'
    as _i9;
import 'package:flutter_tdd/features/base/domain/repositories/base_repository.dart'
    as _i8;
import 'package:flutter_tdd/features/tennat/data/data_source/tennat_data_source.dart'
    as _i32;
import 'package:flutter_tdd/features/tennat/data/data_source/tennat_data_source_impl.dart'
    as _i33;
import 'package:flutter_tdd/features/tennat/data/repositories/tennat_repository_impl.dart'
    as _i35;
import 'package:flutter_tdd/features/tennat/domain/repositories/tennat_repository.dart'
    as _i34;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.factory<_i3.AppFileService>(() => _i3.AppFileService());
    gh.factory<_i4.AuthDataSource>(() => _i5.AuthDataSourceImpl());
    gh.factory<_i6.AuthRepository>(() => _i7.AuthRepositoryImpl());
    gh.factory<_i8.BaseRepository>(() => _i9.ImplBaseRepository());
    gh.lazySingleton<_i10.Delete>(() => _i10.Delete());
    gh.lazySingleton<_i11.DioHeader>(() => _i11.DioHeader());
    gh.lazySingleton<_i12.DioOptions>(() => _i12.DioOptions());
    gh.lazySingleton<_i13.FirebaseAnalyticsHelper>(
        () => _i13.FirebaseAnalyticsHelper());
    gh.lazySingleton<_i14.GenericHttpImpl<dynamic>>(
        () => _i14.GenericHttpImpl<dynamic>());
    gh.lazySingleton<_i15.Get>(() => _i15.Get());
    gh.lazySingleton<_i16.GlobalContext>(() => _i16.GlobalContext());
    gh.lazySingleton<_i17.GlobalNotification>(() => _i17.GlobalNotification());
    gh.lazySingleton<_i18.HandleErrors>(() => _i18.HandleErrors());
    gh.lazySingleton<_i19.HandleJsonResponse<dynamic>>(
        () => _i19.HandleJsonResponse<dynamic>());
    gh.lazySingleton<_i20.HandleRequestBody>(() => _i20.HandleRequestBody());
    gh.factory<_i21.HomeRemoteDataSource>(
        () => _i22.ImplHomeRemoteDataSource());
    gh.singleton<_i23.LoadingHelper>(_i23.LoadingHelper());
    gh.factory<_i24.LocationService>(() => _i24.LocationService());
    gh.lazySingleton<_i25.NetworkInfoImpl>(() => _i25.NetworkInfoImpl());
    gh.lazySingleton<_i26.Patch>(() => _i26.Patch());
    gh.factory<_i27.PermissionServices>(() => _i27.PermissionServices());
    gh.lazySingleton<_i28.Post>(() => _i28.Post());
    gh.lazySingleton<_i29.Put>(() => _i29.Put());
    gh.factory<_i30.ShareServices>(() => _i30.ShareServices());
    gh.lazySingleton<_i31.SharedPrefService>(() => _i31.SharedPrefService());
    gh.factory<_i32.TenantDataSource>(() => _i33.TenantDataSourceImpl());
    gh.factory<_i34.TenantRepository>(() => _i35.TenantRepositoryImpl());
    gh.lazySingleton<_i36.Utilities>(() => _i36.Utilities());
    return this;
  }
}
