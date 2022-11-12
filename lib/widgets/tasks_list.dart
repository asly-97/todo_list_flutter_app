import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_list_flutter/models/task.dart';
import 'package:todo_list_flutter/models/todolist.dart';
import 'package:todo_list_flutter/widgets/task_tile.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TodoList>(
      builder: (context, todolist, child) {
        return ListView.builder(
            itemCount: todolist.count,
            itemBuilder: (context, index) {
              final Task task = todolist.tasks.elementAt(index);
              return TaskTile(
                title: task.title,
                isChecked: task.isDone,
                checkboxCallback: (state) {
                  todolist.toggleTask(task);
                },
                onDeleteTask: () {
                  todolist.deleteTask(task);
                },
              );
            });
      },
    );
  }
}
