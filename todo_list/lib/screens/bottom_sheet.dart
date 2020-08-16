import 'package:flutter/material.dart';

class BottomSheetAddTask extends StatefulWidget {
  @override
  _BottomSheetAddTaskState createState() => _BottomSheetAddTaskState();
}

class _BottomSheetAddTaskState extends State<BottomSheetAddTask> {
  String taskName;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 20,
        left: 15,
        right: 15,
        bottom: 20,
      ),
      child: Column(
        children: <Widget>[
          Text(
            'add new task',
            style: TextStyle(
              fontSize: 18,
              color: Colors.black45,
            ),
          ),
          TextField(onChanged: (value) => taskName = value),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: RaisedButton(
              onPressed: () => print(taskName),
              child: Text(
                'add',
                style: TextStyle(
                  color: Colors.black45,
                  fontSize: 20,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
