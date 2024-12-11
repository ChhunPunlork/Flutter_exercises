import 'package:flutter/material.dart';
import 'package:pharmacy/HomeWork/HW%20section%2041/bag_screen/bag_screen.dart';
import 'package:pharmacy/HomeWork/HW%20section%2041/fav_screen/fav_screen.dart';
import 'package:pharmacy/HomeWork/HW%20section%2041/profile_screen/profile_screen.dart';
import '../home_screen/home_screen.dart';

class CollectScreenss extends StatefulWidget {
  const CollectScreenss({super.key});

  @override
  State<CollectScreenss> createState() => _CollectScreensState();
}
var _listPage = [
  HomesScreen(),
  FavsScreen(),
  BagsScreen(),
  ProfilesScreen()
];

class _CollectScreensState extends State<CollectScreenss> {

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _listPage[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: (index) {
          selectedIndex = index;
          setState(() {
            print("Corrent idex: $index");
          });
          print("Current indexs $index");
        },
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, size: 35,),
            label: "",
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border_outlined, size: 35,),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart_outlined, size: 35,),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_2_outlined, size: 35,),
              label: ""),
        ],
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.black54,
        //selectedLabelStyle: GoogleFonts.afacad(textStyle : TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
       // unselectedLabelStyle: GoogleFonts.afacad(textStyle : TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
      ),
    );
  }
}
