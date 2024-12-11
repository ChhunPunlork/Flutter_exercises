import 'package:flutter/material.dart';

import '../textButton/text_button.dart';

class iconBt extends StatefulWidget {
  const iconBt({super.key});

  @override
  State<iconBt> createState() => _iconBtState();
}

class _iconBtState extends State<iconBt> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: IconButton(
          onPressed: (){
          },
          icon: Icon(Icons.star)
        ),
      ),
    );
  }
}
