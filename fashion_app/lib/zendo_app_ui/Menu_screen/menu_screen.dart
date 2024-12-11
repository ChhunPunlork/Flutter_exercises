import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Home_screen/home_screen.dart';
import '../appbar_screens/notification_screen/notification_screen.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Column(
              children: [
                TextButton(
                    onPressed: (){
                      Navigator.push(
                          context,
                        MaterialPageRoute(builder: (context) => NotificationScreen())
                      );
                    },
                    child: Text("Women", style: GoogleFonts.afacad(fontSize: 40, color: Colors.black, fontWeight: FontWeight.bold,),
                    )
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
