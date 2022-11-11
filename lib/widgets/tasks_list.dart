import 'package:flutter/material.dart';
import 'package:todo_list_flutter/widgets/task_tile.dart';
import 'package:todo_list_flutter/models/task.dart';

class TasksList extends StatefulWidget {
  List<Task> tasks;

  TasksList({required this.tasks});

  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: widget.tasks.length,
        itemBuilder: (context, index) {
          return TaskTile(
            title: widget.tasks.elementAt(index).title,
            isChecked: widget.tasks.elementAt(index).isDone,
            checkboxCallback: (state) {
              setState(() {
                widget.tasks.elementAt(index).toggleDone();
              });
            },
          );
        });
  }
}
