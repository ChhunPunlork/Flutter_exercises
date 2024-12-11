import 'dart:ui';

import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movies_app/HomeScreen/brave_mv/brave_mv.dart';

import 'package:movies_app/HomeScreen/capitan_mv/capitan_mv.dart';
import 'package:movies_app/HomeScreen/stealth_mv/stealth_mv.dart';

import '../downloadScreen/download_screens.dart';
import '../profileScreen/profile_screens.dart';
import '../saveScreen/save_screens.dart';
import '../searchScreen/search_screens.dart';

import 'movies_detail/most_popular_detail/advenger/advenger.dart';
import 'movies_detail/most_popular_detail/juan_wick/juan_wick.dart';
import 'movies_detail/most_popular_detail/justice_league/justice_league.dart';
import 'movies_detail/most_popular_detail/moster_house/monster_house.dart';
import 'movies_detail/most_popular_detail/mostpopular_screens.dart';

class HomeScreens extends StatefulWidget {
  const HomeScreens({super.key});

  @override
  State<HomeScreens> createState() => _HomeScreensState();
}

class headerListTitle {
  final String title;

  headerListTitle({required this.title});
}

List<headerListTitle> _listTitle = [
  headerListTitle(title: "All"),
  headerListTitle(title: "Action"),
  headerListTitle(title: "Comedy"),
  headerListTitle(title: "Romance"),
];
var _listNVGB = [
  HomeScreens(),
  SearchScreens(),
  SaveScreens(),
  DownloadScreens(),
  ProfileScreens()
];

int selectedIndex = 0;

int activeTitle = 0;

class LatestImage {
  final String UrlimgLatest;

  LatestImage({required this.UrlimgLatest});
}

List<LatestImage> _listLatestImage = [
  LatestImage(
    UrlimgLatest:
        "https://tse3.mm.bing.net/th?id=OIP.IKg01CDZPHLGOKSCA9EL_gHaLH&pid=Api&P=0&h=220",
  ),
  LatestImage(
    UrlimgLatest:
        "https://tse3.mm.bing.net/th?id=OIP.wnl-P7gJzG3ayBtumyqltAHaLH&pid=Api&P=0&h=220",
  ),
  LatestImage(
    UrlimgLatest:
        "https://tse4.mm.bing.net/th?id=OIP.ezcZDNwC18nndTJ-mWSmWAHaLH&pid=Api&P=0&h=220",
  ),
  LatestImage(
    UrlimgLatest:
        "https://tse2.mm.bing.net/th?id=OIP.5Zj4iPD_EYohzbjuF2HFQgHaK8&pid=Api&P=0&h=220",
  ),
  LatestImage(
    UrlimgLatest:
        "https://tse3.mm.bing.net/th?id=OIP.edONLekYdKtBX90i7ZgcFwHaKn&pid=Api&P=0&h=220",
  ),
];

class PopularImage {
  final String imgUrl;

  PopularImage({required this.imgUrl});
}

List<PopularImage> _listPPUrl = [
  PopularImage(
    imgUrl:
        "https://tse1.mm.bing.net/th?id=OIP.c3VjSn9aWHYI-JidQavqcgHaK-&pid=Api&P=0&h=220",
  ),
  PopularImage(
    imgUrl:
        "https://tse3.mm.bing.net/th?id=OIP.1umjRUVLTbPQCPVU_q1HPgHaK-&pid=Api&P=0&h=220",
  ),
  PopularImage(
    imgUrl:
        "https://tse4.mm.bing.net/th?id=OIP.m0WHztjn01Y2PyeUMF9mxwHaK2&pid=Api&P=0&h=220",
  ),
  PopularImage(
    imgUrl:
        "https://tse3.mm.bing.net/th?id=OIP.iAsDFqwmY2RZZVAt9kiojwHaLH&pid=Api&P=0&h=220",
  ),
  PopularImage(
    imgUrl:
        "https://tse4.mm.bing.net/th?id=OIP.fS7drXelAzXScI8AZCpW0QHaKX&pid=Api&P=0&h=220",
  ),
  PopularImage(
    imgUrl:
        "https://tse3.mm.bing.net/th?id=OIP.-6TGwYgfzcuBNWDjjEOpHQHaKs&pid=Api&P=0&h=220",
  ),
];
var listpage = [
  "https://tse4.mm.bing.net/th?id=OIP.QhGShvr6vkAEFhptHOy5tAHaEu&pid=Api&P=0&h=220",
  "https://tse2.mm.bing.net/th?id=OIP.oVadnAO66hdY_ZLlqontFQHaF7&pid=Api&P=0&h=220",
  "https://tse4.mm.bing.net/th?id=OIP.CBGvX0Yqcc7nWM3hxqhQGQHaEo&pid=Api&P=0&h=220"
];
var _listMv = [
  JusticeLeague(),
  MonsterHouse(),
  JuanWick(),
  Advenger(),
  JusticeLeague(),
  JusticeLeague(),
];
int activeIndex = 0;
int selectedMv = 0;
final pageController = PageController(initialPage: 0);

class _HomeScreensState extends State<HomeScreens> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xFF07041f),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(children: [
              SizedBox(
                height: size.height * 0.4,
                child: GestureDetector(
                  onTap: () {
                    if (activeIndex == 0) {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => CapitanMv()));
                    } else if (activeIndex == 1) {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => StealthMv()));
                    } else if (activeIndex == 2) {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => BraveMv()));
                    }
                  },
                  child: PageView(
                    onPageChanged: (index) {
                      setState(() {
                        activeIndex = index;
                      });
                    },
                    controller: pageController,
                    children: listpage
                        .map((img) => Image.network(
                              img,
                              width: double.infinity,
                              fit: BoxFit.cover,
                              height: 200,
                            ))
                        .toList(),
                  ),
                ),
              ),
              Positioned(
                bottom: 10,
                right: 0,
                left: 0,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                        listpage.length,
                        (index) => Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: CircleAvatar(
                                radius: 4,
                                backgroundColor: activeIndex == index
                                    ? Colors.red
                                    : Colors.grey,
                              ),
                            ))),
              )
            ]),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 20),
              child: Text(
                "Catagories",
                style: GoogleFonts.afacad(
                    textStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Colors.white)),
              ),
            ),
            Container(
              height: 100,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: _listTitle.length,
                  itemBuilder: (context, index) {
                    final Title = _listTitle[index];
                    return Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5),
                          child: ElevatedButton(
                            onPressed: () {
                              activeTitle = index;
                              setState(() {
                                print("Title index count: $index");
                              });
                            },
                            child: Text(Title.title,
                                style: GoogleFonts.afacad(
                                    textStyle: TextStyle(
                                        fontSize: 20, color: Colors.white))),
                            style: ButtonStyle(
                              minimumSize:
                                  WidgetStateProperty.all<Size>(Size(100, 35)),
                              backgroundColor: WidgetStateProperty.all<Color>(
                                activeTitle == index
                                    ? Colors.red
                                    : Colors.transparent,
                              ),
                            ),
                          ),
                        )
                      ],
                    );
                  }),
            ),
            //most popular
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    "Most Popular",
                    style: GoogleFonts.afacad(
                        textStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                            color: Colors.white)),
                  ),
                ),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => MostpopularScreens()),
                      );
                    },
                    child: Text("See All",
                        style: GoogleFonts.afacad(
                            textStyle:
                                TextStyle(fontSize: 20, color: Colors.white)))),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Container(
                height: 200,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: _listPPUrl.length,
                    itemBuilder: (context, index) {
                      final imgUrlPP = _listPPUrl[index];
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                child: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      selectedMv = index;
                                    });
                                    Navigator.push(context,
                                        MaterialPageRoute(builder: (context) => _listMv[index]),
                                    );
                                  },
                                  child: Image.network(imgUrlPP.imgUrl),
                                ))
                          ],
                        ),
                      );
                    }),
              ),
            ),
            //latest
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 20),
                  child: Text(
                    "Latest Movies",
                    style: GoogleFonts.afacad(
                        textStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                            color: Colors.white)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: TextButton(
                      onPressed: () {},
                      child: Text("See All",
                          style: GoogleFonts.afacad(
                              textStyle: TextStyle(
                                  fontSize: 20, color: Colors.white)))),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Container(
                height: 200,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: _listLatestImage.length,
                    itemBuilder: (context, index) {
                      final imgLatest = _listLatestImage[index];
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                child: GestureDetector(
                                  onTap: () {},
                                  child: Image.network(imgLatest.UrlimgLatest),
                                ))
                          ],
                        ),
                      );
                    }),
              ),
            ),
            SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
