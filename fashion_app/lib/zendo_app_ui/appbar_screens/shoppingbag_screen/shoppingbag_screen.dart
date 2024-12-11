import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../notification_screen/notification_screen.dart';

class ShoppingbagScreen extends StatelessWidget {
  const ShoppingbagScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(width: 0,),
          Text("My shopping bag", style: GoogleFonts.afacad(),),
          IconButton(
              onPressed: (){},
              icon: Icon(Icons.favorite_border_outlined),
          )
        ],
      )),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Column(
                children: [
                  Text("Your bag is empty", style: GoogleFonts.afacad(textStyle: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),),
                  Text("Check out our latest arrivals stay up-to date with latest styles",textAlign: TextAlign.center, style: GoogleFonts.afacad(textStyle: TextStyle(fontSize: 20,)),),
                  SizedBox(height: 20,),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                      ),
                      minimumSize: Size(300, 50),
                      backgroundColor: Colors.black
                    ),
                      onPressed: (){
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => NotificationScreen())
                        );
                      },
                      child: Text("Start shopping", style: GoogleFonts.afacad(textStyle: TextStyle(color: Colors.white, fontSize: 20)),),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
