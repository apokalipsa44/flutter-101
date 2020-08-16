import 'package:flutter/material.dart';

class BottomSheetAddTask extends StatefulWidget {
  @override
  _BottomSheetAddTaskState createState() => _BottomSheetAddTaskState();
}

class _BottomSheetAddTaskState extends State<BottomSheetAddTask> {
  String taskName;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.only(
            top: 20,
            left: 15,
            right: 15,
            bottom: MediaQuery.of(context).viewInsets.bottom),
        child: Column(
          children: <Widget>[
            Text(
              'add new task',
              style: TextStyle(
                fontSize: 18,
                color: Colors.black45,
              ),
            ),
            TextField(
              onChanged: (value) => taskName = value,
              autofocus: true,
              textAlign: TextAlign.center,
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: FlatButton(
                onPressed: () => print(taskName),
                color: Colors.lime,
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
      ),
    );
  }
}
