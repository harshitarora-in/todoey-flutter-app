import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'package:todoey/models/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [
    Task(name: 'buy milk'),
    Task(name: 'buy tea'),
    Task(name: 'buy sugar'),
    Task(name: 'buy sugar')
  ];

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  int get taskLength {
    return _tasks.length;
  }

  void deleteTask(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }

  void addTask(String newTask) {
    final task = Task(name: newTask);
    _tasks.add(task);
    notifyListeners();
  }

  void updateTaskCheckbox(Task task) {
    task.toggleDone();
    notifyListeners();
  }
}
