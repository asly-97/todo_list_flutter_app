import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_list_flutter/models/task.dart';
import 'package:todo_list_flutter/models/todolist.dart';
import 'package:todo_list_flutter/screens/tasks_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<TodoList>(
      create: (_) => TodoList(),
      child: MaterialApp(
        home: TasksScreen(),
      ),
    );
  }
}
