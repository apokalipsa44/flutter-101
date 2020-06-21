import 'package:flutter/material.dart';
import 'package:bmi/constants.dart';

class Tile extends StatelessWidget {
  final Color color;
  final Widget widgetChild;
  final Function onPress;

  const Tile({Key key, this.color, this.widgetChild, this.onPress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.all(8.0),
        decoration: BoxDecoration(
            color: kActiveCardColour,
            borderRadius: BorderRadius.circular(10.0)),
      ),
    );
  }
}
