import 'package:flutter/material.dart';
import 'input_page.dart';
import 'constants.dart';

void main() {
  runApp(Bmi());
}

class Bmi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData.dark().copyWith(
            primaryColor: Color(0xff0a0e21),
            scaffoldBackgroundColor: Color(0xff0a0e21)),
        home: InputPage());
  }
}

//floatingActionButton: Theme(
//data: ThemeData(accentColor: Colors.deepOrange),
//child: FloatingActionButton(
//child: Icon(Icons.attach_money),
//),
//),
