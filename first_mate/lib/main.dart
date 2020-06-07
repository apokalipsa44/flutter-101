import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('muppets'),
          backgroundColor: Colors.red,
        ),
        body: MuppetPage(),
      ),
    ),
  );
}

class MuppetPage extends StatefulWidget {
  @override
  _MuppetPageState createState() => _MuppetPageState();
}

class _MuppetPageState extends State<MuppetPage> {
  var muppetLeftNumber = 1;
  var muppetRightNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: FlatButton(
              onPressed: () {
                setState(() {
                  muppetDrawer();
                });
              },
              child: Image.asset('images/muppet$muppetLeftNumber.jpg'),
            ),
          ),
          Expanded(
            flex: 1,
            child: FlatButton(
              onPressed: () {
                setState(() {
                  muppetDrawer();
                });
              },
              child: Image.asset('images/muppet$muppetRightNumber.jpg'),
            ),
          )
        ],
      ),
    );
  }

  void muppetDrawer() {
    muppetLeftNumber = Random().nextInt(6) + 1;
    muppetRightNumber = Random().nextInt(6) + 1;
  }
}
