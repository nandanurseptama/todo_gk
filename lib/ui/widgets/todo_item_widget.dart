import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TodoItemWidget extends StatelessWidget {
  final String title;
  final String description;

  final void Function() onClickUpdate;
  final void Function() onClickDelete;
  const TodoItemWidget(
      {super.key,
      required this.title,
      required this.description,
      required this.onClickDelete,
      required this.onClickUpdate});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                    child: Text(
                  title,
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium
                      ?.copyWith(fontWeight: FontWeight.w600),
                )),
                IconButton(onPressed: onClickDelete, icon: Icon(Icons.delete)),
                IconButton(onPressed: onClickUpdate, icon: Icon(Icons.edit))
              ],
            ),
            Row(
              children: [
                Expanded(
                    child: Text(
                  description,
                  style: Theme.of(context).textTheme.bodySmall,
                ))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
