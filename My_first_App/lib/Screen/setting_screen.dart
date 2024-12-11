import 'package:flutter/material.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.more_vert)),
        ],
        title: Text("Settings"),
      ),
      body: Center(
        child: Column(
          children: [
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Manage Account"),
              trailing: Icon(Icons.arrow_forward_ios),
              subtitle: Text("lork@gmail.com"),
              onTap: (){
                print("Tapped");
              },
            ),
            ListTile(
              leading: Icon(Icons.privacy_tip),
              title: Text("Privacy and Setting"),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            ListTile(
              leading: Icon(Icons.privacy_tip),
              title: Text("Notification"),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Setting"),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            ListTile(
              leading: Icon(Icons.notifications),
              title: Text("Notification"),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            ListTile(
              leading: Icon(Icons.info),
              title: Text("About us"),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            ListTile(
              leading: Icon(Icons.help),
              title: Text("Help and Support"),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            ListTile(
              leading: Icon(Icons.logout, color: Colors.red,),
              title: Text("Log out"),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
          ],
        ),
      ),
    );
  }
}