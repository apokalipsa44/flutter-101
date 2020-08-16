import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo_list/components/TodosContainer.dart';
import 'package:todo_list/components/AppIcon.dart';

class TaskScreen extends StatelessWidget {
  Widget buildBottomSheet(BuildContext context) {
    return Container();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lime,
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(8.0),
        child: FloatingActionButton(
          backgroundColor: Colors.lime,
          focusColor: Colors.red,
          highlightElevation: 10,
          elevation: 5,
          child: Icon(
            Icons.add,
            size: 40,
          ),
          onPressed: () =>
              showModalBottomSheet(context: context, builder: buildBottomSheet),
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(left: 12, top: 60, right: 12, bottom: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            AppIcon(),
            Padding(
              padding: const EdgeInsets.only(left: 8, top: 15),
              child: Text(
                'todo_list_app',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Colors.lime,
                    backgroundColor: Colors.white),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                '12 todos',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),
            TodosContainer()
          ],
        ),
      ),
    );
  }
}
