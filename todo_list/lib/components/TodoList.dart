import 'package:flutter/material.dart';
import 'package:todo_list/components/TodoTile.dart';

class TaskList extends StatelessWidget {
  const TaskList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        TodoTile(todo: 'first task'),
        TodoTile(
          todo: 'second task',
        ),
        TodoTile(
          todo: 'third task',
        )
      ],
    );
  }
}
