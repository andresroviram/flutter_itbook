// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'core/common/env/env.dart' as _i3;
import 'core/common/services/services.dart' as _i5;
import 'core/home/data/datasources/home_datasources.dart' as _i6;
import 'core/home/data/repositories/home_repositories.dart' as _i8;
import 'core/home/domain/repositories/home_repository.dart' as _i7;
import 'core/home/domain/usecases/home_usecases.dart' as _i9;
import 'ui/navigation/cubit/router_manager.dart' as _i4;

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
    gh.lazySingleton<_i4.RouterManager>(() => _i4.RouterManager());
    gh.lazySingleton<_i5.BaseClient>(() => _i5.BaseClient(gh<_i3.Env>()));
    gh.factory<_i6.IHomeDatasource>(
        () => _i6.HomeDatasource(baseClient: gh<_i5.BaseClient>()));
    gh.factory<_i7.IHomeRepository>(
        () => _i8.HomeRepositoryImpl(gh<_i6.IHomeDatasource>()));
    gh.lazySingleton<_i9.HomeUseCase>(
        () => _i9.HomeUseCase(gh<_i7.IHomeRepository>()));
    return this;
  }
}
