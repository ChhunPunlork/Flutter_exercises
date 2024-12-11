import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movies_app/HomeScreen/movies_detail/most_popular_detail/mostpopular_screens.dart';
import 'package:movies_app/collegeScreens/collect_screens.dart';
import 'package:movies_app/constants/colors.dart';

class MonsterHouse extends StatefulWidget {
  const MonsterHouse({super.key});

  @override
  State<MonsterHouse> createState() => _JusticeLeagueState();
}
var listTitiles = [
  "Episode",
  "Similar",
  "About"
];
int currentindex = 0;

class _JusticeLeagueState extends State<MonsterHouse> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: bluebackgroundColor,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(children: [
                Image.network(
                  "https://tse1.mm.bing.net/th?id=OIP.L16wmzufwglNN1RTLf1zKgAAAA&pid=Api&P=0&h=220",
                  width: double.infinity,
                  fit: BoxFit.cover,
                  height: size.height * 0.5,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30, left: 20),
                  child: IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => CollectScreens()),
                      );
                    },
                    icon: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.black54,
                    ),
                    style: ButtonStyle(
                        backgroundColor:
                            WidgetStateProperty.all<Color>(Colors.grey)),
                  ),
                ),
              ]),
              Text("MONSTER HOUSE (2006)",
                  style: GoogleFonts.afacad(textStyle: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 30)),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text("Published: january 6th 2006",
                    style: GoogleFonts.afacad(textStyle: TextStyle(color: Colors.white38, fontSize: 20,),), textAlign: TextAlign.center,),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: <Widget>[
                    ElevatedButton(
                        onPressed: (){},
                        child: Row(
                          children: [
                            Icon(Icons.play_arrow, color: Colors.white,size: 25,),
                            Text("Play", style: GoogleFonts.afacad(textStyle: TextStyle(color: Colors.white, fontSize: 25)),)
                          ],
                        ),
                       style: ButtonStyle(
                         backgroundColor: WidgetStateProperty.all<Color>(Colors.red),
                         minimumSize: WidgetStateProperty.all<Size>(Size(180, 50))
                       ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    ElevatedButton(
                      onPressed: (){},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Icon(Icons.download, color: Colors.white,size: 25,),
                          Text("Download", style: GoogleFonts.afacad(textStyle: TextStyle(color: Colors.white, fontSize: 25)),)
                        ],
                      ),
                      style: ButtonStyle(
                          backgroundColor: WidgetStateProperty.all<Color>(Color(0xFF13102b)),
                          minimumSize: WidgetStateProperty.all<Size>(Size(180, 50))
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Text("Not-official fanart designed by myself. Please, like and share. Hope you enjoy!",
                  style: GoogleFonts.afacad(textStyle: TextStyle(color: Colors.white38, fontSize: 20,),), textAlign: TextAlign.center,),
              ),
              Container(
                height: 100,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: listTitiles.length,
                  itemBuilder: (context, index){
                    return Row(
                      children: [
                        TextButton(
                            onPressed: (){
                              currentindex = index;
                              setState(() {
                                print("Count: $currentindex");
                              });
                            },
                            child: Text(listTitiles[index], style: GoogleFonts.afacad(textStyle: TextStyle(fontSize: 25, color: Colors.white60)),),
                          style: ButtonStyle(
                            minimumSize: WidgetStateProperty.all<Size>(Size(110, 30)),
                            backgroundColor: WidgetStateProperty.all<Color>(
                              currentindex == index? Colors.red : Colors.black45,
                            )
                          ),
                        ),
                        SizedBox(width: 40,)
                      ],
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
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
                      Stack(
                        alignment: Alignment.center,
                        children: [

                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                image: DecorationImage(
                                    image: NetworkImage(
                                        "https://tse1.mm.bing.net/th?id=OIP.L16wmzufwglNN1RTLf1zKgAAAA&pid=Api&P=0&h=220"),
                                    fit: BoxFit.cover)),
                            height: 150,
                            width: 150,
                          ),
                          Icon(Icons.play_arrow, size: 50, color: Colors.white60,),
                        ],
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                " Trailer",
                                style: GoogleFonts.afacad(
                                    textStyle: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        fontSize: 25)),
                              ),
                              SizedBox(width: 100,),
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.downloading_outlined,
                                    color: Colors.white60,
                                  ))
                            ],
                          ),
                          SizedBox(
                            width: 200,
                            height: 100,
                            child: Text(" The extended version of the 2017 superhero film directed by Zack Snyder, featuring Henry Cavill, Ben Affleck, Gal Gadot and more.",
                              style: GoogleFonts.afacad(textStyle: TextStyle(fontSize: 20, color: Colors.white60)),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              )
            ],
          ),
        ),
      ),
    );
  }
}
