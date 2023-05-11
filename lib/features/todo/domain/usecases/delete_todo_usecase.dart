import 'package:injectable/injectable.dart';
import 'package:todo_gk/cores/usecase/usecase.dart';
import 'package:todo_gk/features/todo/domain/todo_repository.dart';

@injectable
class DeleteTodoUsecase extends Usecase<String, void> {
  final TodoRepository _todoRepository;
  DeleteTodoUsecase(
      {required super.uuidGenerator,
      required super.logger,
      required TodoRepository todoRepository})
      : _todoRepository = todoRepository;

  @override
  Future<void> calling(String params) async {
    return _todoRepository.deleteTodo(
      processId: processId,
      id: params,
    );
  }
}
