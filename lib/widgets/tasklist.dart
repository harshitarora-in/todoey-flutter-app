import 'package:flutter/material.dart';
import 'tasktile.dart';
import 'package:todoey/models/task.dart';

class TaskList extends StatefulWidget {
  @override
  _TaskListState createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  List<Task> tasks = [
    Task(name: 'buy milk'),
    Task(name: 'buy tea'),
    Task(name: 'buy sugar')
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.fromLTRB(20.0, 20.0, 5.0, 70.0),
      addRepaintBoundaries: false,
      addSemanticIndexes: false,
      itemBuilder: (context, index) {
        return TaskTile(
          taskName: tasks[index].name,
          isChecked: tasks[index].isDone,
          toggleIsChecked: (value) {
            setState(() {
              tasks[index].toggleDone();
            });
          },
        );
      },
      itemCount: tasks.length,
    );
  }
}
