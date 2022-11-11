import 'package:flutter/material.dart';
import 'package:todo_list_flutter/widgets/task_tile.dart';
import 'package:todo_list_flutter/models/task.dart';

class TasksList extends StatefulWidget {
  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  List<Task> tasks = [
    Task(title: 'Buy milk', isDone: true),
    Task(title: 'Take out the trash'),
    Task(title: 'Buy toilette paper'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: tasks.length,
        itemBuilder: (context, index) {
          return TaskTile(
            title: tasks.elementAt(index).title,
            isChecked: tasks.elementAt(index).isDone,
            checkboxCallback: (state) {
              setState(() {
                tasks.elementAt(index).toggleDone();
              });
            },
          );
        });
  }
}
