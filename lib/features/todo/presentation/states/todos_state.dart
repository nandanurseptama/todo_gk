import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:todo_gk/features/todo/domain/entity/todo_entity.dart';

part 'todos_state.freezed.dart';

@freezed
class TodosState with _$TodosState {
  const factory TodosState.initial({
    @Default(true) bool isInitial,
  }) = _Initial;

  const factory TodosState.processing({
    @Default(true) bool isLoading,
    @Default(null) List<TodoEntity>? todos,
  }) = _Processing;

  const factory TodosState.loaded({
    @Default(false) bool isLoading,
    required List<TodoEntity> todos,
  }) = _Loaded;

  const factory TodosState.error({
    @Default(false) bool isLoading,
    required String error,
    required String processId,
    List<TodoEntity>? todos,
  }) = _Error;
}
