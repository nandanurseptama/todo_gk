import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';
import 'package:todo_gk/features/todo/presentation/state_manager/todos_getx_manager.dart';
import 'package:todo_gk/features/todo/presentation/states/todos_state.dart';

class TodosGetXPresenter extends StatefulWidget {
  final TodosController todosController;
  final Widget Function(BuildContext context,
      TodosGetXPresenterState presenterState, TodosState todosState) builder;
  const TodosGetXPresenter(
      {super.key, required this.todosController, required this.builder});

  @override
  State<TodosGetXPresenter> createState() => TodosGetXPresenterState();
}

class TodosGetXPresenterState extends State<TodosGetXPresenter> {
  void Function(TodosState state)? listener;
  late final StreamSubscription<TodosState> _streamSubscription;
  @override
  void initState() {
    super.initState();
    _streamSubscription = widget.todosController.state.listen((p0) {
      listener?.call(p0);
      return;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => widget.builder(context, this, widget.todosController.state.value),
    );
  }

  void onAddTodo({required String title, required String description}) async {
    await widget.todosController
        .addTodos(title: title, description: description);
    return;
  }

  void onLoadTodos() {
    widget.todosController.loadTodos();
    return;
  }

  void onDeleteTodo(String id) async {
    await widget.todosController.deleteTodos(id);
    return;
  }

  void updateTodo({
    required String todoId,
    required String description,
    required String title,
  }) async {
    await widget.todosController
        .updateTodo(todoId: todoId, title: title, description: description);
    return;
  }

  setListener(void Function(TodosState state) listener) {
    if (!mounted) {
      return;
    }
    setState(() {
      this.listener = listener;
    });
    return;
  }

  @override
  void dispose() {
    _streamSubscription.cancel();
    super.dispose();
  }
}
