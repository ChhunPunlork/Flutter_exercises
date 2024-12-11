import 'package:flutter/material.dart';
import 'package:service_app/constants_color/bg_color.dart';

import '../drawer_scr/account_scree/acc_screen.dart';

class HomeScr extends StatelessWidget {
  const HomeScr({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
        appBar: AppBar(
          backgroundColor: Color(0xFFe05d0d),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                "VET Express",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 100,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                child: Icon(Icons.call, color: Color(0xFFe05d0d),),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                child: Icon(Icons.notifications, color: Color(0xFFe05d0d)),
              )
            ],
          ),
        ),
        drawer: Drawer(
            child: ListView(
          children: [
            DrawerHeader(
              child: Image.asset(
                "assets/images/VrthLogo.png",
                height: 150,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListTile(
                  leading: Icon(
                    Icons.card_membership,
                    color: orangeColor,
                    size: 35,
                  ),
                  title: Text(
                    "Membership Card",
                    style: TextStyle(color: blueColor, fontSize: 20),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                ElevatedButton(onPressed: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => AccScreen())
                  );
                },
                    child: ListTile(
                      leading: Icon(
                        Icons.account_circle,
                        color: Color(0xFFe05d0d),
                        size: 35,
                      ),
                      title: Text(
                        "Account",
                        style: TextStyle(color: Color(0xFF2a2277), fontSize: 20),
                      ),
                    ),
                ),
                SizedBox(
                  height: 10,
                ),
                ListTile(
                  leading: Icon(
                    Icons.settings,
                    color: Color(0xFFe05d0d),
                    size: 35,
                  ),
                  title: Text(
                    "Setting",
                    style: TextStyle(color: Color(0xFF2a2277), fontSize: 20),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                ListTile(
                  leading: Icon(
                    Icons.contact_phone,
                    color: Color(0xFFe05d0d),
                    size: 35,
                  ),
                  title: Text(
                    "Contact Us",
                    style: TextStyle(color: Color(0xFF2a2277), fontSize: 20),
                  ),
                ),
                SizedBox(
                  height: 340,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomeScr()),
                    );
                  },
                  child: ListTile(
                    leading: Icon(
                      Icons.logout,
                      color: Colors.red,
                      size: 35,
                    ),
                    title: Text(
                      "Logout",
                      style: TextStyle(color: Colors.red, fontSize: 20),
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                Text("    Version 1.3.2s", style: TextStyle(fontSize: 20),)
              ],
            ),
          ],
        )),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10),
                Container(
                  height: 300,
                  width: 400,
                  color: Colors.white,
                  child: Column(
                    children: [
                      SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 125,
                            child: Column(
                              children: [
                                Icon(Icons.directions_bus_filled_outlined,size: 80, color: Color(0xFFe05d0d),),
                                Text("Virak Buntham", style: TextStyle(fontSize: 15),)
                              ],
                            ),
                          ),
                          Container(
                            width: 125,
                            child: Column(
                              children: [
                                Icon(Icons.airplane_ticket_sharp,size: 80, color: Color(0xFFe05d0d),),
                                Text("VET Air Bus", style: TextStyle(fontSize: 15),)
                              ],
                            ),
                          ),
                          Container(
                            width: 125,
                            child: Column(
                              children: [
                                Icon(Icons.directions_boat_filled,size: 80, color: Color(0xFFe05d0d),),
                                Text("Buva Sea", style: TextStyle(fontSize: 15),)
                              ],
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 40,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 125,
                            child: Column(
                              children: [
                                Icon(Icons.handshake_outlined,size: 80, color: Color(0xFFe05d0d),),
                                Text("Self Service", style: TextStyle(fontSize: 15),)
                              ],
                            ),
                          ),
                          Container(
                            width: 125,
                            child: Column(
                              children: [
                                Icon(Icons.delivery_dining,size: 80, color: Color(0xFFe05d0d),),
                                Text("Book Delivery", style: TextStyle(fontSize: 15),)
                              ],
                            ),
                          ),
                          Container(
                            width: 125,
                            child: Column(
                              children: [
                                Icon(Icons.local_taxi_outlined,size: 80, color: Color(0xFFe05d0d),),
                                Text("Vehicle Rentral", style: TextStyle(fontSize: 15),)
                              ],
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Text("Other Service", style: TextStyle(fontSize:20, color: Colors.grey),),
                SizedBox(height: 20,),
                Container(
                  height: 110,
                  color: Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 125,
                        child: Column(
                          children: [
                            Icon(Icons.logo_dev, size: 80, color: Color(0xFFe05d0d),),
                            Text("VTENH", style: TextStyle(color: Colors.grey, fontSize: 15),)
                          ],
                        ),
                      ),
                      Container(
                        width: 125,
                        child: Column(
                          children: [
                            Icon(Icons.beach_access, size: 80, color: Color(0xFFe05d0d),),
                            Text("Resort", style: TextStyle(color: Colors.grey, fontSize: 15),)
                          ],
                        ),
                      ),
                      Container(
                        width: 125,
                        child: Column(
                          children: [
                            Icon(Icons.shopping_bag, size: 80, color: Color(0xFFe05d0d),),
                            Text("VPhsar", style: TextStyle(color: Colors.grey,fontSize: 15),)
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Text("Tracking", style: TextStyle(fontSize:20, color: Colors.grey),),
                SizedBox(height: 20,),
                Container(
                  height: 110,
                  color: Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 125,
                        child: Column(
                          children: [
                            Icon(Icons.fact_check_outlined, size: 80, color: Color(0xFFe05d0d),),
                            Text("Ticket history", style: TextStyle(color: Colors.grey, fontSize: 15),)
                          ],
                        ),
                      ),
                      Container(
                        width: 125,
                        child: Column(
                          children: [
                            Icon(Icons.qr_code_scanner, size: 80, color: Color(0xFFe05d0d),),
                            Text("Track Parcel", style: TextStyle(color: Colors.grey, fontSize: 15),)
                          ],
                        ),
                      ),
                      Container(
                        width: 130,
                        child: Column(
                          children: [
                            Icon(Icons.perm_contact_cal_outlined, size: 80, color: Color(0xFFe05d0d),),
                            Text("Parcel History", style: TextStyle(color: Colors.grey,fontSize: 15),)
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Text("Promotion", style: TextStyle(fontSize:20, color: Colors.grey),),
                SizedBox(height: 20,),
              ],
            ),
          ),
        ),
    );

  }
}
