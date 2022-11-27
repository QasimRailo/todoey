import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/Models/task_data.dart';

import 'Screens/task_screen.dart';

import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      // builder: (context)=>TaskData(),
      create: (BuildContext context) {
        return TaskData();
      },
      child: MaterialApp(
        home: TaskScreen(),
      ),
    );
  }
}
