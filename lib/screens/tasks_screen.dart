import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:todo_list_flutter/app_style.dart';
import 'package:todo_list_flutter/models/todolist.dart';
import 'package:todo_list_flutter/screens/AddTaskScreen.dart';
import 'package:todo_list_flutter/widgets/tasks_list.dart';
import 'package:provider/provider.dart';

class TasksScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorPrimary,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              backgroundColor: Colors.transparent,
              context: context,
              isScrollControlled: true,
              builder: (context) => SingleChildScrollView(
                      child: Container(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: AddTaskScreen(),
                  )));
        },
        child: Icon(Icons.add),
        backgroundColor: colorAccent,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(
              top: 60,
              left: 30,
              right: 30,
              bottom: 30,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  child: Icon(
                    Icons.list,
                    size: 30,
                    color: colorWhite,
                  ),
                  backgroundColor: colorAccent,
                  radius: 30,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Todo list',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  '${Provider.of<TodoList>(context).tasks.length} Tasks',
                  style: TextStyle(
                    color: colorGrey,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.only(
                left: 20,
                right: 20,
                bottom: 120,
              ),
              decoration: BoxDecoration(
                color: colorPrimary,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black,
                    offset: Offset(0, -5),
                    spreadRadius: 1,
                    blurRadius: 10,
                  ),
                ],
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: TasksList(
                        //tasks: Provider.of<TodoList>(context).tasks,
                        ),
                  ),
                  Divider(
                    height: 25,
                    thickness: 2,
                    color: colorWhite,
                  ),
                  Text(
                    'Hold press on the task to delete it.',
                    style: TextStyle(
                      color: colorGrey,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
