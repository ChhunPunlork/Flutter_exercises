import 'package:flutter/material.dart';

class Pageview extends StatefulWidget {
  Pageview({super.key});

  @override
  State<Pageview> createState() => _PageviewState();
}

class _PageviewState extends State<Pageview> {
  var listImage = [
    "https://tse1.mm.bing.net/th?id=OIP.nV611FncOUGz84HcVeTNRAHaEK&pid=Api&P=0&h=220",
    "https://tse2.mm.bing.net/th?id=OIP.Qgd_Mkr49_UkoQV-pNA5TgAAAA&pid=Api&P=0&h=220",
    "https://tse1.mm.bing.net/th?id=OIP.nV611FncOUGz84HcVeTNRAHaEK&pid=Api&P=0&h=220",
    "https://tse1.mm.bing.net/th?id=OIP.nV611FncOUGz84HcVeTNRAHaEK&pid=Api&P=0&h=220",
  ];

  final pageController = PageController(initialPage: 1, viewportFraction: 0.9);

  var activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text("Page View Widget"),
          ),
        ),
        body: Column(
          children: [
            SizedBox(
              height: size.height * 0.3,
              child: PageView(
                onPageChanged: (index) {
                  print("Index page: $index");
                  setState(() {
                    activeIndex = index;
                  });
                },
                controller: pageController,
                children: listImage
                    .map((img) => Image.network(
                          img,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ))
                    .toList(),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                  listImage.length,
                  (index) => Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CircleAvatar(
                          radius: 7,
                          backgroundColor:
                              activeIndex == index ? Colors.red : Colors.grey,
                        ),
                      )),
            )
          ],
        ));
  }
}
