import 'package:flutter/foundation.dart';
import 'package:todo_list_flutter/models/task.dart';

class TodoList extends ChangeNotifier {
  List<Task> tasks = [
    Task(title: 'Buy milk', isDone: true),
    Task(title: 'Take out the trash'),
    Task(title: 'Buy toilette paper'),
    Task(title: 'Walk home on feet'),
  ];

  int get count {
    return tasks.length;
  }
}
