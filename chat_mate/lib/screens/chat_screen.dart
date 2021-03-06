import 'package:chat_mate/screens/message_baloon.dart';
import 'package:chat_mate/services/authorization_service.dart';
import 'package:flutter/material.dart';
import 'package:chat_mate/constants.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final authorizationService = AuthorizationService();
  final messageTextController = TextEditingController();
  String messageText;

  @override
  void initState() {
    super.initState();
    authorizationService.getCurrentUser();
//    getMessages();
//    messagesAsStream();
  }

//  void getMessages() async {
//    final messages = await _firestore.collection('messages').getDocuments();
//    print('--------------------------------');
//    print(messages.documents.length);
//    for (var messaage in messages.documents) {
//      print(messaage.data);
//    }
//  }

//  void messagesAsStream() async {
//    await for (var messages in _firestore.collection('messages').snapshots()) {
//      print('====================');
//      for (var message in messages.documents) {
//        print(message.data);
//      }
//    }
//  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: null,
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.close),
              onPressed: () {
                authorizationService.auth.signOut();
                Navigator.pop(context);
              }),
        ],
        title: Text('⚡️Chat'),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: SafeArea(
        child: Container(
          color: Color.fromARGB(255, 222, 255, 255),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              StreamBuilder<QuerySnapshot>(
                stream: authorizationService.firestore
                    .collection("messages")
                    .snapshots(),
                builder: (context, snapshot) {
                  if (!snapshot.hasData) {
                    return Center(
                      child: CircularProgressIndicator(
                        backgroundColor: Colors.deepOrange,
                      ),
                    );
                  }
                  final messages = snapshot.data.documents;
                  messages.sort((a, b) => b.data['timestamp']
                      .toString()
                      .compareTo(a.data['timestamp'].toString()));
                  List<MessageBaloon> messageWidgets = [];
                  for (var message in messages) {
                    String messageText = message.data['text'];
                    String messageSender = message.data['sender'];
                    String loggedUser = authorizationService.loggedUser.email;
                    var messageWidget = MessageBaloon(
                        messageText: messageText,
                        messageSender: messageSender,
                        isMe: messageSender == loggedUser);
                    messageWidgets.add(messageWidget);
                  }
                  return Expanded(
                    child: ListView(
                      reverse: true,
                      children: messageWidgets,
                    ),
                  );
                },
              ),
              Container(
                decoration: kMessageContainerDecoration,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                      child: TextField(
                        style: TextStyle(color: Colors.black54),
                        controller: messageTextController,
                        onChanged: (value) {
                          messageText = value;
                        },
                        decoration: kMessageTextFieldDecoration,
                      ),
                    ),
                    FlatButton(
                      onPressed: () {
                        DateTime timestamp = DateTime.now();
                        messageTextController.clear();
                        authorizationService.firestore
                            .collection('messages')
                            .add({
                          'text': messageText,
                          'sender': authorizationService.loggedUser.email,
                          'timestamp': timestamp
                        });
                      },
                      child: Text(
                        'Send',
                        style: kSendButtonTextStyle,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
