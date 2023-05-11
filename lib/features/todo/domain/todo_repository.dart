import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:todo_gk/cores/usecase/repository_error_handler.dart';
import 'package:todo_gk/features/todo/data/models/todo_model.dart';
import 'package:todo_gk/features/todo/domain/entity/todo_entity.dart';
import 'package:hive/hive.dart';
@injectable
class TodoRepository {
  final Box<Map<dynamic, dynamic>> _box;
  const TodoRepository({required Box<Map<dynamic, dynamic>> box}) : _box = box;

  List<TodoEntity> getTodos(String processId) {
    try {
      return _box.values.map((e) => TodoModel.fromJson(Map.from(e))).toList();
    } catch (err, trace) {
      var f =
          repositoryErrorHandler(err: err, processId: processId, trace: trace);
      throw f;
    }
  }

  Future<void> saveTodo(
      {required TodoModel todo, required String processId}) async {
    try {
      return await _box.put(todo.id, todo.toJson());
    } catch (err, trace) {
      var f =
          repositoryErrorHandler(err: err, processId: processId, trace: trace);
      throw f;
    }
  }

  Future<void> deleteTodo(
      {required String id, required String processId}) async {
    try {
      return await _box.delete(id);
    } catch (err, trace) {
      var f =
          repositoryErrorHandler(err: err, processId: processId, trace: trace);
      throw f;
    }
  }
}
