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
              children: <Widget>[
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                        color: kActiveCardColour,
                        borderRadius: BorderRadius.circular(10.0)),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                        color: kActiveCardColour,
                        borderRadius: BorderRadius.circular(10.0)),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                  color: kActiveCardColour,
                  borderRadius: BorderRadius.circular(10.0)),
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                        color: kActiveCardColour,
                        borderRadius: BorderRadius.circular(10.0)),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                        color: kActiveCardColour,
                        borderRadius: BorderRadius.circular(10.0)),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
