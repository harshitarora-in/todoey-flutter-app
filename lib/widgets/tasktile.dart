import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskName;
  final Function toggleIsChecked;
  TaskTile(
      {required this.isChecked,
      required this.taskName,
      required this.toggleIsChecked});
  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: Text(taskName,
            style: TextStyle(
                decoration: isChecked ? TextDecoration.lineThrough : null)),
        trailing: Checkbox(
          activeColor: Colors.lightBlueAccent,
          value: isChecked,
          onChanged: (isChecked) {
            toggleIsChecked(isChecked);
          },
        ));
  }
}
