import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:todo_list_ass/models/task_data.dart';

class AddTaskScreen extends StatelessWidget {
  const AddTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    String? newTaskTitle;

    return Container(
      color: const Color(0xff757575),
      child: Container(
        padding: const EdgeInsets.all(30.0),
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(20.0),
              topLeft: Radius.circular(20.0),
            )),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
             Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: GoogleFonts.alike(
                fontWeight: FontWeight.normal,
                fontSize: 16,
              ),
              // style: TextStyle(
              //   fontWeight: FontWeight.bold,
              //   fontSize: 20.0,
              //   color: Colors.grey[200],
              // ),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (newText) {
                newTaskTitle = newText;
              },
            ),
            const SizedBox(
              height: 10.0,
            ),
            ElevatedButton(
              onPressed: () {
             Provider.of<TaskData>(context, listen: false).addTask(newTaskTitle!);
             Navigator.pop(context);
              },
              style:  ButtonStyle(
                  backgroundColor:
                      MaterialStatePropertyAll(Colors.grey[600])),
              child: Text(
                'Add',
                style: GoogleFonts.alike(
                  fontWeight: FontWeight.normal,
                  fontSize: 16,
                ),
                //style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
