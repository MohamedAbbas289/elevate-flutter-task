// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:elevate_flutter_task/core/di/injection.dart' as _i990;
import 'package:elevate_flutter_task/data/repositories/product_repository_impl.dart'
    as _i961;
import 'package:elevate_flutter_task/domain/repositories/product_repository.dart'
    as _i860;
import 'package:elevate_flutter_task/presentation/cubit/product_cubit.dart'
    as _i319;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final appModule = _$AppModule();
    gh.lazySingleton<_i361.Dio>(() => appModule.dio);
    gh.lazySingleton<_i860.ProductRepository>(
      () => _i961.ProductRepositoryImpl(gh<_i361.Dio>()),
    );
    gh.factory<_i319.ProductCubit>(
      () => _i319.ProductCubit(gh<_i860.ProductRepository>()),
    );
    return this;
  }
}

class _$AppModule extends _i990.AppModule {}
