import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:todo_gk/cores/usecase/usecase.dart';
import 'package:todo_gk/features/todo/domain/entity/todo_entity.dart';
import 'package:todo_gk/features/todo/domain/todo_repository.dart';

@injectable
class CreateTodoUsecase extends Usecase<CreateTodoUsecaseParams, TodoEntity> {
  final TodoRepository _todoRepository;
  CreateTodoUsecase(
      {required super.uuidGenerator,
      required super.logger,
      required TodoRepository todoRepository})
      : _todoRepository = todoRepository;

  @override
  Future<TodoEntity> calling(CreateTodoUsecaseParams params) async {
    var entity = TodoEntity(
        title: params.title,
        id: super.generateUuid,
        description: params.description);
    var model = entity.toModel();
    await _todoRepository.saveTodo(processId: processId, todo: model);
    return entity;
  }
}

class CreateTodoUsecaseParams extends Equatable {
  final String title;
  final String description;

  const CreateTodoUsecaseParams(
      {required this.description, required this.title});

  @override
  List<Object?> get props => [
        description,
        title,
      ];
}
