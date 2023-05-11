import 'package:flutter/material.dart';
import 'package:todo_gk/cores/utils/snackbar.dart';
import 'package:todo_gk/features/todo/domain/entity/todo_entity.dart';
import 'package:todo_gk/features/todo/presentation/states/todos_state.dart';

class AddTodosScreen extends StatefulWidget {
  final TodosState todosState;
  final TodoEntity? todo;
  final void Function(String title, String description) onAddOrUpdate;
  final void Function(void Function(TodosState state) listener)? setListener;
  const AddTodosScreen(
      {super.key,
      required this.todosState,
      required this.onAddOrUpdate,
      this.setListener,
      this.todo});

  @override
  State<AddTodosScreen> createState() => _AddTodosScreenState();
}

class _AddTodosScreenState extends State<AddTodosScreen> {
  late final TextEditingController _titleFieldController =
          TextEditingController(
        text: widget.todo?.title ?? "",
      ),
      _descriptionFieldController =
          TextEditingController(text: widget.todo?.description ?? "");
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      widget.setListener?.call(todosStateListener);
    });
  }

  void todosStateListener(TodosState state) {
    return state.maybeMap<void>(
      error: (value) {
        showSnackbarMessage(
            context: context, message: value.error, type: SnackbarType.error);
        return;
      },
      processing: (value) {
        showSnackbarMessage(
            context: context,
            message: widget.todo == null ? "Creating todo" : "Updating todo");
        return;
      },
      loaded: (value) {
        Navigator.pop(context);
        return;
      },
      orElse: () {
        return;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
      ),
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            return Container(
              constraints: constraints,
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    _textFormField(
                        controller: _titleFieldController,
                        label: "Judul",
                        maxLines: 1),
                    _textFormField(
                        controller: _descriptionFieldController,
                        label: "Deskripsi",
                        maxLines: 10),
                    Row(
                      children: [
                        Expanded(
                          child: FilledButton(
                              onPressed: () {
                                return widget.todosState.maybeWhen<void>(
                                  processing: (isLoading, todos) {
                                    return;
                                  },
                                  initial: (isInitial) {
                                    return;
                                  },
                                  orElse: () {
                                    widget.onAddOrUpdate(
                                        _titleFieldController.text,
                                        _descriptionFieldController.text);
                                    return;
                                  },
                                );
                              },
                              child: widget.todosState.maybeMap<Widget>(
                                initial: (value) {
                                  return _buttonLoading();
                                },
                                processing: (value) {
                                  return _buttonLoading();
                                },
                                orElse: () {
                                  return Text(
                                    "Save",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyMedium
                                        ?.copyWith(color: Colors.white),
                                  );
                                },
                              )),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  Widget _buttonLoading() {
    return const SizedBox(
      height: 30,
      width: 30,
      child: CircularProgressIndicator(),
    );
  }

  Widget _textFormField(
      {required String label,
      required TextEditingController controller,
      int maxLines = 1}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 32),
      child: TextFormField(
        maxLines: maxLines,
        controller: controller,
        decoration: InputDecoration(
            labelText: label,
            floatingLabelBehavior: FloatingLabelBehavior.always),
      ),
    );
  }
}
