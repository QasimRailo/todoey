import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'package:todoey/Models/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [
    Task(name: "qasim", isDone: true),
    Task(name: "ali"),
    Task(name: "name"),
  ];
  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  int get Taskcount {
    return _tasks.length;
  }

  void addTask(String value) {
    var t = Task(name: value);
    _tasks.add(t);
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toggledone();
    notifyListeners();
  }
  void DeleteTask(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }
}
