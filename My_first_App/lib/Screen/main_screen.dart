import 'package:flutter/material.dart';
import 'package:my_first_app/Screen/Notification_Screen.dart';
import 'package:my_first_app/Screen/Search_Screen.dart';
import 'package:my_first_app/Screen/Setting_Screen.dart';
import 'package:my_first_app/Screen/home_screen.dart';
import 'package:my_first_app/constants/constants.dart';



class MainScreen extends StatefulWidget {
  MainScreen({super.key});

  @override
  State<MainScreen> createState() => _ExamplescaffoldState();
}

class _ExamplescaffoldState extends State<MainScreen> {
  //appBar
  var _lstScreens = [
    NewsFeedScreen(),
    SearchScreen(),
    NotificationScreen(),
    SettingScreen()
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      // drawer: Drawer(
      //   child: Column(
      //     children: [
      //         UserAccountsDrawerHeader(
      //           accountEmail: Text("Lork@gmail.com"),
      //           accountName: Text("Chhun Punlork"),
      //           currentAccountPicture: Image.network("https://www.pngrepo.com/png/384670/512/account-avatar-profile-user.png"),
      //         ),
      //         ListTile(
      //           leading: Icon(Icons.home),
      //           title: Text("Home"),
      //           trailing: Icon(Icons.arrow_forward_ios),
      //         ),
      //         ListTile(
      //           leading: Icon(Icons.person),
      //           title: Text("Account"),
      //           trailing: Icon(Icons.arrow_forward_ios),
      //          ),
      //         ListTile(
      //           leading: Icon(Icons.settings),
      //           title: Text("Setting"),
      //           trailing: Icon(Icons.arrow_forward_ios),
      //         ),
      //         Spacer(),
      //         ListTile(
      //           leading: Icon(Icons.settings),
      //           title: Text("logout"),
      //           trailing: Icon(Icons.logout),
      //       ),
      //       ],
      //     )
      //   ),
      body: _lstScreens[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: (index){
          selectedIndex = index;
          setState(() {

          });
          print("Current indexs $index");
        },
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home",),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search",),
          BottomNavigationBarItem(icon: Icon(Icons.notifications), label: "Notifications",),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Setting",),
        ],
      ),
    );
  }
}
