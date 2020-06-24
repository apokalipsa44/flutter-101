import 'package:flutter/material.dart';
import 'package:bmi/constants.dart';

class Tile extends StatelessWidget {
  final Color color;
  final Widget widgetChild;
  final Function onPress;

  const Tile({@required this.color, this.widgetChild, this.onPress});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onPress,
        child: Container(
          margin: EdgeInsets.all(8.0),
          decoration: BoxDecoration(
              color: color, borderRadius: BorderRadius.circular(10.0)),
        ),
      ),
    );
  }
}
