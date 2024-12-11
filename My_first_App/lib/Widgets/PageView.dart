import 'package:flutter/material.dart';
void main(){
  runApp(PageviewExample());
}

class PageviewExample extends StatelessWidget {
  PageviewExample({super.key});

  var listImages = [
    "https://tse4.mm.bing.net/th?id=OIP.OqH4vPLjPGrgruv5o8tdngHaJ4&pid=Api&P=0&h=220",
    "https://tse4.mm.bing.net/th?id=OIP.3W3wGD8SXLcPM8VB1JGu2QHaLH&pid=Api&P=0&h=220",
    "https://tse1.mm.bing.net/th?id=OIP.c3VjSn9aWHYI-JidQavqcgHaK-&pid=Api&P=0&h=220",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PageView"),
      ),
      body: Text("Sot thy")
    );
  }
}
