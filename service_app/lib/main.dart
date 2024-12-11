import 'package:flutter/material.dart';

import 'Buttons/DropDownButton/dropdown_button.dart';
import 'Buttons/elevatedButton/elevated_button.dart';
import 'Buttons/floatAcButton/float_Action_button.dart';
import 'Buttons/outlineButton/outline_button.dart';
import 'Buttons/textButton/text_button.dart';
import 'Home_screen/home_scr.dart';
void main(){
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: dropdownBt(),
    );
  }
}
