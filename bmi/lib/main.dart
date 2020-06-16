import 'package:flutter/material.dart';

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

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Super app'),
      ),
      body: Center(
        child: Text('test text'),
      ),
    );
  }
}

//floatingActionButton: Theme(
//data: ThemeData(accentColor: Colors.deepOrange),
//child: FloatingActionButton(
//child: Icon(Icons.attach_money),
//),
//),
