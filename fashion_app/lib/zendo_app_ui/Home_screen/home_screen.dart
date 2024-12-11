import 'package:fashion_app/test.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../appbar_screens/notification_screen/notification_screen.dart';
import '../appbar_screens/shoppingbag_screen/shoppingbag_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => NotificationScreen()));
                },
                icon: Icon(
                  Icons.notifications_none_outlined,
                  size: 30,
                )),
            Text("ZANDO",
                style: GoogleFonts.afacad(
                    textStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 40))),
            IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ShoppingbagScreen()));
                },
                icon: Icon(
                  Icons.shopping_bag_outlined,
                  size: 30,
                ))
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 240,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Row(
                      children: [
                        //1
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => NotificationScreen())
                            );
                          },
                          child: Image.asset(
                            "assets/images/discount70.jpg",
                            width: 400,
                          ),
                        ),
                        SizedBox(width: 10,),
                        //2
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => NotificationScreen())
                            );
                          },
                          child: Image.asset(
                            "assets/images/product.png",
                            width: 400,
                          ),
                        ),
                        SizedBox(width: 10,),
                        //3
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => NotificationScreen())
                            );
                          },
                          child: Image.asset(
                            "assets/images/promotion4.jpg",
                            width: 400,
                          ),
                        ),
                        SizedBox(width: 10,),
                        //4
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => NotificationScreen())
                            );
                          },
                          child: Image.asset(
                            "assets/images/discount1.jpg",
                            width: 400,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            Container(
              height: 250,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          children: [
                            //1
                            Column(
                              children: [
                                ElevatedButton(
                                    onPressed: (){
                                    },
                                    style: ButtonStyle(
                                        backgroundColor: MaterialStateProperty.all<Color>(Colors.redAccent),
                                        minimumSize: WidgetStateProperty.all<Size>(Size(50, 60))
                                    ),
                                    child: Text("New".toUpperCase(), style: GoogleFonts.afacad(color: Colors.white, fontSize:25, fontWeight: FontWeight.bold),)
                                ),
                                Text("New In", style: GoogleFonts.afacad(textStyle: TextStyle(fontSize: 20)),)
                              ],
                            ),
                            SizedBox(width: 20,),
                            //2
                            Column(
                              children: [
                                ElevatedButton(
                                    onPressed: (){
                                    },
                                    style: ButtonStyle(
                                        backgroundColor: MaterialStateProperty.all<Color>(Colors.redAccent),
                                        minimumSize: WidgetStateProperty.all<Size>(Size(50, 60))
                                    ),
                                    child: Image.asset("assets/images/clothes-icon-png-12.jpg", width: 40, color: Colors.white,)
                                ),
                                Text("Top", style: GoogleFonts.afacad(textStyle: TextStyle(fontSize: 20)),)
                              ],
                            ),
                            SizedBox(width: 20,),
                            //3
                            Column(
                              children: [
                                ElevatedButton(
                                    onPressed: (){
                                    },
                                    style: ButtonStyle(
                                        backgroundColor: MaterialStateProperty.all<Color>(Colors.redAccent),
                                        minimumSize: WidgetStateProperty.all<Size>(Size(50, 60))
                                    ),
                                    child: Image.asset("assets/images/jean-21.jpg",width: 40, color: Colors.white,)
                                ),
                                Text("Bottom", style: GoogleFonts.afacad(textStyle: TextStyle(fontSize: 20)),)
                              ],
                            ),
                            SizedBox(width: 20,),
                            //4
                            Column(
                              children: [
                                ElevatedButton(
                                    onPressed: (){
                                    },
                                    style: ButtonStyle(
                                        backgroundColor: MaterialStateProperty.all<Color>(Colors.redAccent),
                                        minimumSize: WidgetStateProperty.all<Size>(Size(50, 60))
                                    ),
                                    child: Image.asset("assets/images/running-shoe-icon-15.jpg",width: 40, color: Colors.white,)
                                ),
                                Text("Shoes", style: GoogleFonts.afacad(textStyle: TextStyle(fontSize: 20)),)
                              ],
                            ),
                            SizedBox(width: 20,),
                            //5
                            Column(
                              children: [
                                ElevatedButton(
                                    onPressed: (){
                                    },
                                    style: ButtonStyle(
                                        backgroundColor: MaterialStateProperty.all<Color>(Colors.redAccent),
                                        minimumSize: WidgetStateProperty.all<Size>(Size(50, 60))
                                    ),
                                    child: Image.asset("assets/images/discount-icon-png-0.jpg",width:40, color: Colors.white,)
                                ),
                                Text("Clearance", style: GoogleFonts.afacad(textStyle: TextStyle(fontSize: 20)),)
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          children: [
                            //1
                            Column(
                              children: [
                                ElevatedButton(
                                    onPressed: (){
                                    },
                                    style: ButtonStyle(
                                        backgroundColor: MaterialStateProperty.all<Color>(Colors.redAccent),
                                        minimumSize: WidgetStateProperty.all<Size>(Size(50, 60))
                                    ),
                                    child: Image.asset("assets/images/dress-icon-21.jpg",width:40, color: Colors.white,)
                                ),
                                Text("Dresses", style: GoogleFonts.afacad(textStyle: TextStyle(fontSize: 20)),)
                              ],
                            ),
                            SizedBox(width: 20,),
                            //2
                            Column(
                              children: [
                                ElevatedButton(
                                    onPressed: (){
                                    },
                                    style: ButtonStyle(
                                        backgroundColor: MaterialStateProperty.all<Color>(Colors.redAccent),
                                        minimumSize: WidgetStateProperty.all<Size>(Size(50, 60))
                                    ),
                                    child: Image.asset("assets/images/coat-icon-12.jpg",width:40, color: Colors.white,)
                                ),
                                Text("Jackets", style: GoogleFonts.afacad(textStyle: TextStyle(fontSize: 20)),)
                              ],
                            ),
                            SizedBox(width: 20,),
                            //3
                            Column(
                              children: [
                                ElevatedButton(
                                    onPressed: (){
                                    },
                                    style: ButtonStyle(
                                        backgroundColor: MaterialStateProperty.all<Color>(Colors.redAccent),
                                        minimumSize: WidgetStateProperty.all<Size>(Size(50, 60))
                                    ),
                                    child: Image.asset("assets/images/denim-icon-17.jpg",width:40, color: Colors.white,)
                                ),
                                Text("Denim", style: GoogleFonts.afacad(textStyle: TextStyle(fontSize: 20)),)
                              ],
                            ),
                            SizedBox(width: 20,),
                            //4
                            Column(
                              children: [
                                ElevatedButton(
                                    onPressed: (){
                                    },
                                    style: ButtonStyle(
                                        backgroundColor: MaterialStateProperty.all<Color>(Colors.redAccent),
                                        minimumSize: WidgetStateProperty.all<Size>(Size(50, 60))
                                    ),
                                    child: Image.asset("assets/images/black-hat-icon-15.jpg",width:40, color: Colors.white,)
                                ),
                                Text("Accessories", style: GoogleFonts.afacad(textStyle: TextStyle(fontSize: 20)),)
                              ],
                            ),
                            SizedBox(width: 20,),
                            //5
                            Column(
                              children: [
                                ElevatedButton(
                                    onPressed: (){
                                    },
                                    style: ButtonStyle(
                                        backgroundColor: MaterialStateProperty.all<Color>(Colors.redAccent),
                                        minimumSize: WidgetStateProperty.all<Size>(Size(50, 60))
                                    ),
                                    child: Text("sale".toUpperCase(), style: GoogleFonts.afacad(textStyle: TextStyle(fontSize: 25,color: Colors.white, fontWeight: FontWeight.bold)),)
                                ),
                                Text("New In", style: GoogleFonts.afacad(textStyle: TextStyle(fontSize: 20)),)
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              height: 380,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        GestureDetector(
                          onTap: (){
                            Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => ShoppingbagScreen())
                            );
                          },
                          child: Image.asset("assets/images/lifestyle2.jpg", height: 180,),
                        ),
                        GestureDetector(
                          onTap: (){
                            Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => ShoppingbagScreen())
                            );
                          },
                          child: Image.asset("assets/images/sportlife1.jpg", height: 180,),
                        ),
                        GestureDetector(
                          onTap: (){
                            Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => ShoppingbagScreen())
                            );
                          },
                          child: Image.asset("assets/images/smartcasual1.jpg", height: 180,),
                        ),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        GestureDetector(
                          onTap: (){
                            Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => ShoppingbagScreen())
                            );
                          },
                          child: Image.asset("assets/images/lifestyle1.jpg", height: 180,),
                        ),
                        GestureDetector(
                          onTap: (){
                            Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => ShoppingbagScreen())
                            );
                          },
                          child: Image.asset("assets/images/sportlife2.jpg", height: 180,),
                        ),
                        GestureDetector(
                          onTap: (){
                            Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => ShoppingbagScreen())
                            );
                          },
                          child: Image.asset("assets/images/smartcasual2.jpg", height: 180,),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
