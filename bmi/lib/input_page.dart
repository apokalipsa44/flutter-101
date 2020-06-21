import 'package:bmi/components/tile.dart';
import 'package:bmi/constants.dart';
import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[Tile(), Tile()],
            ),
          ),
          Tile(),
          Expanded(
            child: Row(
              children: <Widget>[Tile(), Tile()],
            ),
          )
        ],
      ),
    );
  }
}
