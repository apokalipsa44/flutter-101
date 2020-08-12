import 'package:flutter/material.dart';

class TaskList extends StatelessWidget {
  const TaskList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        ListTile(
          title: Text('first task'),
          trailing: Checkbox(
            value: false,
          ),
        ),
        ListTile(
          title: Text('second task'),
          trailing: Checkbox(
            value: false,
          ),
        ),
        ListTile(
          title: Text('next task'),
          trailing: Checkbox(
            value: false,
          ),
        )
      ],
    );
  }
}
