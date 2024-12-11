import 'package:flutter/material.dart';
import 'package:my_first_app/Practices/creates_screen.dart';
import 'package:my_first_app/Practices/homes_sreecn.dart';
import 'package:my_first_app/Practices/messages_screen.dart';
import 'package:my_first_app/Practices/profiles_screen.dart';
import 'package:my_first_app/Practices/searches_screen.dart';
import 'package:my_first_app/main.dart';

class CollectScreens extends StatefulWidget {
  CollectScreens({super.key});

  @override
  State<CollectScreens> createState() => _CollectScreensState();
}

class _CollectScreensState extends State<CollectScreens> {
  var _listScreens = [
    HomesSreecn(),
    SearchScreens(),
    CreateScreens(),
    MessageScreens(),
    ProfileScreens()
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Home"),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.notifications)),
          IconButton(onPressed: (){}, icon: Icon(Icons.search)),
        ],
      ),
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("Chhun Punlork"),
              accountEmail: Text("Lork2021@gmail.com"),
              currentAccountPicture: Image.network("https://cdn4.iconfinder.com/data/icons/pop-avatars/1000/accounts_avatars___man_male_person_user_account_avatar_muslim_turban-512.png"),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
          ],
        ),
      ),
      body: _listScreens[selectedIndex],
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
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: "Create"),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: "Message"),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle), label: "Profile"),
        ],
      ),
    );
  }
}
