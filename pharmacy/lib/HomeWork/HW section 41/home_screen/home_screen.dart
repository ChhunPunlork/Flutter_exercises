import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constant/imageconst.dart';

class HomesScreen extends StatefulWidget {
  const HomesScreen({super.key});

  @override
  State<HomesScreen> createState() => _HomesScreenState();
}
class headerImg {
  final Color bgheader;
  final String imgAss;
  final String title;
  headerImg({required this.bgheader, required this.imgAss, required this.title});
}
List<headerImg> _imgHd =[
  headerImg(
      bgheader: CareColor,
      imgAss: "assets/imgs/care-icon-2.jpg",
      title: "Care"
  ),
  headerImg(
      bgheader: heartColor,
      imgAss: "assets/imgs/heart.jpg",
      title: "Heart"
  ),
  headerImg(
      bgheader: brainColor,
      imgAss: "assets/imgs/brain.jpg",
      title: "Brain"
  ),
  headerImg(
      bgheader: stomachColor,
      imgAss: "assets/imgs/lung.jpg",
      title: "Lunge"
  ),
  headerImg(
      bgheader: lungeColor,
      imgAss: "assets/imgs/stomach.jpg",
      title: "Stomach"
  ),
];

class _HomesScreenState extends State<HomesScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Color(0xFFf1f9ff),
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Your Logo"),
            IconButton(onPressed: (){},
                icon: Icon(Icons.notifications_none_outlined,size: 35,)
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                color: Colors.white,
                child: TextFormField(
                  decoration: InputDecoration(
                      labelText: 'Search',
                      labelStyle: TextStyle(color: Color(0xFFd6d4de)),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(),
                      ),
                    prefixIcon: Icon(Icons.search, color: Color(0xFFd6d4de),),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 200,
                color: Colors.white,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Categories", style: GoogleFonts.afacad(textStyle: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),),
                  TextButton(
                      onPressed: (){},
                      child: Text("Show All".toUpperCase(), style: GoogleFonts.afacad(textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Colors.blue)),)
                  )
                ],
              ),
          Container(
            height: 200,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/background.jpg'), // Replace with your image asset path
                fit: BoxFit.cover, // Adjust the fit as needed
              ),
            ),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: _imgHd.length,
              itemBuilder: (context, index) {
                final img = _imgHd[index];
                return Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(10), // Adjust padding as needed
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 40,
                            backgroundColor: img.bgheader,
                            backgroundImage: AssetImage(img.imgAss),
                          ),
                          SizedBox(height: 5),
                          Text(img.title),
                        ],
                      ),
                    ),
                    SizedBox(width: 20),
                  ],
                );
              },
            ),
          )

          ],
          ),
        ),
      ),
    );
  }
}
