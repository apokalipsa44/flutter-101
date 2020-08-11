import 'package:flutter/material.dart';

class MessageBaloon extends StatelessWidget {
  String messageText;
  String messageSender;

  MessageBaloon(this.messageText, this.messageSender);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Padding(
            padding:
                const EdgeInsets.only(left: 0, top: 0, bottom: 3, right: 12),
            child: Text(
              messageSender,
              style: TextStyle(
                fontSize: 15,
              ),
            ),
          ),
          Material(
            color: Colors.lightBlue,
            elevation: 8,
            borderRadius: BorderRadius.circular(8),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              child: Text(
                '$messageText from $messageSender',
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
        ],
      ),
    );
    ;
  }
}
