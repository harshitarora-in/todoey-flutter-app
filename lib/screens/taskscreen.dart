import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todoey/widgets/addnewtask.dart';
import 'package:todoey/widgets/tasklist.dart';

class TasksScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              isScrollControlled: true,
              context: context,
              builder: (context) => AddNewTask());
        },
        backgroundColor: Colors.lightBlueAccent,
        child: Icon(
          CupertinoIcons.add,
          size: 24.0,
        ),
      ),
      backgroundColor: Colors.lightBlueAccent,
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Container(
          padding: EdgeInsets.fromLTRB(30.0, 60.0, 0, 30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 28.0,
                  child: Icon(CupertinoIcons.list_bullet,
                      color: Colors.lightBlueAccent, size: 32.0)),
              SizedBox(height: 10.0),
              Text('Todoey',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 42.0,
                      fontWeight: FontWeight.w700)),
              SizedBox(height: 5.0),
              Text('12 Tasks',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                  )),
            ],
          ),
        ),
        Expanded(
          child: Container(
            //padding: EdgeInsets.fromLTRB(00.0, 0, 0.0, 70.0),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30.0),
                    topLeft: Radius.circular(30.0))),
            child: TaskList(),
          ),
        )
      ]),
    );
  }
}
