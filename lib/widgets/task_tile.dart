import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final String title;
  final bool isChecked;
  final void Function(bool) checkboxCallback;
  final void Function() onDeleteTask;

  TaskTile(
      {required this.title,
      required this.isChecked,
      required this.checkboxCallback,
      required this.onDeleteTask});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: onDeleteTask,
      title: Text(
        title,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: (newValue) {
          checkboxCallback(newValue!);
        },
      ),
    );
  }
}
