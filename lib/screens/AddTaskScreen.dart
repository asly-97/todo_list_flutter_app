import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_list_flutter/app_style.dart';
import 'package:todo_list_flutter/models/task.dart';
import 'package:todo_list_flutter/models/todolist.dart';

class AddTaskScreen extends StatefulWidget {
  @override
  State<AddTaskScreen> createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends State<AddTaskScreen> {
  String newTaskTitle = '';

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 30,
        vertical: 30,
      ),
      decoration: BoxDecoration(
        color: colorPrimary,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Add Task',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 30,
              color: colorWhite,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          TextField(
            onChanged: (typedTitle) {
              setState(() {
                newTaskTitle = typedTitle;
              });
            },
            autofocus: true,
            style: TextStyle(
              color: colorWhite,
            ),
            decoration: InputDecoration(
              hintText: 'Task title...',
              hintStyle: TextStyle(
                color: colorGrey,
              ),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: colorAccent,
                  width: 2.00,
                ),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: colorAccent,
                  width: 2.00,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          TextButton(
            onPressed: () {
              if (newTaskTitle.isNotEmpty) {
                Provider.of<TodoList>(context, listen: false)
                    .addTask(newTaskTitle);
                Navigator.pop(context);
              }
            },
            child: Text('Add'),
            style: TextButton.styleFrom(
              backgroundColor: colorAccent,
              foregroundColor: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
