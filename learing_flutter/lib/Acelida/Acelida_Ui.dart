import 'package:flutter/material.dart';

class AcelidaUi extends StatelessWidget {
  const AcelidaUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF224269),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.menu,
                      color: Colors.white,
                    )),
                Text(
                  "អេស៊ីលីដា",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Battambang",
                    color: Colors.white,
                  ),
                ),
                Image.asset(
                  'assets/images/AcelidaLogo.png',
                  height: 40, // Adjust height as needed
                ),
                SizedBox(width: 8)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.notifications,
                      color: Colors.white,
                    )),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.qr_code,
                      color: Colors.red,
                    ))
              ],
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Container(
            color: Color(0xFF1c3352),
            child: Column(
              children: [
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.payment,
                              color: Colors.white,
                              size: 50,
                            )),
                        Text(
                          "Pay-Me",
                          style: TextStyle(fontSize: 15, color: Colors.white),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.alt_route,
                              color: Colors.white,
                              size: 50,
                            )),
                        Text(
                          "Deposits",
                          style: TextStyle(fontSize: 15, color: Colors.white),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.arrow_circle_down,
                              color: Colors.white,
                              size: 50,
                            )),
                        Text(
                          "Transfer",
                          style: TextStyle(fontSize: 15, color: Colors.white),
                        )
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.mobile_screen_share,
                              color: Colors.white,
                              size: 50,
                            )),
                        Text(
                          "Mobile top up",
                          style: TextStyle(fontSize: 15, color: Colors.white),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.money,
                              color: Colors.white,
                              size: 50,
                            )),
                        Text(
                          "Deposits",
                          style: TextStyle(fontSize: 15, color: Colors.white),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.child_friendly,
                              color: Colors.white,
                              size: 50,
                            )),
                        Text(
                          "Quick cash",
                          style: TextStyle(fontSize: 15, color: Colors.white),
                        )
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.receipt,
                              color: Colors.white,
                              size: 50,
                            )),
                        Text(
                          "Payment",
                          style: TextStyle(fontSize: 15, color: Colors.white),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.qr_code_scanner,
                              color: Colors.white,
                              size: 50,
                            )),
                        Text(
                          "Scan QR",
                          style: TextStyle(fontSize: 15, color: Colors.white),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.account_balance,
                              color: Colors.white,
                              size: 50,
                            )),
                        Text(
                          "Account",
                          style: TextStyle(fontSize: 15, color: Colors.white),
                        )
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            height: 150,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 150,
                        height: 300,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                              color: Colors.black, // Border color
                              width: 1, // Border width
                            ),
                          ),
                          child: Column(
                            children: [
                              Icon(
                                Icons.favorite,
                                color: Color(0xFF1c3352),
                              ),
                              Text("Favorite"),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 150,
                        height: 300,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                              color: Colors.black, // Border color
                              width: 1, // Border width
                            ),
                          ),
                          child: Column(
                            children: [
                              Icon(
                                Icons.post_add,
                                color: Color(0xFF1c3352),
                              ),
                              Text("Promotion"),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 150,
                        height: 300,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                              color: Colors.black, // Border color
                              width: 1, // Border width
                            ),
                          ),
                          child: Column(
                            children: [
                              Icon(
                                Icons.favorite,
                                color: Color(0xFF1c3352),
                              ),
                              Text("Favorite"),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 150,
                        height: 300,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                              color: Colors.black, // Border color
                              width: 1, // Border width
                            ),
                          ),
                          child: Column(
                            children: [
                              Icon(
                                Icons.favorite,
                                color: Color(0xFF1c3352),
                              ),
                              Text("Favorite"),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: Container(
              child: Image.asset(
                "assets/images/Navigation.jpg",
                fit: BoxFit.cover, // Adjust the fit as needed
              ),
            ),
          ),
        ],
      ),
    );
  }
}
