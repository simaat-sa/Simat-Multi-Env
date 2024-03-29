// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter_tdd/core/helpers/firebase_analytics_helper.dart'
    as _i17;
import 'package:flutter_tdd/core/helpers/global_context.dart' as _i20;
import 'package:flutter_tdd/core/helpers/global_notification.dart' as _i21;
import 'package:flutter_tdd/core/helpers/loading_helper.dart' as _i27;
import 'package:flutter_tdd/core/helpers/services/file_service.dart' as _i3;
import 'package:flutter_tdd/core/helpers/services/location_service.dart'
    as _i28;
import 'package:flutter_tdd/core/helpers/services/psermission_services.dart'
    as _i39;
import 'package:flutter_tdd/core/helpers/share_services.dart' as _i46;
import 'package:flutter_tdd/core/helpers/shared_pref_service.dart' as _i47;
import 'package:flutter_tdd/core/helpers/utilities.dart' as _i52;
import 'package:flutter_tdd/core/http/dio_helper/actions/delete.dart' as _i14;
import 'package:flutter_tdd/core/http/dio_helper/actions/get.dart' as _i19;
import 'package:flutter_tdd/core/http/dio_helper/actions/patch.dart' as _i38;
import 'package:flutter_tdd/core/http/dio_helper/actions/post.dart' as _i40;
import 'package:flutter_tdd/core/http/dio_helper/actions/put.dart' as _i45;
import 'package:flutter_tdd/core/http/dio_helper/utils/dio_header.dart' as _i15;
import 'package:flutter_tdd/core/http/dio_helper/utils/dio_options.dart'
    as _i16;
import 'package:flutter_tdd/core/http/dio_helper/utils/handle_errors.dart'
    as _i22;
import 'package:flutter_tdd/core/http/dio_helper/utils/handle_json_response.dart'
    as _i23;
import 'package:flutter_tdd/core/http/dio_helper/utils/handle_request_body.dart'
    as _i24;
import 'package:flutter_tdd/core/http/generic_http/generic_http.dart' as _i18;
import 'package:flutter_tdd/core/network/network_info.dart' as _i33;
import 'package:flutter_tdd/features/auth/data/data_sources/auth_data_source.dart'
    as _i4;
import 'package:flutter_tdd/features/auth/data/data_sources/auth_data_source_impl.dart'
    as _i5;
import 'package:flutter_tdd/features/auth/data/repositories/auth_repository_impl.dart'
    as _i7;
import 'package:flutter_tdd/features/auth/domain/repositories/auth_repository.dart'
    as _i6;
import 'package:flutter_tdd/features/base/data/data_sources/home_remote_data_source.dart'
    as _i25;
import 'package:flutter_tdd/features/base/data/data_sources/impl_home_remote_data_source.dart'
    as _i26;
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
    as _i29;
import 'package:flutter_tdd/features/maintenance/data/data_source/maintenance_data_source_impl.dart'
    as _i30;
import 'package:flutter_tdd/features/maintenance/data/repositories/maintenance_repository_impl.dart'
    as _i32;
import 'package:flutter_tdd/features/maintenance/domain/repositories/maintenance_repository.dart'
    as _i31;
import 'package:flutter_tdd/features/notification/data/data_source/notices_data_source.dart'
    as _i34;
import 'package:flutter_tdd/features/notification/data/data_source/notices_data_source_impl.dart'
    as _i35;
import 'package:flutter_tdd/features/notification/data/repositories/notices_repository_impl.dart'
    as _i37;
import 'package:flutter_tdd/features/notification/domain/repositories/notices_repository.dart'
    as _i36;
import 'package:flutter_tdd/features/owner_properties/data/data_source/property_data_source.dart'
    as _i41;
import 'package:flutter_tdd/features/owner_properties/data/data_source/property_data_source_impl.dart'
    as _i42;
import 'package:flutter_tdd/features/owner_properties/data/repositories/property_repository_impl.dart'
    as _i44;
import 'package:flutter_tdd/features/owner_properties/domain/repositories/property_repository.dart'
    as _i43;
import 'package:flutter_tdd/features/slide_menu/data/data_source/slide_menu_data_source.dart'
    as _i48;
import 'package:flutter_tdd/features/slide_menu/data/data_source/slide_menu_data_source_impl.dart'
    as _i49;
import 'package:flutter_tdd/features/slide_menu/data/repositories/slide_menu_repository_impl.dart'
    as _i51;
import 'package:flutter_tdd/features/slide_menu/domain/repositories/slide_menu_repository.dart'
    as _i50;
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
    gh.lazySingleton<_i15.DioHeader>(() => _i15.DioHeader());
    gh.lazySingleton<_i16.DioOptions>(() => _i16.DioOptions());
    gh.lazySingleton<_i17.FirebaseAnalyticsHelper>(
        () => _i17.FirebaseAnalyticsHelper());
    gh.lazySingleton<_i18.GenericHttpImpl<dynamic>>(
        () => _i18.GenericHttpImpl<dynamic>());
    gh.lazySingleton<_i19.Get>(() => _i19.Get());
    gh.lazySingleton<_i20.GlobalContext>(() => _i20.GlobalContext());
    gh.lazySingleton<_i21.GlobalNotification>(() => _i21.GlobalNotification());
    gh.lazySingleton<_i22.HandleErrors>(() => _i22.HandleErrors());
    gh.lazySingleton<_i23.HandleJsonResponse<dynamic>>(
        () => _i23.HandleJsonResponse<dynamic>());
    gh.lazySingleton<_i24.HandleRequestBody>(() => _i24.HandleRequestBody());
    gh.factory<_i25.HomeRemoteDataSource>(
        () => _i26.ImplHomeRemoteDataSource());
    gh.singleton<_i27.LoadingHelper>(_i27.LoadingHelper());
    gh.factory<_i28.LocationService>(() => _i28.LocationService());
    gh.factory<_i29.MaintenanceDataSource>(
        () => _i30.MaintenanceDataSourceImpl());
    gh.factory<_i31.MaintenanceRepository>(() => _i32.ContractRepositoryImpl());
    gh.lazySingleton<_i33.NetworkInfoImpl>(() => _i33.NetworkInfoImpl());
    gh.factory<_i34.NoticesDataSource>(() => _i35.NoticesDataSourceImpl());
    gh.factory<_i36.NoticesRepository>(() => _i37.NoticesRepositoryImpl());
    gh.lazySingleton<_i38.Patch>(() => _i38.Patch());
    gh.factory<_i39.PermissionServices>(() => _i39.PermissionServices());
    gh.lazySingleton<_i40.Post>(() => _i40.Post());
    gh.factory<_i41.PropertyDataSource>(() => _i42.PropertyDataSourceImpl());
    gh.factory<_i43.PropertyRepository>(() => _i44.PropertyRepositoryImpl());
    gh.lazySingleton<_i45.Put>(() => _i45.Put());
    gh.factory<_i46.ShareServices>(() => _i46.ShareServices());
    gh.lazySingleton<_i47.SharedPrefService>(() => _i47.SharedPrefService());
    gh.factory<_i48.SlideMenuDataSource>(() => _i49.SlidMenuDataSourceImpl());
    gh.factory<_i50.SlideMenuRepository>(() => _i51.SlideMenuRepositoryImpl());
    gh.lazySingleton<_i52.Utilities>(() => _i52.Utilities());
    return this;
  }
}
