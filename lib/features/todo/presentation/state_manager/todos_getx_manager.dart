import 'package:get/state_manager.dart';
import 'package:injectable/injectable.dart';
import 'package:todo_gk/cores/usecase/usecase.dart';
import 'package:todo_gk/features/todo/domain/entity/todo_entity.dart';
import 'package:todo_gk/features/todo/domain/usecases/create_todo_usecase.dart';
import 'package:todo_gk/features/todo/domain/usecases/delete_todo_usecase.dart';
import 'package:todo_gk/features/todo/domain/usecases/get_todos_usecase.dart';
import 'package:todo_gk/features/todo/domain/usecases/update_todo_usecase.dart';
import 'package:todo_gk/features/todo/presentation/states/todos_state.dart';

@lazySingleton
class TodosController extends GetxController {
  final GetTodosUsecase _getTodosUsecase;
  final CreateTodoUsecase _createTodoUsecase;
  final DeleteTodoUsecase _deleteTodoUsecase;
  final UpdateTodoUsecase _updateTodoUsecase;

  TodosController({
    required CreateTodoUsecase createTodoUsecase,
    required DeleteTodoUsecase deleteTodoUsecase,
    required GetTodosUsecase getTodosUsecase,
    required UpdateTodoUsecase updateTodoUsecase,
  })  : _getTodosUsecase = getTodosUsecase,
        _createTodoUsecase = createTodoUsecase,
        _deleteTodoUsecase = deleteTodoUsecase,
        _updateTodoUsecase = updateTodoUsecase;

  Rx<TodosState> state = const TodosState.initial().obs;

  Future<void> loadTodos() async {
    state(TodosState.processing(todos: lastTodosValue));
    return _getTodosUsecase(NoUsecaseParams()).then((result) {
      return result.when<void>(ok: (ok) {
        state(TodosState.loaded(todos: ok));
        return;
      }, err: (err) {
        state(TodosState.error(
            todos: lastTodosValue,
            error: err.message,
            processId: err.processId));
      });
    });
  }

  List<TodoEntity>? get lastTodosValue {
    return state.value.maybeMap<List<TodoEntity>?>(initial: (value) {
      return null;
    }, loaded: (value) {
      return value.todos;
    }, processing: (value) {
      return value.todos;
    }, error: (value) {
      return value.todos;
    }, orElse: () {
      return null;
    });
  }

  Future<void> addTodos({
    required String title,
    required String description,
  }) {
    state(TodosState.processing(todos: lastTodosValue));
    return _createTodoUsecase(CreateTodoUsecaseParams(
      description: description,
      title: title,
    )).then((result) {
      return result.maybeMap<void>(
        err: (value) {
          state(TodosState.error(
              error: value.data.message,
              processId: value.data.processId,
              todos: lastTodosValue));
          return;
        },
        ok: (value) {
          loadTodos();
          return;
        },
        orElse: () {
          return;
        },
      );
    });
  }

  Future<void> deleteTodos(String id) async {
    state(TodosState.processing(todos: lastTodosValue));
    return _deleteTodoUsecase(id).then((result) {
      return result.when<void>(
        ok: (data) async {
          await loadTodos();
          return;
        },
        err: (data) {
          state(TodosState.error(
              error: data.message,
              processId: data.processId,
              todos: lastTodosValue));
          return;
        },
      );
    });
  }

  Future<void> updateTodo({
    required String todoId,
    required String title,
    required String description,
  }) {
    state(TodosState.processing(todos: lastTodosValue));
    return _updateTodoUsecase(UpdateTodoUsecaseParams(
      description: description,
      title: title,
      todoId: todoId,
    )).then((result) {
      return result.maybeMap<void>(
        err: (value) {
          state(TodosState.error(
              error: value.data.message,
              processId: value.data.processId,
              todos: lastTodosValue));
          return;
        },
        ok: (value) {
          loadTodos();
          return;
        },
        orElse: () {
          return;
        },
      );
    });
  }
}
