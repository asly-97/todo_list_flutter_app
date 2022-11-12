import 'package:flutter/foundation.dart';
import 'package:todo_list_flutter/models/task.dart';

class TodoList extends ChangeNotifier {
  List<Task> _tasks = [
    Task(title: 'Buy milk', isDone: true),
    Task(title: 'Take out the trash'),
    Task(title: 'Buy toilette paper'),
    Task(title: 'Walk home on feet'),
  ];

  int get count {
    return _tasks.length;
  }

  List<Task> get tasks => _tasks.toList(growable: false);

  void addTask(String title) {
    _tasks.add(Task(title: title));
    notifyListeners();
  }

  void toggleTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }
}
