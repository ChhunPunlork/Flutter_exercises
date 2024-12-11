import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class dropdownBt extends StatefulWidget {
  const dropdownBt({super.key});

  @override
  State<dropdownBt> createState() => _dropdownBtState();
}
String dropdownValue = "opt1";
class _dropdownBtState extends State<dropdownBt> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: DropdownButton<String>(
              value: dropdownValue,
              onChanged: (String? newValue){
                setState(() {
                  dropdownValue = newValue!;
                });
              },
              items: <String>["opt1", "opt2", "opt3"]
                  .map((String value){
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
