import 'package:flutter/material.dart';
import 'package:my_first_app/Practices/collect_screens.dart';

void main(){
  runApp(RootWidget());
}
class RootWidget extends StatelessWidget {
  const RootWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CollectScreens(),
    );
  }
}
