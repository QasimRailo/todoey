import 'package:flutter/material.dart';
import 'package:todoey/Models/task.dart';
import 'package:todoey/Widgets/task_list.dart';
import 'package:provider/provider.dart';

import '../Models/task_data.dart';

class AddTask extends StatelessWidget {
  late String newtaskTitle;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(25.0),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.0),
                topRight: Radius.circular(20.0))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              "Add Task",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30.0,
                color: Colors.lightBlueAccent,
              ),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (change) {
                newtaskTitle = change;
              },
            ),
            SizedBox(
              height: 10.0,
            ),
            FlatButton(
              color: Colors.lightBlueAccent,
              onPressed: () {
                //   this.addTaskCallBack(newtaskTitle);
                // print(newtaskTitle);

                //final task = Task(name: newtaskTitle);
                print(newtaskTitle);
                // Provider.of<TaskData>(context,listen: false)
                //     .addTask(newtaskTitle);
                Provider.of<TaskData>(context).addTask(newtaskTitle);
                Navigator.pop(context);
              },
              child: Text(
                "Add",
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
