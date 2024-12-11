import 'package:flutter/material.dart';
import 'HomeScreen/home_screens.dart';
import 'collegeScreens/collect_screens.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CollectScreens(),
    );
  }
}

