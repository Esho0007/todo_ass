import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_list_ass/models/task_data.dart';
import 'package:todo_list_ass/screens/widgets/tasks_tiles.dart';

class TasksList extends StatelessWidget {
  const TasksList({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(builder: (context, taskData, child) {
      return ListView.builder(
        itemBuilder: (context, index) {
          final task = taskData.tasks[index];
          return TasksTile(
            isChecked: task.isDone,
            taskTitle: task.name,
            checkboxCallback: (checkboxState) {
              taskData.UpdateTask(task);
            },
            longPressCallback: () {
              taskData.deleteTask(task);
            },
          );
        },
        itemCount: taskData.taskCount,
      );
    });
  }
}
