import 'package:fashion_app/zendo_app_ui/appbar_screens/shoppingbag_screen/shoppingbag_screen.dart';
import 'package:flutter/material.dart';

class string extends StatefulWidget {
  const string({super.key});

  @override
  State<string> createState() => _stringState();
}

class _stringState extends State<string> {
  get Fluttertoast => null;

  void dropdownCallback(String? selectedValue){
    if(selectedValue is String){
      setState(() {
       // _dropdownValue = selectedValue;
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: DropdownButton(
        items: [
          DropdownMenuItem<String>(
            child: Text("Lork"),
            value: "Lork",
          ),
          DropdownMenuItem<String>(
            child: Text("Lork"),
            value: "Lork",
          ),
          DropdownMenuItem<String>(
            child: Text("Lork"),
            value: "Lork",
          ),
        ],
            //value: _dropdownValue,
            onChanged: dropdownCallback,
      )),
    );
  }
}
