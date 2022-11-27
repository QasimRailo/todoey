import 'package:flutter/material.dart';
import 'package:todoey/Models/task_data.dart';
import 'package:todoey/Widgets/task_tile.dart';
import 'package:provider/provider.dart';
import '../Models/task.dart';

class taskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (BuildContext context, taskdata, Child) {
        return ListView.builder(
            itemCount: taskdata.Taskcount,
            itemBuilder: (context, index) {
              final trask = taskdata.tasks[index];
              return taskTile(
                taskTitle: trask.name,
                isChecked: trask.isDone,
                checkboxCallback: (value) {
                  taskdata.updateTask(trask);
                  // setState(() {
                  // taskdata.tasks[index].toggledone();
                  // });
                },
                DellCallback: () {
                  taskdata.DeleteTask(trask);
                },
              );
            });
      },
    );
  }
}
