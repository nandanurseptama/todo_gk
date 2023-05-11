import 'package:equatable/equatable.dart';
import 'package:todo_gk/features/todo/data/models/todo_model.dart';

class TodoEntity extends Equatable {
  final String title;
  final String id;
  final String description;

  const TodoEntity(
      {required this.title, required this.id, required this.description});
  @override
  List<Object?> get props => [title, id, description];

  static List<TodoEntity> example(){
    return [
      const TodoEntity(title: "Makan", id: "", description: "Makan"),
      const TodoEntity(title: "Minum", id: "", description: "Minum apaan")
    ];
  }
  TodoModel toModel(){
    return TodoModel(title: title, id: id, description: description);
  }
}
