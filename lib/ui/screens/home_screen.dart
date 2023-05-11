import 'package:flutter/material.dart';
import 'package:todo_gk/features/todo/domain/entity/todo_entity.dart';
import 'package:todo_gk/ui/widgets/todo_item_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: LayoutBuilder(builder: (context, constraints) {
          return Container(
            constraints: constraints,
            child: SingleChildScrollView(
              child: Column(
                  children: TodoEntity.example().map((e) {
                return TodoItemWidget(
                    title: e.title,
                    description: e.description,
                    onClickDelete: onClickDelete,
                    onClickUpdate: onClickUpdate);
              }).toList()),
            ),
          );
        }),
      ),
    );
  }

  void onClickDelete() {}
  void onClickUpdate() {}
}
