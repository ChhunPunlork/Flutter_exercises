import 'package:fashion_app/test.dart';
import 'package:fashion_app/test1.dart';
import 'package:fashion_app/zendo_app_ui/collect_screen/collect_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CollectScreen(),
    );
  }
}
