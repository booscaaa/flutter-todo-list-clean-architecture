// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../module/controller/home_controller.dart' as _i6;
import '../module/data/repository/get_todo_list_repository.dart' as _i4;
import '../module/domain/usecase/get_todo_list_usecase.dart' as _i5;
import 'dio_di.dart' as _i7; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final dioDi = _$DioDi();
  gh.lazySingleton<_i3.Dio>(() => dioDi.dio);
  gh.factory<_i4.GetTodoListRepository>(
      () => _i4.GetTodoListRepositoryImpl(get<_i3.Dio>()));
  gh.factory<_i5.GetTodoListUseCase>(
      () => _i5.GetTodoListUseCaseImpl(get<_i4.GetTodoListRepository>()));
  gh.factory<_i6.HomeController>(
      () => _i6.HomeController(get<_i5.GetTodoListUseCase>()));
  return get;
}

class _$DioDi extends _i7.DioDi {}
