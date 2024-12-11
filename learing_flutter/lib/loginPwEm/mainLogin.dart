import 'package:flutter/material.dart';
import 'package:learing_flutter/loginPwEm/login_screen_.dart';

import 'main_screen.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Your App Name',
      initialRoute: '/login',
      routes: {
        '/login': (context) => MyApp(),
        '/mainScreen': (context) => MainScreen(), // Replace MainScreen with your main app screen
      },
    );
  }
}
