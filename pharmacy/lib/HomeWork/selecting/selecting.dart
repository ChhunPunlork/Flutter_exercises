import 'package:flutter/material.dart';

class Selecting extends StatefulWidget {
  const Selecting({super.key});

  @override
  State<Selecting> createState() => _SelectingState();
}
var listImage = [
  "assets/images/T-shirtOlive.png",
  "assets/images/T-shirtBrown.png",
];

class _SelectingState extends State<Selecting> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: size.height * 0.4,
              child: PageView(
                children: listImage.map((img) => Image.asset(
                    img,
                  width: double.infinity,
                  fit: BoxFit.cover,
                )).toList(),

              ),
            )
          ],
        ),
      ),
    );
  }
}
