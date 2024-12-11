import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Menu_screen/menu_screen.dart';
import '../appbar_screens/shoppingbag_screen/shoppingbag_screen.dart';

class WishlistScreen extends StatelessWidget {
  const WishlistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text("Wish List", style: GoogleFonts.afacad(fontSize: 20),),
            SizedBox(width: 110,),
            IconButton(
                onPressed: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ShoppingbagScreen())
                  );
                },
                icon: Icon(Icons.shopping_bag_outlined, size: 30,),
            )
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Aww...Snap. Your wish list is empty!"  ,style: GoogleFonts.afacad(textStyle: TextStyle(fontSize: 27, fontWeight: FontWeight.bold)),),
            Text("Check out oue latest arrivals and stay up to date with our latest styles!", textAlign: TextAlign.center,style: GoogleFonts.afacad(textStyle: TextStyle(fontSize: 20)),),
            SizedBox(height: 20,),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)
                ),
                minimumSize: Size(300, 50),
                backgroundColor: Colors.black,
              ),
                onPressed: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MenuScreen())
                );
                },
                child: Text("Start shopping", style: GoogleFonts.afacad(fontSize: 20, color: Colors.white),)
            )
          ],
        ),
      ),
    );
  }
}
