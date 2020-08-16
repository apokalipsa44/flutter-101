import 'package:flutter/material.dart';

class TodoTile extends StatelessWidget {
  String todo;

  TodoTile({this.todo});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(todo),
      trailing: Checkbox(
        value: false,
      ),
    );
  }
}
