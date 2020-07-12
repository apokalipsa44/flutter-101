import 'package:flutter/material.dart';
import 'package:chat_mate/screens/welcome_screen.dart';
import 'package:chat_mate/screens/login_screen.dart';
import 'package:chat_mate/screens/registration_screen.dart';
import 'package:chat_mate/screens/chat_screen.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings routeSettings) {
    final args = routeSettings.arguments;

    switch (routeSettings.name) {
      case '/welcone':
        return MaterialPageRoute(builder: (_) => WelcomeScreen());
      case '/login':
        return MaterialPageRoute(builder: (_) => LoginScreen());
      case 'chat':
        return MaterialPageRoute(builder: (_) => ChatScreen());
      case '/register':
        return MaterialPageRoute(builder: (_) => RegistrationScreen());
      default:
        return MaterialPageRoute(builder: (_) => WelcomeScreen());
    }
  }
}
