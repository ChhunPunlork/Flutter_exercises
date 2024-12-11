import 'package:flutter/material.dart';

class outlineBt extends StatefulWidget {
  const outlineBt({super.key});

  @override
  State<outlineBt> createState() => _outlineBtState();
}

class _outlineBtState extends State<outlineBt> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: OutlinedButton(
        onPressed: (){},
        child: Text("Lork Button"),
      )
    );
  }
}