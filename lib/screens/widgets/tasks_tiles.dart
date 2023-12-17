import 'package:flutter/material.dart';

class TasksTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function checkboxCallback;
  final Function()? longPressCallback;

  const TasksTile({super.key,
    required this.isChecked,
    required this.taskTitle,
    required this.checkboxCallback,
    required this.longPressCallback,});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallback,
        title: Text(
          taskTitle,
          style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null,
          ),
        ),
        trailing: Checkbox(
          activeColor: Colors.orange[200],
          value: isChecked,
          onChanged: (newValue){
            checkboxCallback(newValue);
          },
        ));
  }
}

