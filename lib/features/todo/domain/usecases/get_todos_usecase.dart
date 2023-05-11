import 'package:injectable/injectable.dart';
import 'package:todo_gk/cores/usecase/usecase.dart';
import 'package:todo_gk/features/todo/domain/entity/todo_entity.dart';
import 'package:todo_gk/features/todo/domain/todo_repository.dart';

@injectable
class GetTodosUsecase extends Usecase<NoUsecaseParams, List<TodoEntity>> {
  final TodoRepository _todoRepository;
  GetTodosUsecase(
      {required super.uuidGenerator,
      required super.logger,
      required TodoRepository todoRepository})
      : _todoRepository = todoRepository;

  @override
  Future<List<TodoEntity>> calling(NoUsecaseParams params) async {
    return _todoRepository.getTodos(processId);
  }
}
