// ignore_for_file: must_be_immutable

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:todo_gk/features/todo/domain/entity/todo_entity.dart';

part 'todo_model.g.dart';

@JsonSerializable()
class TodoModel extends TodoEntity {
  const TodoModel(
      {required super.title, required super.id, required super.description});

  factory TodoModel.fromJson(Map<String,dynamic> json) => _$TodoModelFromJson(json);
  Map<String,dynamic> toJson(){
    return _$TodoModelToJson(this);
  }
}
