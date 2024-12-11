import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movies_app/HomeScreen/movies_detail/most_popular_detail/advenger/advenger.dart';
import 'package:movies_app/HomeScreen/movies_detail/most_popular_detail/juan_wick/juan_wick.dart';
import 'package:movies_app/HomeScreen/movies_detail/most_popular_detail/justice_league/justice_league.dart';
import 'package:movies_app/HomeScreen/movies_detail/most_popular_detail/moster_house/monster_house.dart';
import 'package:movies_app/collegeScreens/collect_screens.dart';
import 'package:movies_app/constants/colors.dart';


class MostpopularScreens extends StatefulWidget {
  const MostpopularScreens({super.key});

  @override
  State<MostpopularScreens> createState() => _MostpopularScreensState();
}

// var listPPImgDT = [
//   "https://tse1.mm.bing.net/th?id=OIP.c3VjSn9aWHYI-JidQavqcgHaK-&pid=Api&P=0&h=220",
//   "https://tse3.mm.bing.net/th?id=OIP.1umjRUVLTbPQCPVU_q1HPgHaK-&pid=Api&P=0&h=220",
//   "https://tse4.mm.bing.net/th?id=OIP.m0WHztjn01Y2PyeUMF9mxwHaK2&pid=Api&P=0&h=220",
//   "https://tse3.mm.bing.net/th?id=OIP.iAsDFqwmY2RZZVAt9kiojwHaLH&pid=Api&P=0&h=220",
//   "https://tse4.mm.bing.net/th?id=OIP.fS7drXelAzXScI8AZCpW0QHaKX&pid=Api&P=0&h=220",
//   "https://tse3.mm.bing.net/th?id=OIP.-6TGwYgfzcuBNWDjjEOpHQHaKs&pid=Api&P=0&h=220",
// ];

class eachMv {
  final String imgUrl_mv;
  final String title_mv;
  final String describeMv;

  eachMv(
      {required this.imgUrl_mv,
      required this.title_mv,
      required this.describeMv});
}
var _listMv = [
  JusticeLeague(),
  MonsterHouse(),
  JuanWick(),
  Advenger(),
  JusticeLeague(),
];

List<eachMv> listMovies = [
  eachMv(
      imgUrl_mv:
          "https://tse1.mm.bing.net/th?id=OIP.c3VjSn9aWHYI-JidQavqcgHaK-&pid=Api&P=0&h=220",
      title_mv: "Justice League: Crisis on Infinite Earths",
      describeMv: "Action, Adventage"),
  eachMv(
      imgUrl_mv:
      "https://tse3.mm.bing.net/th?id=OIP.1umjRUVLTbPQCPVU_q1HPgHaK-&pid=Api&P=0&h=220",
      title_mv: "Cinemelodic: Crítica: MONSTER HOUSE (2006)",
      describeMv: "Comedy, Animate"),
  eachMv(
      imgUrl_mv:
      "https://tse4.mm.bing.net/th?id=OIP.m0WHztjn01Y2PyeUMF9mxwHaK2&pid=Api&P=0&h=220",
      title_mv: "John Wick: Chapter 4 (2023 Movie) Keanu Reeves, Donnie Yen, Bill Skarsgård",
      describeMv: "Comedy, action"),
  eachMv(
      imgUrl_mv:
      "https://tse3.mm.bing.net/th?id=OIP.iAsDFqwmY2RZZVAt9kiojwHaLH&pid=Api&P=0&h=220",
      title_mv: "Avengers: Infinity War (2018), the universe is in ruins",
      describeMv: "Adventage, comedy"),
  eachMv(
      imgUrl_mv:
      " https://tse3.mm.bing.net/th?id=OIP.-6TGwYgfzcuBNWDjjEOpHQHaKs&pid=Api&P=0&h=220",
      title_mv: "",
      describeMv: "comedy"),
];

class _MostpopularScreensState extends State<MostpopularScreens> {
  int selectedMv = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bluebackgroundColor,
      appBar: AppBar(
          backgroundColor: bluebackgroundColor,
          title: Text(
            "Welcome!",
            style: GoogleFonts.afacad(
                textStyle: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white)),
          )),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: <Widget> [
              Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 790,
                    child: ListView.builder(
                        itemCount: listMovies.length,
                        itemBuilder: (context, index) {
                          final Movie = listMovies[index];
                          return GestureDetector(
                            onTap: (){
                              setState(() {
                                selectedMv = index;
                                print("$index");
                                print("$selectedMv");
                              });
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => _listMv[selectedMv]),
                              );
                            },
                            child: Column(
                              children: [
                                SizedBox(
                                  child: Container(
                                      height: 180,
                                      decoration: BoxDecoration(
                                        color: Color(0xFF26243c),
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Row(
                                        children: [
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Container(
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(30),
                                              image: DecorationImage(
                                                image: NetworkImage(Movie.imgUrl_mv),
                                                fit: BoxFit.cover
                                              )
                                            ),
                                            height: 160,
                                            width: 100,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(10),
                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              children: [
                                                Row(
                                                  children: [
                                                    Container(
                                                      width: 200,
                                                      height: 150,
                                                      child: Column(
                                                        mainAxisAlignment: MainAxisAlignment.start,
                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                        children: [
                                                          Text(Movie.title_mv, style: GoogleFonts.afacad(textStyle: TextStyle(color: Colors.white,  fontSize: 20)),),
                                                          Text(Movie.describeMv, style: GoogleFonts.afacad(textStyle: TextStyle(color: Colors.white60, fontSize: 15)),),
                                                        ],
                                                      )
                                                    ),
                                                    SizedBox(
                                                      child: Column(
                                                        mainAxisAlignment: MainAxisAlignment.start,
                                                        children: [
                                                          IconButton(
                                                            onPressed: (){},
                                                            icon: Icon(Icons.menu_outlined),
                                                          ),
                                                        ],
                                                      ),
                                                      width: 10,
                                                      height: 150,
                                                    )
                                                  ],
                                                ),
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                )
                              ],
                            ),
                          );
                        }
                        ),
                  )
              ),
              SizedBox(height: 20,)
            ],
          ),
        ),
      ),
    );
  }
}
