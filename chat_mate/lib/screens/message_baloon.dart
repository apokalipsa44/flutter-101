import 'package:chat_mate/services/authorization_service.dart';
import 'package:flutter/material.dart';

class MessageBaloon extends StatefulWidget {
  @override
  _MessageBaloonState createState() => _MessageBaloonState();
}

class _MessageBaloonState extends State<MessageBaloon> {
  final AuthorizationService authorizationService = AuthorizationService();

  @override
  void initState() {
    authorizationService.getCurrentUser();
  }

  void printSome() {
    print('=======');
    print(authorizationService.loggedUser.email);
  }

  @override
  Widget build(BuildContext context) {
    printSome();
    return Container();
  }
}
