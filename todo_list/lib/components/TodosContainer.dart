import 'package:flutter/material.dart';
import 'TodoList.dart';

class TodosContainer extends StatelessWidget {
  const TodosContainer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(top: 20, bottom: 0),
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
                bottomLeft: Radius.circular(2),
                bottomRight: Radius.circular(2),
              )),
          child: TaskList(),
        ),
      ),
    );
  }
}
