import 'package:flutter/material.dart';

class taskTile extends StatelessWidget {
  late final bool isChecked;
  late final String taskTitle;
  final Function checkboxCallback;
  final Function DellCallback;
  taskTile(
      {required this.taskTitle,
      required this.isChecked,
      required this.checkboxCallback, required this.DellCallback});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: () {

        this.DellCallback();
      },
      title: Text(

        taskTitle,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
      //  checkColor: Colors.lightBlueAccent,
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: (value) {
          this.checkboxCallback(value);
        },
      ),
    );
  }
}
// (bool value) {
// setState(() {
// isChecked = value ? true : false;
// print(value);
// });
// },
