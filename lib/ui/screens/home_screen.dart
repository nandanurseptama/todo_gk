import 'package:flutter/material.dart';
import 'package:todo_gk/features/todo/domain/entity/todo_entity.dart';
import 'package:todo_gk/features/todo/presentation/states/todos_state.dart';
import 'package:todo_gk/ui/widgets/todo_item_widget.dart';

class HomeScreen extends StatefulWidget {
  final void Function() onLoadTodos;
  final void Function(String todoId) onDeleteTodo;
  final TodosState todosState;
  const HomeScreen(
      {super.key,
      required this.todosState,
      required this.onLoadTodos,
      required this.onDeleteTodo});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      widget.onLoadTodos();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: widget.todosState.maybeMap<Widget?>(
        orElse: () {
          return FloatingActionButton(
            onPressed: () {
              Navigator.pushNamed(context, "/edit");
              return;
            },
            child: const Icon(Icons.add),
          );
        },
        initial: (value) {
          return null;
        },
      ),
      body: SafeArea(
        child: LayoutBuilder(builder: (context, constraints) {
          return Container(
              constraints: constraints,
              alignment: Alignment.topLeft,
              child: _builder());
        }),
      ),
    );
  }

  Widget _builder() {
    return widget.todosState.maybeMap(
      loaded: (value) {
        if (value.todos.isEmpty) {
          return _empty();
        }
        return _onLoaded(value.todos);
      },
      error: (value) {
        return _error(value.error);
      },
      orElse: () {
        return _loading();
      },
    );
  }

  Widget _loading() {
    return const Center(
      child:
          SizedBox(height: 50, width: 50, child: CircularProgressIndicator()),
    );
  }

  Widget _onLoaded(List<TodoEntity> todos) {
    return SingleChildScrollView(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: todos.map((e) {
            return TodoItemWidget(
                title: e.title,
                description: e.description,
                onClickDelete: () {
                  widget.onDeleteTodo(e.id);
                  return;
                },
                onClickUpdate: (){
                  return onClickUpdate(e);
                });
          }).toList()),
    );
  }

  Widget _error(String error) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: [
        Row(
          children: [
            Expanded(
                child: Text(
              error,
              textAlign: TextAlign.center,
            )),
          ],
        ),
      ],
    );
  }

  Widget _empty() {
    return _error("Todos kamu masih kosong");
  }

  void onClickUpdate(TodoEntity todo) {
    Navigator.pushNamed(context, "/edit", arguments: {"todo" : todo});
    return;
  }
}
