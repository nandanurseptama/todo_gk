import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:todo_gk/cores/usecase/usecase.dart';
import 'package:todo_gk/features/todo/domain/entity/todo_entity.dart';
import 'package:todo_gk/features/todo/domain/todo_repository.dart';

@injectable
class UpdateTodoUsecase extends Usecase<UpdateTodoUsecaseParams, TodoEntity> {
  final TodoRepository _todoRepository;
  UpdateTodoUsecase(
      {required super.uuidGenerator,
      required super.logger,
      required TodoRepository todoRepository})
      : _todoRepository = todoRepository;

  @override
  Future<TodoEntity> calling(UpdateTodoUsecaseParams params) async {
    var entity = TodoEntity(
        title: params.title,
        id: params.todoId,
        description: params.description);
    var model = entity.toModel();
    await _todoRepository.saveTodo(processId: processId, todo: model);
    return entity;
  }
}

class UpdateTodoUsecaseParams extends Equatable {
  final String todoId;
  final String title;
  final String description;

  const UpdateTodoUsecaseParams(
      {required this.description, required this.title, required this.todoId});

  @override
  List<Object?> get props => [
        description,
        title,
      ];
}
