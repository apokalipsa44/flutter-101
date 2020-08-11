import 'package:flutter/material.dart';

class MessageBaloon extends StatelessWidget {
  final String messageText;
  final String messageSender;
  final bool isMe;

  MessageBaloon({this.messageText, this.messageSender, this.isMe});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment:
            isMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
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
            color: isMe ? Colors.lightBlue : Colors.white,
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
