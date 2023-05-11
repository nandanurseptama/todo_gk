// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:hive/hive.dart' as _i3;
import 'package:injectable/injectable.dart' as _i2;
import 'package:uuid/uuid.dart' as _i6;

import 'cores/services/logger.dart' as _i4;
import 'cores/utils/uuid_generator.dart' as _i7;
import 'dependency.dart' as _i13;
import 'features/todo/domain/todo_repository.dart' as _i5;
import 'features/todo/domain/usecases/create_todo_usecase.dart' as _i9;
import 'features/todo/domain/usecases/delete_todo_usecase.dart' as _i10;
import 'features/todo/domain/usecases/get_todos_usecase.dart' as _i11;
import 'features/todo/domain/usecases/update_todo_usecase.dart' as _i8;
import 'features/todo/presentation/state_manager/todos_getx_manager.dart'
    as _i12;

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// initializes the registration of main-scope dependencies inside of GetIt
Future<_i1.GetIt> $Init(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) async {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  final commonModule = _$CommonModule();
  await gh.factoryAsync<_i3.Box<Map<dynamic, dynamic>>>(
    () => commonModule.localStorage,
    preResolve: true,
  );
  gh.factory<_i4.Logger>(() => commonModule.logger);
  gh.factory<_i5.TodoRepository>(
      () => _i5.TodoRepository(box: gh<_i3.Box<Map<dynamic, dynamic>>>()));
  gh.factory<_i6.Uuid>(() => commonModule.uuid);
  gh.factory<_i7.UUIDGenerator>(() => _i7.UUIDGenerator(uuid: gh<_i6.Uuid>()));
  gh.factory<_i8.UpdateTodoUsecase>(() => _i8.UpdateTodoUsecase(
        uuidGenerator: gh<_i7.UUIDGenerator>(),
        logger: gh<_i4.Logger>(),
        todoRepository: gh<_i5.TodoRepository>(),
      ));
  gh.factory<_i9.CreateTodoUsecase>(() => _i9.CreateTodoUsecase(
        uuidGenerator: gh<_i7.UUIDGenerator>(),
        logger: gh<_i4.Logger>(),
        todoRepository: gh<_i5.TodoRepository>(),
      ));
  gh.factory<_i10.DeleteTodoUsecase>(() => _i10.DeleteTodoUsecase(
        uuidGenerator: gh<_i7.UUIDGenerator>(),
        logger: gh<_i4.Logger>(),
        todoRepository: gh<_i5.TodoRepository>(),
      ));
  gh.factory<_i11.GetTodosUsecase>(() => _i11.GetTodosUsecase(
        uuidGenerator: gh<_i7.UUIDGenerator>(),
        logger: gh<_i4.Logger>(),
        todoRepository: gh<_i5.TodoRepository>(),
      ));
  gh.lazySingleton<_i12.TodosController>(() => _i12.TodosController(
        createTodoUsecase: gh<_i9.CreateTodoUsecase>(),
        deleteTodoUsecase: gh<_i10.DeleteTodoUsecase>(),
        getTodosUsecase: gh<_i11.GetTodosUsecase>(),
        updateTodoUsecase: gh<_i8.UpdateTodoUsecase>(),
      ));
  return getIt;
}

class _$CommonModule extends _i13.CommonModule {}
