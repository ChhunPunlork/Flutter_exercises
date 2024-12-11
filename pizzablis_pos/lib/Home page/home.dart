import 'package:flutter/material.dart';
import '../Accesaries page/accessories.dart';

class Home_screen extends StatefulWidget {
  const Home_screen({super.key});

  @override
  State<Home_screen> createState() => _Home_screenState();
}

String dropDownValue = 'Man';

class AccessoriesProduct {
  final String ProdUrl;
  final String Pro_detail;
  final double price;

  AccessoriesProduct(
      {required this.ProdUrl, required this.Pro_detail, required this.price});
}

List<AccessoriesProduct> _ProList = [
  AccessoriesProduct(
    //watch
    ProdUrl:
        "https://tse4.mm.bing.net/th?id=OIP.1l9V-VYqFq91yxlZVaNiyQHaI4&pid=Api&P=0&h=220",
    Pro_detail: "POEDAGAR 615 Luxury Men Watches Top Brand Man",
    price: 5.99,
  ),
  AccessoriesProduct(
    //belt
    ProdUrl:
        "https://d2j6dbq0eux0bg.cloudfront.net/images/14732643/942169965.jpg",
    Pro_detail: "Double Prong Belt, Dark Brown",
    price: 52.00,
  ),
  AccessoriesProduct(
    ProdUrl:
        //shoes
        "https://liger.com.my/wp-content/uploads/sites/18/2020/10/LG-33-s.png",
    Pro_detail: "LG-336 Lace-Up Ankle Boots Brown",
    price: 5.999,
  ),
];

class Titles {
  final String Title;
  final String Number;

  Titles({required this.Title, required this.Number});
}

List<Titles> _listTitle = [
  Titles(
    Title: "Accessories",
    Number: '12',
  ),
  Titles(
    Title: "Clothes",
    Number: '23',
  ),
  Titles(
    Title: "Shoes",
    Number: '14',
  ),
  Titles(
    Title: "Glasses",
    Number: '10',
  ),
  Titles(
    Title: "Watches",
    Number: '12',
  )
];

class _Home_screenState extends State<Home_screen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFf8f8f8),
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(70),
          child: AppBar(
            backgroundColor: Colors.white,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.search,
                  size: 35,
                ),
                Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      width: 110,
                      height: 35,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(color: Colors.black)),
                      child: DropdownButton<String>(
                        value: dropDownValue,
                        onChanged: (String? newValue) {
                          setState(() {
                            dropDownValue = newValue!;
                          });
                        },
                        items: const [
                          DropdownMenuItem<String>(
                            value: "Man",
                            child: Text("Man"),
                          ),
                          DropdownMenuItem<String>(
                            value: "Wowan",
                            child: Text("Woman"),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Stack(
                      alignment: Alignment.topRight,
                      children: [
                        Icon(Icons.shopping_bag_outlined, size: 40,),
                        Container(
                          padding: EdgeInsets.all(4),
                          decoration: BoxDecoration(
                            color: Colors.black,
                            shape: BoxShape.circle,
                          ),
                          child: Text("3", style: TextStyle(color: Colors.white, fontSize: 25),),
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Hi, Alex!",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
                Text(
                  "New Collection from Versace",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.grey),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: 600,
                  height: 250,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.grey),
                  ),
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.network(
                          "https://i.pinimg.com/564x/cf/2c/39/cf2c396b33d2fe02f4f39583f88c7a40.jpg",
                          fit: BoxFit.cover,
                          width:
                              300, // Adjust the BoxFit as per your requirement
                        ),
                      ),
                      SizedBox(width: 10),
                      Icon(
                        Icons.arrow_forward,
                        size: 50,
                        color: Colors.black,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 50,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: _listTitle.length,
                      itemBuilder: (context, index) {
                        final Titles = _listTitle[index];
                        return Stack(
                          children: [
                            Row(
                              children: [
                                Text(
                                  Titles.Title,
                                  style: TextStyle(
                                      fontSize: 25, color: Colors.grey),
                                ),
                                Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text(
                                        Titles.Number,
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ]),
                                SizedBox(
                                  width: 20,
                                ),
                              ],
                            ),
                          ],
                        );
                      }),
                ),
                SizedBox(
                  height: 5,
                ),
                SizedBox(
                  height: 270,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: _ProList.length,
                    itemBuilder: (context, index) {
                      final Products = _ProList[index];
                      return Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Container(
                              height: 270,
                              width: 200,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.black),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    top: 10, right: 5, left: 5, bottom: 5),
                                child: Column(
                                  children: [
                                    Image.network(
                                      Products.ProdUrl,
                                      fit: BoxFit.cover,
                                      width: 150,
                                      height: 150,
                                    ),
                                    Text(
                                      Products.Pro_detail,
                                      style: TextStyle(color: Colors.black),
                                    ),
                                    Text(
                                      Products.price.toString() + "  dollar",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Container(
                  width: 500,
                  height: 60,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Accessories()),
                      );
                    },
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
                      padding: MaterialStateProperty.all<EdgeInsetsGeometry>(EdgeInsets.all(15)),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("See all accessories",style: TextStyle(color: Colors.white),),
                        SizedBox(width: 10,),
                        Icon(Icons.arrow_forward_ios, color: Colors.white, size: 20,)
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
