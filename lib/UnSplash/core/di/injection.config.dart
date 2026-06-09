// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:connectivity_plus/connectivity_plus.dart' as _i3;
import 'package:dio/dio.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:isar/isar.dart' as _i7;
import 'package:state_magement/UnSplash/common/bloc/network_cubit/network_cubit.dart'
    as _i11;
import 'package:state_magement/UnSplash/common/network/network_monitor.dart'
    as _i9;
import 'package:state_magement/UnSplash/common/util/helpers/dio_helper.dart'
    as _i5;
import 'package:state_magement/UnSplash/common/util/helpers/logger_interceptor.dart'
    as _i8;
import 'package:state_magement/UnSplash/core/di/connectivity_module.dart'
    as _i16;
import 'package:state_magement/UnSplash/core/di/dio_module.dart' as _i17;
import 'package:state_magement/UnSplash/core/di/isar_module.dart' as _i18;
import 'package:state_magement/UnSplash/show_new_image/data/dataSource/local_data_source.dart'
    as _i10;
import 'package:state_magement/UnSplash/show_new_image/data/dataSource/remote_dataSource.dart'
    as _i6;
import 'package:state_magement/UnSplash/show_new_image/data/repoImpl/getImage_repo_impl.dart'
    as _i13;
import 'package:state_magement/UnSplash/show_new_image/domain/repo/getImage_repo.dart'
    as _i12;
import 'package:state_magement/UnSplash/show_new_image/domain/useCase/getImages_useCase.dart'
    as _i14;
import 'package:state_magement/UnSplash/show_new_image/presentation/manager/photos_bloc.dart'
    as _i15;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i1.GetIt> init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final connectivityModule = _$ConnectivityModule();
    final networkModule = _$NetworkModule();
    final moduleIsar = _$ModuleIsar();
    gh.lazySingleton<_i3.Connectivity>(() => connectivityModule.connectivity);
    gh.lazySingleton<_i4.Dio>(() => networkModule.dio());
    gh.lazySingleton<_i5.DioNetwork>(() => networkModule.dioNetwork());
    gh.lazySingleton<_i6.GetImagesRemoteDataSource>(
        () => _i6.GetImagesRemoteDataSource(dioNetwork: gh<_i5.DioNetwork>()));
    await gh.factoryAsync<_i7.Isar>(
      () => moduleIsar.isar,
      preResolve: true,
    );
    gh.lazySingleton<_i8.LoggerInterceptor>(() => _i8.LoggerInterceptor());
    gh.lazySingleton<_i9.NetworkMonitor>(
        () => _i9.NetworkMonitor(gh<_i3.Connectivity>()));
    gh.lazySingleton<_i10.ImagesLocalDataSource>(
        () => _i10.ImagesLocalDataSourceImpl(gh<_i7.Isar>()));
    gh.factory<_i11.NetworkBloc>(
        () => _i11.NetworkBloc(gh<_i9.NetworkMonitor>()));
    gh.lazySingleton<_i12.GetImagesRepo>(() => _i13.GetImagesRepoImpl(
          remote: gh<_i6.GetImagesRemoteDataSource>(),
          local: gh<_i10.ImagesLocalDataSource>(),
        ));
    gh.lazySingleton<_i14.GetImagesUseCase>(
        () => _i14.GetImagesUseCase(getImagesRepo: gh<_i12.GetImagesRepo>()));
    gh.factory<_i15.PhotosBloc>(() => _i15.PhotosBloc(
          gh<_i14.GetImagesUseCase>(),
          gh<_i11.NetworkBloc>(),
        ));
    return this;
  }
}

class _$ConnectivityModule extends _i16.ConnectivityModule {}

class _$NetworkModule extends _i17.NetworkModule {}

class _$ModuleIsar extends _i18.ModuleIsar {}
