import 'package:flutter/material.dart';

class elevatedBt extends StatefulWidget {
  const elevatedBt({super.key});

  @override
  State<elevatedBt> createState() => _elevatedBtState();
}

class _elevatedBtState extends State<elevatedBt> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {},
        child: Text("love"),
      ),
    );
  }
}
