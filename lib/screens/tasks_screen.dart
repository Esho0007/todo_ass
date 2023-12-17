import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:todo_list_ass/models/task_data.dart';
import 'package:todo_list_ass/screens/widgets/add_task_screen.dart';
import 'package:todo_list_ass/screens/widgets/tasks_list.dart';

class TasksScreen extends StatelessWidget {
  const TasksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.grey[300],
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) => const AddTaskScreen(),
          );
        },
        child: const Icon(Icons.add),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.only(
                top: 60.0, left: 30.0, right: 30.0, bottom: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.list,
                    size: 30.0,
                    color: Colors.black38,
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Text(
                  'to-do List',
                  style: GoogleFonts.dmSans(
                      fontSize: 33, fontWeight: FontWeight.bold),
                ),
                Text(
                  '${Provider.of<TaskData>(context).taskCount} tasks',
                  style: GoogleFonts.alike(
                    fontWeight: FontWeight.normal,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(
                  height: 5.0,
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0),
                ),
              ),
              child: const TasksList(),
            ),
          ),
        ],
      ),
    );
  }
}
