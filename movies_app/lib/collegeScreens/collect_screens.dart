import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movies_app/HomeScreen/home_screens.dart';
import 'package:movies_app/downloadScreen/download_screens.dart';
import 'package:movies_app/profileScreen/profile_screens.dart';
import 'package:movies_app/saveScreen/save_screens.dart';
import 'package:movies_app/searchScreen/search_screens.dart';

class CollectScreens extends StatefulWidget {
  const CollectScreens ({super.key});

  @override
  State<CollectScreens> createState() => _CollectScreensState();
}
var _listNVGB = [
  HomeScreens(),
  SearchScreens(),
  SaveScreens(),
  DownloadScreens(),
  ProfileScreens()
];

int selectedIndex = 0;
class _CollectScreensState extends State<CollectScreens> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF07041f),
      body: _listNVGB[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xFF07041f),
        currentIndex: selectedIndex,
        onTap: (index){
          selectedIndex = index;
          setState(() {
            print("index: $index");
          });
        },
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined, size: 35,),
              label: "Home"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.search, size: 35,),
              label: "Search"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.save, size: 35,),
              label: "Save"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.file_download_outlined, size: 35,),
              label: "Download"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_2_outlined, size: 35,),
              label: "Me"
          ),
        ],
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white38,
        selectedLabelStyle: GoogleFonts.afacad(textStyle : TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
        unselectedLabelStyle: GoogleFonts.afacad(textStyle : TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
      ),
    );
  }
}
