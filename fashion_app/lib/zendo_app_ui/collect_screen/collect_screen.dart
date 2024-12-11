import 'package:fashion_app/zendo_app_ui/Home_screen/home_screen.dart';
import 'package:fashion_app/zendo_app_ui/Menu_screen/menu_screen.dart';
import 'package:fashion_app/zendo_app_ui/Profile_screen/profile_screen.dart';
import 'package:fashion_app/zendo_app_ui/Search_screen/search_screen.dart';
import 'package:fashion_app/zendo_app_ui/WishList_screen/wishlist_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../appbar_screens/notification_screen/notification_screen.dart';
import '../appbar_screens/shoppingbag_screen/shoppingbag_screen.dart';

class CollectScreen extends StatefulWidget {
  const CollectScreen({super.key});

  @override
  State<CollectScreen> createState() => _CollectScreenState();
}

var _listScreens = [
  HomeScreen(),
  MenuScreen(),
  SearchScreen(),
  WishlistScreen(),
  ProfileScreen()
];

class _CollectScreenState extends State<CollectScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _listScreens[selectedIndex],
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
              icon: Icon(Icons.home_outlined, size: 35,),
              label: "Home",
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.menu, size: 35,),
              label: "Menu"),
          BottomNavigationBarItem(
              icon: Icon(Icons.search, size: 35,),
              label: "Search"),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border_outlined, size: 35,),
              label: "Wisg List"),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_2_outlined, size: 35,),
              label: "Me"),
        ],
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black54,
        selectedLabelStyle: GoogleFonts.afacad(textStyle : TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
        unselectedLabelStyle: GoogleFonts.afacad(textStyle : TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
      ),
    );
  }
}
