import 'package:flutter/material.dart';

class AddNewTask extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0),
        height: 400.0,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(20.0),
                topLeft: Radius.circular(20.0)),
            color: Colors.white),
        child:
            Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
          TextField(
              textAlign: TextAlign.center,
              autofocus: true,
              decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 10.0, vertical: 0.0),
                  hintText: 'Type your task',
                  hintStyle: TextStyle(color: Colors.grey),
                  border: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Colors.lightBlueAccent.shade100),
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(18.0),
                          topLeft: Radius.circular(18.0))))),
          SizedBox(height: 4.0),
          ElevatedButton(
            onPressed: () {},
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 15.0),
              child: Text('ADD TASK'),
            ),
            style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(Colors.lightBlueAccent),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(18.0),
                        bottomLeft: Radius.circular(18.0))))),
          )
        ]),
      ),
    );
  }
}
