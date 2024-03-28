// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../env/env.dart' as _i3;
import '../../core/services/local_storage.dart' as _i4;
import '../../core/services/services.dart' as _i6;
import '../../modules/home/data/datasources/home_datasources.dart' as _i7;
import '../../modules/home/data/repository/home_repository.dart' as _i9;
import '../../modules/home/domain/repository/home_repository.dart' as _i8;
import '../../modules/home/domain/usecases/home_usecases.dart' as _i10;
import '../routes/cubit/router_manager.dart' as _i5;

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
    gh.factory<_i3.Env>(() => _i3.Env());
    gh.factory<_i4.LocalStorage>(() => _i4.LocalStorageImpl());
    gh.lazySingleton<_i5.RouterManager>(() => _i5.RouterManager());
    gh.lazySingleton<_i6.BaseClient>(() => _i6.BaseClient(gh<_i3.Env>()));
    gh.factory<_i7.IHomeDatasource>(
        () => _i7.HomeDatasource(baseClient: gh<_i6.BaseClient>()));
    gh.factory<_i8.IHomeRepository>(
        () => _i9.HomeRepositoryImpl(gh<_i7.IHomeDatasource>()));
    gh.lazySingleton<_i10.HomeUseCase>(
        () => _i10.HomeUseCase(gh<_i8.IHomeRepository>()));
    return this;
  }
}
