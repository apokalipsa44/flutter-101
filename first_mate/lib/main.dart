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

class MuppetPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(flex: 1, child: Image.asset('images/muppet1.jpg')),
        Expanded(flex: 1, child: Image.asset('images/muppet2.jpg'))
      ],
    );
  }
}
