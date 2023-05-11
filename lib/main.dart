import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_it/get_it.dart';
import 'package:todo_gk/dependency.dart';
import 'package:todo_gk/features/todo/domain/entity/todo_entity.dart';
import 'package:todo_gk/features/todo/presentation/presenter/todos_getx_presenter.dart';
import 'package:todo_gk/features/todo/presentation/state_manager/todos_getx_manager.dart';
import 'package:todo_gk/ui/screens/add_todos_screen.dart';
import 'package:todo_gk/ui/screens/home_screen.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  await Firebase.initializeApp();
  await initDependency();
  runApp(MyApp(
    instance: instance,
  ));
}

class MyApp extends StatelessWidget {
  final GetIt instance;
  late TodosController todosController = instance.get();
  MyApp({super.key, required this.instance});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      onGenerateRoute: (settings) {
        Widget child = _homeBuilder();
        if (settings.name == "/edit") {
          child = _addEditTodosBuilder(settings.arguments);
        }
        return MaterialPageRoute(builder: (_) => child);
      },
      initialRoute: "/",
    );
  }

  Widget _homeBuilder() {
    return TodosGetXPresenter(
      todosController: todosController,
      builder: (context, presenterState, todosState) {
        return HomeScreen(
          onLoadTodos: presenterState.onLoadTodos,
          todosState: todosState,
          onDeleteTodo: presenterState.onDeleteTodo,
        );
      },
    );
  }

  Widget _addEditTodosBuilder(Object? arguments) {
    var params = arguments == null ? {} : (arguments as Map<String, dynamic>);
    TodoEntity? todo = params['todo'] as TodoEntity?;
    return TodosGetXPresenter(
      todosController: todosController,
      builder: (context, presenterState, todosState) {
        return AddTodosScreen(
          todo: todo,
          onAddOrUpdate: (title, description) {
            if (todo != null) {
              return presenterState.updateTodo(
                  todoId: todo.id, description: description, title: title);
            }
            return presenterState.onAddTodo(
                title: title, description: description);
          },
          todosState: todosState,
          setListener: presenterState.setListener,
        );
      },
    );
  }
}
