import 'package:flutter/material.dart';

class AddTaskScreen extends StatefulWidget {
  final void Function(String taskTitle) onAddTask;

  AddTaskScreen({required this.onAddTask});

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
        color: Colors.white,
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
              color: Colors.lightBlueAccent,
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
              color: Colors.lightBlueAccent,
            ),
            decoration: InputDecoration(
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.lightBlueAccent,
                  width: 5.00,
                ),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.lightBlueAccent,
                  width: 5.00,
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
                widget.onAddTask(newTaskTitle);
                Navigator.pop(context);
              }
            },
            child: Text('Add'),
            style: TextButton.styleFrom(
              backgroundColor: Colors.lightBlueAccent,
              foregroundColor: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
