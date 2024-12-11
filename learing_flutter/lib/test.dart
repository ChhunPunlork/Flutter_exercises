import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Testing(),
    );
  }
}

class Testing extends StatelessWidget {
  const Testing({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(children: [
          Container(
            height: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.grey,
            ),
            child: Row(
              children: [
                Container(
                  height: 200,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      // image: DecorationImage(
                      //   image: NetworkImage("https://tse2.mm.bing.net/th?id=OIP.PyEgv4zTdOQBWrsqT8cPWwHaE8&pid=Api&P=0&h=220")
                      // )
                  ),
                  child: Row(
                    children: [
                      SizedBox(width: 20,),
                      Container(
                        width: 200,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(60),
                            image: DecorationImage(
                                image: NetworkImage("https://tse2.mm.bing.net/th?id=OIP.PyEgv4zTdOQBWrsqT8cPWwHaE8&pid=Api&P=0&h=220"),
                            )
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Image.network("https://tse2.mm.bing.net/th?id=OIP.PyEgv4zTdOQBWrsqT8cPWwHaE8&pid=Api&P=0&h=220")
        ]),
      ),
    );
  }
}
