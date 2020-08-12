import 'package:flutter/material.dart';

class AppIcon extends StatelessWidget {
  const AppIcon({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: CircleAvatar(
        radius: 40,
        backgroundColor: Colors.white,
        child: Icon(
          Icons.list,
          color: Colors.lime,
          size: 60,
        ),
      ),
    );
  }
}
