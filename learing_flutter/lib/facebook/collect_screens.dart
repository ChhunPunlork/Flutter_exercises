import 'package:flutter/material.dart';
import 'package:learing_flutter/facebook/home_screen.dart';
import 'package:learing_flutter/facebook/person_screen.dart';
import 'package:learing_flutter/facebook/search_screen.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  var _listScreen = [
    HomeScreen(),
    PersonScreen(),
    SearchScreen(),
  ];

  int SelectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: _listScreen[SelectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: SelectedIndex,
        onTap: (index){
          SelectedIndex = index;
          setState(() {

          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label : "Profile"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
        ],
      ),
    );
  }
}