// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter_tdd/core/bloc/device_cubit/device_cubit.dart' as _i15;
import 'package:flutter_tdd/core/helpers/firebase_analytics_helper.dart'
    as _i18;
import 'package:flutter_tdd/core/helpers/global_context.dart' as _i21;
import 'package:flutter_tdd/core/helpers/global_notification.dart' as _i22;
import 'package:flutter_tdd/core/helpers/loading_helper.dart' as _i28;
import 'package:flutter_tdd/core/helpers/services/file_service.dart' as _i3;
import 'package:flutter_tdd/core/helpers/services/location_service.dart'
    as _i29;
import 'package:flutter_tdd/core/helpers/services/psermission_services.dart'
    as _i40;
import 'package:flutter_tdd/core/helpers/share_services.dart' as _i43;
import 'package:flutter_tdd/core/helpers/shared_pref_service.dart' as _i44;
import 'package:flutter_tdd/core/helpers/utilities.dart' as _i49;
import 'package:flutter_tdd/core/http/dio_helper/actions/delete.dart' as _i14;
import 'package:flutter_tdd/core/http/dio_helper/actions/get.dart' as _i20;
import 'package:flutter_tdd/core/http/dio_helper/actions/patch.dart' as _i39;
import 'package:flutter_tdd/core/http/dio_helper/actions/post.dart' as _i41;
import 'package:flutter_tdd/core/http/dio_helper/actions/put.dart' as _i42;
import 'package:flutter_tdd/core/http/dio_helper/utils/dio_header.dart' as _i16;
import 'package:flutter_tdd/core/http/dio_helper/utils/dio_options.dart'
    as _i17;
import 'package:flutter_tdd/core/http/dio_helper/utils/handle_errors.dart'
    as _i23;
import 'package:flutter_tdd/core/http/dio_helper/utils/handle_json_response.dart'
    as _i24;
import 'package:flutter_tdd/core/http/dio_helper/utils/handle_request_body.dart'
    as _i25;
import 'package:flutter_tdd/core/http/generic_http/generic_http.dart' as _i19;
import 'package:flutter_tdd/core/network/network_info.dart' as _i34;
import 'package:flutter_tdd/features/auth/data/data_sources/auth_data_source.dart'
    as _i4;
import 'package:flutter_tdd/features/auth/data/data_sources/auth_data_source_impl.dart'
    as _i5;
import 'package:flutter_tdd/features/auth/data/repositories/auth_repository_impl.dart'
    as _i7;
import 'package:flutter_tdd/features/auth/domain/repositories/auth_repository.dart'
    as _i6;
import 'package:flutter_tdd/features/base/data/data_sources/home_remote_data_source.dart'
    as _i26;
import 'package:flutter_tdd/features/base/data/data_sources/impl_home_remote_data_source.dart'
    as _i27;
import 'package:flutter_tdd/features/base/data/repositories/impl_base_repository.dart'
    as _i9;
import 'package:flutter_tdd/features/base/domain/repositories/base_repository.dart'
    as _i8;
import 'package:flutter_tdd/features/contract/data/data_source/contract_data_source.dart'
    as _i10;
import 'package:flutter_tdd/features/contract/data/data_source/contract_data_source_impl.dart'
    as _i11;
import 'package:flutter_tdd/features/contract/data/repositories/contract_repository_impl.dart'
    as _i13;
import 'package:flutter_tdd/features/contract/domain/repositories/contract_repository.dart'
    as _i12;
import 'package:flutter_tdd/features/maintenance/data/data_source/maintenance_data_source.dart'
    as _i30;
import 'package:flutter_tdd/features/maintenance/data/data_source/maintenance_data_source_impl.dart'
    as _i31;
import 'package:flutter_tdd/features/maintenance/data/repositories/maintenance_repository_impl.dart'
    as _i33;
import 'package:flutter_tdd/features/maintenance/domain/repositories/maintenance_repository.dart'
    as _i32;
import 'package:flutter_tdd/features/notification/data/data_source/notices_data_source.dart'
    as _i35;
import 'package:flutter_tdd/features/notification/data/data_source/notices_data_source_impl.dart'
    as _i36;
import 'package:flutter_tdd/features/notification/data/repositories/notices_repository_impl.dart'
    as _i38;
import 'package:flutter_tdd/features/notification/domain/repositories/notices_repository.dart'
    as _i37;
import 'package:flutter_tdd/features/slide_menu/data/data_source/slide_menu_data_source.dart'
    as _i45;
import 'package:flutter_tdd/features/slide_menu/data/data_source/slide_menu_data_source_impl.dart'
    as _i46;
import 'package:flutter_tdd/features/slide_menu/data/repositories/slide_menu_repository_impl.dart'
    as _i48;
import 'package:flutter_tdd/features/slide_menu/domain/repositories/slide_menu_repository.dart'
    as _i47;
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
    gh.factory<_i10.ContractDataSource>(() => _i11.ContractDataSourceImpl());
    gh.factory<_i12.ContractRepository>(() => _i13.ContractRepositoryImpl());
    gh.lazySingleton<_i14.Delete>(() => _i14.Delete());
    gh.lazySingleton<_i15.DeviceCubit>(() => _i15.DeviceCubit());
    gh.lazySingleton<_i16.DioHeader>(() => _i16.DioHeader());
    gh.lazySingleton<_i17.DioOptions>(() => _i17.DioOptions());
    gh.lazySingleton<_i18.FirebaseAnalyticsHelper>(
        () => _i18.FirebaseAnalyticsHelper());
    gh.lazySingleton<_i19.GenericHttpImpl<dynamic>>(
        () => _i19.GenericHttpImpl<dynamic>());
    gh.lazySingleton<_i20.Get>(() => _i20.Get());
    gh.lazySingleton<_i21.GlobalContext>(() => _i21.GlobalContext());
    gh.lazySingleton<_i22.GlobalNotification>(() => _i22.GlobalNotification());
    gh.lazySingleton<_i23.HandleErrors>(() => _i23.HandleErrors());
    gh.lazySingleton<_i24.HandleJsonResponse<dynamic>>(
        () => _i24.HandleJsonResponse<dynamic>());
    gh.lazySingleton<_i25.HandleRequestBody>(() => _i25.HandleRequestBody());
    gh.factory<_i26.HomeRemoteDataSource>(
        () => _i27.ImplHomeRemoteDataSource());
    gh.singleton<_i28.LoadingHelper>(_i28.LoadingHelper());
    gh.factory<_i29.LocationService>(() => _i29.LocationService());
    gh.factory<_i30.MaintenanceDataSource>(
        () => _i31.MaintenanceDataSourceImpl());
    gh.factory<_i32.MaintenanceRepository>(() => _i33.ContractRepositoryImpl());
    gh.lazySingleton<_i34.NetworkInfoImpl>(() => _i34.NetworkInfoImpl());
    gh.factory<_i35.NoticesDataSource>(() => _i36.NoticesDataSourceImpl());
    gh.factory<_i37.NoticesRepository>(() => _i38.NoticesRepositoryImpl());
    gh.lazySingleton<_i39.Patch>(() => _i39.Patch());
    gh.factory<_i40.PermissionServices>(() => _i40.PermissionServices());
    gh.lazySingleton<_i41.Post>(() => _i41.Post());
    gh.lazySingleton<_i42.Put>(() => _i42.Put());
    gh.factory<_i43.ShareServices>(() => _i43.ShareServices());
    gh.lazySingleton<_i44.SharedPrefService>(() => _i44.SharedPrefService());
    gh.factory<_i45.SlideMenuDataSource>(() => _i46.SlidMenuDataSourceImpl());
    gh.factory<_i47.SlideMenuRepository>(() => _i48.SlideMenuRepositoryImpl());
    gh.lazySingleton<_i49.Utilities>(() => _i49.Utilities());
    return this;
  }
}
