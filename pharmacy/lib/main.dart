import 'package:flutter/material.dart';

import 'HomeWork/HW section 41/collect_screen/collect_screens.dart';
import 'HomeWork/HW section 41/home_screen/home_screen.dart';

void main(){
  runApp(MyApp());
}

 class MyApp extends StatelessWidget {
   const MyApp({super.key});

   @override
   Widget build(BuildContext context) {
     return MaterialApp(
       home: CollectScreenss(),
     );
   }
 }

