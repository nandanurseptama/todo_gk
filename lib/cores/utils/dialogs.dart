import 'package:todo_gk/cores/widgets/error_dialog.dart';
import 'package:flutter/material.dart';

Future<T?> showErrorDialog<T>({
  required BuildContext context,
  required String processId,
  required String message,
  String title = "Error",
}) {
  return showDialog(
    context: context,
    useSafeArea: true,
    builder: (context) {
      return ErrorDialog(
        processId: processId,
        message: message,
        title: title,
      );
    },
  );
}
