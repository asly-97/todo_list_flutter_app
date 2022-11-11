import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
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
              return TaskTile(
                title: todolist.tasks.elementAt(index).title,
                isChecked: todolist.tasks.elementAt(index).isDone,
                checkboxCallback: (state) {
                  /*
                setState(() {
                  tasks.elementAt(index).toggleDone();
                });*/
                },
              );
            });
      },
    );
  }
}
