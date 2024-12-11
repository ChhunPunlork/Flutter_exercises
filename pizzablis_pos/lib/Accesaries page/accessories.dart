import 'package:flutter/material.dart';

class Accessories extends StatefulWidget {
  const Accessories({super.key});

  @override
  State<Accessories> createState() => _AccessoriesState();
}

//right
class Products_RightHand {
  final String pro_ImgUrl_R;
  final String pro_name_R;
  final String pro_detail_R;
  final String Pro_price_R;

  Products_RightHand(
      {required this.pro_ImgUrl_R,
      required this.pro_name_R,
      required this.pro_detail_R,
      required this.Pro_price_R});
}

List<Products_RightHand> _listProRightHand = [
  Products_RightHand(
      pro_ImgUrl_R:
          "https://www.pngall.com/wp-content/uploads/5/Mobile-Phone-Accessories-PNG-Free-Download.png",
      pro_name_R: "AirPods Pro presence",
      pro_detail_R:
          "Blackout your AirPods Pro presence, and dangle that business from anything",
      Pro_price_R: "12.00"),
  Products_RightHand(
      pro_ImgUrl_R:
          "https://tse2.mm.bing.net/th?id=OIP.5z_8Y57AnkqqUngEn9GlbQHaHa&pid=Api&P=0&h=220",
      pro_name_R: "AirPods Pro presence",
      pro_detail_R:
          "Blackout your AirPods Pro presence, and dangle that business from anything",
      Pro_price_R: "12.00 "),
];

//left
class Products_leftHand {
  final String pro_ImgUrl_L;
  final String pro_name_L;
  final String pro_detail_L;
  final String Pro_price_L;

  Products_leftHand(
      {required this.pro_ImgUrl_L,
      required this.pro_name_L,
      required this.pro_detail_L,
      required this.Pro_price_L});
}

List<Products_leftHand> _listProLefthand = [
  Products_leftHand(
      pro_ImgUrl_L:
          "https://www.pngall.com/wp-content/uploads/5/Mobile-Phone-Accessories-PNG-Free-Download.png",
      pro_name_L: "AirPods Pro presence",
      pro_detail_L:
          "Blackout your AirPods Pro presence, and dangle that business from anything",
      Pro_price_L: "12.00"),
  Products_leftHand(
      pro_ImgUrl_L:
          "https://tse2.mm.bing.net/th?id=OIP.5z_8Y57AnkqqUngEn9GlbQHaHa&pid=Api&P=0&h=220",
      pro_name_L: "AirPods Pro presence",
      pro_detail_L:
          "Blackout your AirPods Pro presence, and dangle that business from anything",
      Pro_price_L: "12.00 "),
];

class Titles {
  final String title;

  Titles({required this.title});
}

List<Titles> _listTitles = [
  Titles(title: "Tech accessories"),
  Titles(title: "EyesWears"),
  Titles(title: "Wallets"),
  Titles(title: "Jawellies"),
];

class _AccessoriesState extends State<Accessories> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Icon(
                Icons.shopping_basket_outlined,
                size: 30,
              )
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                  image: NetworkImage(
                      "https://tse1.mm.bing.net/th?id=OIP.l0XXn1OxZMTS0wOG-ajfgQHaFj&pid=Api&P=0&h=220"),
                  fit: BoxFit.cover,
                )),
                height: 250,
              ),
              SizedBox(
                height: 20,
              ),
              Stack(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Accessories ",
                        style: TextStyle(fontSize: 30, color: Colors.black),
                      ),
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              "123",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ]),
                    ],
                  ),
                ],
              ),
              Container(
                height: 50,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: _listTitles.length,
                  itemBuilder: (context, index) {
                    final Title = _listTitles[index];
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        children: [
                          Text(
                            Title.title,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          SizedBox(width: 20),
                        ],
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Card(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.grey[300]
                        ),
                        width: 180,
                        height: 250,
                        child: Column(
                          children: [
                            Image.network("https://www.pngall.com/wp-content/uploads/5/Mobile-Phone-Accessories-PNG-Free-Download.png"),
                            Text("Phone Accessories "),
                            Text("\$\27.00 ", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),)
                          ],
                        ),
                      ),
                    ),
                    Card(
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.grey[300]
                        ),
                        width: 180,
                        height: 250,
                        child: Column(
                          children: [
                            Image.network("https://www.pngall.com/wp-content/uploads/5/Phone-Accessories-PNG.png"),
                            Text("Phone Accessories"),
                            Text("\$\27.00 ", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),)
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Card(
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.grey[300]
                        ),
                        width: 180,
                        height: 250,
                        child: Column(
                          children: [
                            Image.network("https://www.pngall.com/wp-content/uploads/5/Phone-Accessories-PNG-File-Download-Free.png"),
                            Text("Phone Accessories", style: TextStyle(fontSize: 15, color: Colors.green),),
                            Text("\$\7.00 ", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),)
                          ],
                        ),
                      ),
                    ),
                    Card(
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.grey[300]
                        ),
                        width: 180,
                        height: 250,
                        child: Column(
                          children: [
                            Image.network("https://www.pngall.com/wp-content/uploads/5/Phone-Accessories-PNG-Image-HD.png", height: 180,),
                            Text("Phone Accessories", style: TextStyle(fontSize: 15, color: Colors.green),),
                            Text("\$\30.00 ", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),)
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Card(
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.grey[300]
                        ),
                        width: 180,
                        height: 250,
                        child: Column(
                          children: [
                            Image.network("https://www.pngall.com/wp-content/uploads/5/Phone-Accessories-PNG-Image-File.png"),
                            Text("Phone accesories", style: TextStyle(fontSize: 15, color: Colors.green),),
                            Text("\$\17.00 ", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),)
                          ],
                        ),
                      ),
                    ),
                    Card(
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.grey[300]
                        ),
                        width: 180,
                        height: 250,
                        child: Column(
                          children: [
                            Image.network("https://www.pngall.com/wp-content/uploads/5/Phone-Accessories-PNG-High-Quality-Image.png"),
                            Text("Phone accesories", style: TextStyle(fontSize: 15, color: Colors.green),),
                            Text("\$\8.00 ", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),)
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Card(
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.grey[300]
                        ),
                        width: 180,
                        height: 250,
                        child: Column(
                          children: [
                            Image.network("https://www.pngall.com/wp-content/uploads/5/Phone-Accessories-PNG-Image.png"),
                            Text("Phone accessories", style: TextStyle(fontSize: 15, color: Colors.green),),
                            Text("\$\37.00 ", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),)
                          ],
                        ),
                      ),
                    ),
                    Card(
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.grey[300]
                        ),
                        width: 180,
                        height: 250,
                        child: Column(
                          children: [
                            Image.network("https://www.pngall.com/wp-content/uploads/5/Mobile-Phone-Accessories-Transparent.png"),
                            Text("Phone accessories", style: TextStyle(fontSize: 15, color: Colors.green),),
                            Text("\$\20.00 ", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),)
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
