import 'package:flutter/material.dart';

class textBt extends StatefulWidget {
  const textBt({super.key});

  @override
  State<textBt> createState() => _textBtState();
}

class _textBtState extends State<textBt> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: (){},
        child: Text("Lork Button"),
      )
    );
  }
}