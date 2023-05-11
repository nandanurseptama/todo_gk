import 'package:get/get.dart';
import 'package:todo_gk/features/todo/data/models/todo_model.dart';
import 'package:todo_gk/features/todo/domain/entity/todo_entity.dart';
import 'package:hive/hive.dart';
class TodoRepository extends GetxController{
  bool isLoading = false;
  String? error;
  List<TodoEntity> todos = List.empty(growable: true);
  final Box<Map<String,dynamic>> box;
  TodoRepository() : box = Hive.box<Map<String,dynamic>>("todos");

  Future<TodoEntity> getFromLocal(){
    box.values.map((e) => TodoModel(title: title, id: id, description: description));
  }
}